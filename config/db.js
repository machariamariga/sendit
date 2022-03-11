var express = require("express");
var mysql = require("mysql");
var app = express();
app.use(express.json());
var connection = require("./config/connection");

app.listen(8000, function () {
  console.log("App listening on port 8000");
  connection.connect(function (err) {
    if (err) console.log("err");
    else console.log("Connection established");
  });
});
