const express = require('express');
const { getCurrentTime, getChineseCharacters, getVariantCharacters  } = require('./database');


const router = express.Router();

router.get('/time', async (req, res) => {
  try {
    const result = await getCurrentTime();
    res.json(result);
  } catch (err) {
    console.error('Database error:', err);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});
router.get('/characters', (req, res) => {
  const grade = req.query.grade; // 從查詢參數中獲取年級，如果沒有則為 undefined

  getChineseCharacters(grade, (err, characters) => {
    if (err) {
      console.error('Database error:', err);
      res.status(500).json({ error: 'Internal Server Error' });
    } else {
      res.json(characters);
    }
  });
});

router.get('/variant_characters', (req, res) => {
  const grade = req.query.grade; // 從查詢參數中獲取年級，如果沒有則為 undefined

  getVariantCharacters(grade, (err, characters) => {
    if (err) {
      console.error('Database error:', err);
      res.status(500).json({ error: 'Internal Server Error' });
    } else {
      res.json(characters);
    }
  });
});

module.exports = router;