const sqlite3 = require('sqlite3').verbose();
const path = require('path');
const fs = require('fs').promises;
const sharp = require('sharp');

const dbPath = path.resolve(__dirname, 'database.sqlite');

const db = new sqlite3.Database(dbPath, (err) => {
    if (err) {
        console.error('Error opening database', err);
    } else {
        console.log('Database connected');
    }
});

function saveQuizResultToDatabase(quizResult) {
    const generateId = (length = 10) => {
        const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        return Array.from({ length }, () => chars.charAt(Math.floor(Math.random() * chars.length))).join('');
    };
    const id = generateId();
    const { 
        grade, 
        level, 
        number,
        mode,
        startCountdown,
        queIntervel,
        pronunciationType,
        questionFormat,
        answerTiming,
        isRetryIncorrect,
        errorRetry,
        questions,
        answerInfo,
        name,
        researchCode
    } = quizResult;

    const query = `
        INSERT INTO quiz_results (
            id, grade, level, number, mode, start_countdown, que_intervel,
            pronunciation_type, question_format, answer_timing,
            is_retry_incorrect, error_retry, questions, answer_info, name, research_code
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    `;

    return new Promise((resolve, reject) => {
        db.run(query, [
            id,
            grade,
            level,
            number,
            mode,
            startCountdown,
            queIntervel,
            pronunciationType,
            questionFormat,
            answerTiming,
            isRetryIncorrect,
            errorRetry,
            JSON.stringify(questions),
            JSON.stringify(answerInfo),
            name,
            researchCode
        ], function(err) {
            if (err) {
                console.error('Error saving quiz result:', err);
                reject(err);
            } else {
                console.log('Saved quiz result with ID:', id);
                resolve(id);
            }
        });
    });
}

function getCurrentTime() {
    return new Promise((resolve, reject) => {
        db.get('SELECT datetime("now") as time', (err, row) => {
        if (err) {
            reject(err);
        } else {
            resolve(row);
        }
        });
    });
}
function getChineseCharacters(grade, callback) {
    const query = grade 
      ? 'SELECT * FROM chinese_characters WHERE grade = ?'
      : 'SELECT * FROM chinese_characters';
    
    const params = grade ? [grade] : [];

    db.all(query, params, (err, rows) => {
        if (err) {
            console.error('Database error:', err);
            callback(err, null);
        } else {
            callback(null, rows);
        }
    });
}
async function getVariantCharacters(grade, callback) {
    const query = grade 
      ? 'SELECT * FROM variant_characters WHERE grade = ?'
      : 'SELECT * FROM variant_characters';
    
    const params = grade ? [grade] : [];

    db.all(query, params, async (err, rows) => {
        if (err) {
            console.error('Database error:', err);
            callback(err, null);
        } else {
            try {
                const rowsWithImages = await Promise.all(rows.map(async (row) => {
                    const imagePath = path.join(__dirname, 'words', row.file_path);
                    try {
                        const imageBuffer = await fs.readFile(imagePath);
                        return {
                            ...row,
                            image: imageBuffer.toString('base64')
                        };
                    } catch (readError) {
                        console.error(`Error reading image for ${row.origin_word}:`, readError);
                        return row; // 返回原始行，沒有圖片
                    }
                }));
                callback(null, rowsWithImages);
            } catch (processError) {
                console.error('Error processing images:', processError);
                callback(processError, null);
            }
        }
    });
}

async function getCharactersWithVariants(grade, callback) {
    const chineseQuery = grade
        ? 'SELECT id, character, word, grade, character_frequency, word_frequency FROM chinese_characters WHERE grade = ?'
        : 'SELECT id, character, word, grade, character_frequency, word_frequency FROM chinese_characters';

    const variantQuery = grade
        ? 'SELECT * FROM variant_characters WHERE grade = ?'
        : 'SELECT * FROM variant_characters';

    const params = grade ? [grade] : [];

    db.all(chineseQuery, params, (err, chineseRows) => {
        if (err) {
            console.error('Database error:', err);
            return callback(err, null);
        }

        db.all(variantQuery, params, async (err, variantRows) => {
            if (err) {
                console.error('Database error:', err);
                return callback(err, null);
            }

            try {
                const result = await Promise.all(chineseRows.map(async (chineseRow) => {
                    const variants = variantRows.filter(variantRow => variantRow.origin_word === chineseRow.character);
                    const variantImages = await Promise.all(variants.map(async (variant) => {
                    const normalizedFilePath = variant.file_path.replace(/\\/g, '/');
                    const imagePath = path.join(__dirname, 'words', normalizedFilePath);
                        try {
                            const imageBuffer = await sharp(imagePath)
                                .resize(100) // Resize to 100px width (height will be adjusted automatically)
                                .webp({ quality: 80 }) // Convert to WebP format with 80% quality
                                .toBuffer();

                            return {
                                file_name: variant.file_path.split('/').pop().replace('.png', ''),
                                image: imageBuffer.toString('base64')
                            };
                        } catch (readError) {
                            console.error(`Error processing image for ${variant.origin_word}:`, readError);
                            return null;
                        }
                    }));

                    return {
                        id: chineseRow.id,
                        character: chineseRow.character,
                        word: chineseRow.word,
                        grade: chineseRow.grade,
                        character_frequency: chineseRow.character_frequency,
                        word_frequency: chineseRow.word_frequency,
                        variants: variantImages.filter(img => img !== null)
                    };
                }));

                callback(null, result);
            } catch (processError) {
                console.error('Error processing data:', processError);
                callback(processError, null);
            }
        });
    });
}

async function getQuizResults() {
    return new Promise((resolve, reject) => {
        db.all('SELECT * FROM quiz_results', [], (err, rows) => {
            if (err) {
                console.error('Error fetching quiz results:', err);
                reject(err);
            } else {
                const processedRows = rows.map(row => {
                    const questions = JSON.parse(row.questions).map(q => {
                        const { display, options, ...questionWithoutDisplay } = q;
                        return questionWithoutDisplay;
                    });
                    const answerInfo = JSON.parse(row.answer_info).map(ans => {
                        const { display, ...answerInfoWithoutDisplay } = ans;
                        return answerInfoWithoutDisplay;
                    });
                    const { answer_info, ...rowWithoutAnswerInfo } = row;
                    return { ...rowWithoutAnswerInfo, questions, answerInfo };
                });
                resolve(processedRows);
            }
        });
    });
}

async function getQuizResultById(id) {
    return new Promise((resolve, reject) => {
        db.get('SELECT * FROM quiz_results WHERE id = ?', [id], (err, row) => {
            if (err) {
                console.error('Error fetching quiz result:', err);
                reject(err);
            } else if (!row) {
                reject(new Error('Quiz result not found'));
            } else {
                // 保持完整的数据，包括 questions 中的 display 字段
                row.questions = JSON.parse(row.questions);
                row.answerInfo = JSON.parse(row.answer_info);
                const { answer_info, ...rowWithoutAnswerInfo } = row;
                resolve(rowWithoutAnswerInfo);
            }
        });
    });
}

async function deleteQuizResult(id) {
    return new Promise((resolve, reject) => {
        db.run('DELETE FROM quiz_results WHERE id = ?', [id], (err) => {
            if (err) {
                console.error('Error deleting quiz result:', err);
                reject(err);
            } else {
                resolve();
            }
        });
    });
}

module.exports = {
    saveQuizResultToDatabase,
    getCurrentTime,
    getChineseCharacters,
    getVariantCharacters,
    getCharactersWithVariants,
    getQuizResults,
    getQuizResultById,
    deleteQuizResult
};