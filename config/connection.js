var mysql = require("mysql");
var connection = mysql.createConnection({
  host: "localhost",
  port: "3306",
  database: "sendit",
  user: "root",
  password: "",
});
module.exports = connection;
