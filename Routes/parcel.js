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
  let sql = `CALL getallparcels()`;
  connection.query(sql, [true], (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    return res.json(results[0]);
  });
});

router.get("/:id", (req, res) => {
  let sql = `CALL getaparcel (${req.params.id})`;
  connection.query(sql, [true], (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    return res.json(results[0]);
  });
});

router.delete("/:id", (req, res) => {
  let sql = `CALL deleteparcel(${req.params.id})`;
  connection.query(sql, [true], (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    res.json(`Parcel Number ${req.params.id} Deleted Successfully`);
  });
});

router.post("/", (req, res) => {
  const { randomUUID } = require("crypto");
  const uuid = randomUUID();
  //console.log(uuid);
  let sql = `CALL createparcel("${uuid}", "${req.body.description}","${req.body.sendernumber}","${req.body.receivernumber}","${req.body.startlocation}","${req.body.endlocation}","${req.body.currentlocation}","${req.body.senderid}")`;
  connection.query(sql, [true], (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    res.json("New Parcel created successfully");
  });
});
router.put("/", (req, res) => {
  let sql = `CALL updateparcel("${req.body.id}", "${req.body.description}","${req.body.sendernumber}","${req.body.receivernumber}","${req.body.startlocation}","${req.body.endlocation}","${req.body.isDeleted}","${req.body.isUpdated}","${req.body.isSent}","${req.body.isDelivered}","${req.body.currentlocation}","${req.body.senderid}")`;
  connection.query(sql, [true], (error, results, fields) => {
    if (error) {
      return console.error(error.message);
    }
    res.json(`parcel number ${req.body.id} updated successfully`);
  });
});
module.exports = router;
