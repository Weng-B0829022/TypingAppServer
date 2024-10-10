const express = require('express');
const path = require('path');
const cors = require('cors');
const apiRoutes = require('./api');

const app = express();
const port = process.env.PORT || 5001;

// 增強的 CORS 配置
const corsOptions = {
  origin: function (origin, callback) {
    // 允許沒有 origin 的請求（如移動應用或 curl 請求）
    if (!origin) return callback(null, true);
    
    // 這裡可以添加您的域名白名單
    const whitelist = [
      'http://163.25.111.55:5001',
      'http://192.168.0.221:5001',
      'http://localhost:5173',
    ];
    
    if (whitelist.indexOf(origin) !== -1 || !origin) {
      callback(null, true);
    } else {
      callback(new Error('Not allowed by CORS'));
    }
  },
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization'],
  credentials: true // 允許發送 cookies
};

app.use(cors(corsOptions));

// 解析 JSON 請求體
app.use(express.json());

// API 路由
app.use('/api', apiRoutes);

// 前端靜態文件服務
app.use(express.static(path.join(__dirname, 'dist')));

// 所有其他請求返回 index.html
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});