const express = require("express");
const app = express();
require("dotenv").config();
const PORT = process.env.PORT || 3500;

app.get("/", (req, res) => {
  res.send("<h1>Hello Docker App</h1>");
});

app.listen(PORT, () => console.log(`server running on ${PORT}`));
