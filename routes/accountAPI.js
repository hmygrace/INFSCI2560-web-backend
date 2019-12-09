const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
dotenv.config();
const router = express.Router();
const jwt = require("jsonwebtoken");
const bcrypt = require('bcrypt');

module.exports = router
//Create connection
const db = mysql.createConnection({
  host: process.env.host,
  user: process.env.user,
  password: process.env.password,
  database: process.env.database
});



//login
router.post('/login', (req, res) => {
  console.log("process.env.host is: "+process.env.host);
  let sql = "Select password FROM salespersons_account WHERE salesperson_id='"+req.body.salesperson_id+"'";
  let query = db.query(sql,(err,results)=>{
    if(err) throw err;
    if(results.length!=0){
      let password = results[0].password;
      if(password.startsWith("sales")){
        bcrypt.hash(password,10,function(err,hash){
          let passwordsql = "UPDATE salespersons_account set password='"+hash+"' where salesperson_id='"+req.body.salesperson_id+"'";
          let passwdquery = db.query(passwordsql,(err,results)=>{
            if(err) throw err;
            password = hash;
          });
        });
      }
      // bcrypt.hash(req.body.password,10,function(err,hash){
      //   console.log("password for "+req.body.password+" is "+hash);
      //   console.log("password from table "+password);
        bcrypt.compare(req.body.password,password,function(err,isMatch){
          if(isMatch){
            let sql = "Select salesperson_id, job_title,store_id FROM salespersons WHERE salesperson_id='"+req.body.salesperson_id+"'";
          
            let query = db.query(sql, (err, results) => {
              if (err) throw err;
              if(results.length!=0){
                // sess.salesperson_id = results[0].salesperson_id;
                // sess.job_title = results[0].job_title;
                // sess.store_id = results[0].store_id;
                let token = jwt.sign({ 
                  salesperson_id : results[0].salesperson_id,
                  job_title : results[0].job_title,
                  store_id : results[0].store_id,
                },
                    "secretKey", // <---- YOUR SECRET 
                    { expiresIn : '1d' }
                );
                res.status(200).json({
                  success : true,
                  message : "Auth ok",
                  salesperson_id : results[0].salesperson_id,
                  job_title : results[0].job_title,
                  store_id : results[0].store_id,
                  token : token
                });
              }else{
                res.status(500).send("something wrong, please check the table");
              }
              // console.log(results);
          
            })
          }else{
            res.status(401).send("login failed");
          }
        });
      // })
    }
  });
});



//logout - frontend destroy the jwt 
// router.get('/logout',(req,res) => {

//   req.session.destroy((err) => {
//     if(err){
//       res.status(401);
//       res.send("the session may not exist or valid, please logout from frontend");
//     }
//     res.send(200);
//   });
// });