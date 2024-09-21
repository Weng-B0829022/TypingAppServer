const express = require('express');
const { getCurrentTime, getChineseCharacters, getVariantCharacters, getCharactersWithVariants  } = require('./database');


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
router.get('/characters-with-variants', (req, res) => {
  const grade = req.query.grade;
  getCharactersWithVariants(grade, (err, data) => {
      if (err) {
          res.status(500).json({ error: 'Internal Server Error' });
      } else {
          res.json(data);
      }
  });
});
module.exports = router;