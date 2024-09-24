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
                        //MacOSpath = variant.file_path.reaplce(/\\/g,'/');
                        const imagePath = path.join(__dirname, 'words', variant.file_path);
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
module.exports = {
    getCurrentTime,
    getChineseCharacters,
    getVariantCharacters,
    getCharactersWithVariants
};