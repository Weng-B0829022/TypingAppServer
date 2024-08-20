const express = require('express');
const path = require('path');
const apiRoutes = require('./api');

const app = express();
const port = process.env.PORT || 5001;

// Serve static files from the React app

//所有api請求
app.use('/api', apiRoutes);

//前端
app.use(express.static(path.join(__dirname, 'dist')));
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'dist', 'index.html'));
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});