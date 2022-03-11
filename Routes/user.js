var express = require("express");
const uuid = require("uuid");
var mysql = require("mysql");
const bcrypt = require("bcrypt");
const crypto = require("crypto");
var app = express();
app.use(express.json());
var connection = require("../config/connection");

const router = express.Router();

router.get("/", (req, res) => {
  let sql = `CALL getallusers()`;
  connection.query(sql, [true], (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    return res.json(results[0]);
  });
});

router.get("/:id", (req, res) => {
  let sql = `CALL getauser (${req.params.id})`;
  connection.query(sql, [true], (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    res.json(results[0]);
  });
});

router.delete("/:id", (req, res) => {
  let sql = `CALL deleteuser(${req.params.id})`;
  connection.query(sql, [true], (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    res.json(`User ${req.params.id} Deleted Successfully`);
  });
});

router.post("/", (req, res) => {
  const { randomUUID } = require("crypto");
  const hash = crypto
    .createHash("sha256")
    .update(req.body.password)
    .digest("base64");
  const uuid = randomUUID();
  let sql = `CALL createuser("${uuid}", "${req.body.username}","${req.body.fullname}","${req.body.phonenumber}","${req.body.email}","${hash}")`;
  connection.query(sql, [true], (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    res.json("New User Added Successfully");
  });
});
router.put("/", (req, res) => {
  let sql = `CALL updateuser("${req.body.id}", "${req.body.username}","${req.body.fullname}","${req.body.phonenumber}","${req.body.email}","${req.body.password}","${req.body.isAdmin}","${req.body.isDeleted}","${req.body.isSent}")`;
  connection.query(sql, [true], (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    res.json(`User ${req.body.id} updated successfully`);
  });
});

module.exports = router;
