const sqlite3 = require('sqlite3').verbose();
const path = require('path');

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
function getVariantCharacters(grade, callback) {
    const query = grade 
      ? 'SELECT * FROM variant_characters WHERE grade = ?'
      : 'SELECT * FROM variant_characters';
    
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

module.exports = {
    getCurrentTime,
    getChineseCharacters,
    getVariantCharacters
  // 在這裡添加其他數據庫操作函數
};