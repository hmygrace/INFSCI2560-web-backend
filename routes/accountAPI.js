const express = require('express');
const mysql = require('mysql');
const router = express.Router();

module.exports = router
//Create connection
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'hmy0115',
  database: 'database_project'
});

//login
router.post('/login', (req, res) => {
  let sql = 'Select salespersons.salesperson_id, job_title,store_id FROM salespersons,salespersons_account WHERE (salespersons.salesperson_id = salespersons_account.salesperson_id and salespersons.salesperson_id =' + "'" + req.body.salesperson_id + "'" + 'and salespersons_account.password = ' + "'" + req.body.password + "')";

  let body = {
    salesperson_id: req.body.salesperson_id,
    password: req.body.password
  }
  let query = db.query(sql, body, (err, results) => {
    if (err) throw err;
    res.json(results);
  })
});