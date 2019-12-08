const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
dotenv.config();
const router = express.Router();

module.exports = router
//Create connection
const db = mysql.createConnection({
  host: process.env.host,
  user: process.env.user,
  password: process.env.password,
  database: process.env.database
});


//sales  of the products
router.get('/products_sales', (req, res) => {
  let sql = 'SELECT product_name,sum(quantity) as sum_quantity FROM transactions,product ' +
    'WHERE transactions.product_id=product.product_id ' +
    'GROUP BY transactions.product_id ';

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    res.send(result);
  });
});

//profit of the products
router.get('/products_profit', (req, res) => {
  let sql = 'SELECT product_name,(price-cost) as profit FROM `product`';

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    res.send(result);
  });
});

//top product categories
router.get('/top_product', (req, res) => {
  let sql = 'SELECT product_name,sum(quantity) as sum_quantity FROM transactions,product ' +
    'WHERE transactions.product_id=product.product_id ' +
    'GROUP BY transactions.product_id ' +
    'ORDER BY sum(quantity) DESC limit 10 ';

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    res.send(result);
  });
});


//various regions compare by sales volumn
router.get('/region_sales', (req, res) => {
  let sql = 'SELECT region_name, sum(transactions.quantity) as sum_quantity ' +
    'FROM transactions,store,region ' +
    'WHERE transactions.store_id=store.store_id ' +
    'and store.region_id=region.region_id ' +
    'GROUP BY region_name';

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    res.send(result);
  });
});


//which business are buying given products the most
router.get('/product_business/:pid', (req, res) => {
  let sql = 'SELECT business.category,sum(transactions.quantity) as sum_quantity ' +
    'FROM `transactions`,business ' +
    'WHERE transactions.customer_id=business.customer_id ' +
    'and transactions.product_id=' + req.params.pid +
    ' GROUP BY business.category ' +
    'order by sum(transactions.quantity) desc limit 1';

  db.query(sql, (err, result) => {
    if (err) {
      throw err;
    }
    console.log(result);
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    res.send(result);
  });
});
