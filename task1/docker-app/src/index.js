const express = require("express");

const app = express();

const PORT = 3000;

app.get('/', (req, res) => {
    res.send("Hello DevOps Team. This Is My Docker Lab.");
})

app.listen(PORT, () => {
    console.log(`Server Is Running at port ${PORT}`);
})