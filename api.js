const express = require('express');
const { getCurrentTime, getChineseCharacters, getVariantCharacters, getCharactersWithVariants, saveQuizResultToDatabase, getQuizResults, getQuizResultById, deleteQuizResult } = require('./database');


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

router.post('/quizResult', (req, res) => {
  try {
    console.log(req.body);
    const quizResult = req.body;

    // 這裡可以添加將配置保存到數據庫的邏輯
    saveQuizResultToDatabase(quizResult.modeInfo);

    res.status(201).json({
      message: '測驗結果已成功創建',
      result: quizResult
    });
    
  } catch (err) {
    console.error('處理測驗結果時出錯:', err);
    res.status(500).json({ error: '內部服務器錯誤' });
  }
});

// 獲取所有測驗結果或按研究代碼搜索
router.get('/quizResults', async (req, res) => {
    try {
        const results = await getQuizResults();
        res.json(results);
    } catch (err) {
        console.error('獲取測驗結果時出錯:', err);
        res.status(500).json({ error: '內部服務器錯誤' });
    }
});

// 通過ID獲取特定測驗結果
router.get('/quizResults/:id', async (req, res) => {
    try {
        const id = req.params.id;
        const result = await getQuizResultById(id);
        res.json(result);
    } catch (err) {
        if (err.message === 'Quiz result not found') {
            res.status(404).json({ error: '未找到測驗結果' });
        } else {
            console.error('獲取測驗結果時出錯:', err);
            res.status(500).json({ error: '內部服務器錯誤' });
        }
    }
});

router.delete('/quizResults/:id', async (req, res) => {
    try {
        const id = req.params.id;
        await deleteQuizResult(id);
        res.status(204).send();
    } catch (err) {
        res.status(500).json({ error: '內部服務器錯誤' });
    }
});

module.exports = router;