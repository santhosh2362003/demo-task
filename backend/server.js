const express = require('express');
const path = require('path');
const app = express();
const port = 3000;

// Static files (Frontend) serve panna
app.use(express.static(path.join(__dirname,'../frontend')));

// API Endpoint
app.get('/api/data', (req, res) => {
    res.json({ message: "Hello Santhosh! Backend is connected successfully." });
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
