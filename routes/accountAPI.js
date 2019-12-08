const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
dotenv.config();
const router = express.Router();
var session = require('express-session');
var MySQLStore = require('express-mysql-session')(session);

module.exports = router
//Create connection
const db = mysql.createConnection({
  host: process.env.host,
  user: process.env.user,
  password: process.env.password,
  database: process.env.database
});
var sessionStore = new MySQLStore({}/* session store options */, db);

router.use(session({
  key: 'session_cookie_name',
  secret: 'session_cookie_secret',
  store: sessionStore,
  resave: false,
  saveUninitialized: false
}));

//get session - user identity
var sess;
export function getAuthentication(req){
  sess = req.session;
  var identity = {
    salesperson_id = sess.salesperson_id,
    job_title = sess.job_title,
    store_id = sess.store_id
  };
  return identity;
}

//login
router.post('/login', (req, res) => {
  // console.log("process.env.host is: "+process.env.host);
  sess = req.session;

  let sql = 'Select salespersons.salesperson_id, job_title,store_id FROM salespersons,salespersons_account WHERE (salespersons.salesperson_id = salespersons_account.salesperson_id and salespersons.salesperson_id =' + "'" + req.body.salesperson_id + "'" + 'and salespersons_account.password = ' + "'" + req.body.password + "')";

  let body = {
    salesperson_id: req.body.salesperson_id,
    password: req.body.password
  }
  let query = db.query(sql, body, (err, results) => {
    if (err) throw err;
    if(results.length!=0){
      sess.salesperson_id = results[0].salesperson_id;
      sess.job_title = results[0].job_title;
      sess.store_id = results[0].store_id;
    }
    // console.log(results);
    res.json(results);
  })
});

//logout
router.get('/logout',(req,res) => {
  req.session.destroy((err) => {
    if(err){
      res.status(401);
      res.send("the session may not exist or valid, please logout from frontend");
    }
    res.send(200);
  });
});