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

//addCustomer
router.post('/customers', (req, res) => {
  let sql;
  let body;
  // if(req.body.kind=="business"){
  sql = 'INSERT INTO customers SET ?';

  body = {
    name: req.body.name,
    address: req.body.address,
    kind: req.body.kind
  }

  db.query(sql, body, (err, results) => {
    if (err) throw err;
  });

  if (req.body.kind == 'business') {
    sql = 'INSERT INTO business (customer_id,category,company_income) VALUES (LAST_INSERT_ID(),"' +
      req.body.category + '",' + req.body.company_income + ')';
    db.query(sql, (err, results) => {
      if (err) throw err;
      res.send('add new customer success');
    });
  }
  if (req.body.kind == 'home') {
    sql = 'INSERT INTO home (customer_id,marry_status,gender,age,income) VALUES (LAST_INSERT_ID(),"' +
      req.body.marry_status + '","' + req.body.gender + '",' + req.body.age + ',' + req.body.income + ')';
    db.query(sql, (err, results) => {
      if (err) throw err;
      res.send('add new customer success');
    });
  }
});

//get Customer
router.get('/customers', (req, res) => {
  let sql = 'SELECT * FROM customers';
  db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send(results);
  });
});

//get Customers (home)
router.get('/customers/home/:cid', (req, res) => {
  let sql = 'SELECT * FROM customers,home WHERE customers.customer_id = home.customer_id and customers.customer_id =' + req.params.cid;
  db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send(results);
  });
});

//get Customers (home)
router.get('/customers/business/:cid', (req, res) => {
  let sql = 'SELECT * FROM customers,business WHERE customers.customer_id = business.customer_id and customers.customer_id =' + req.params.cid;
  db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send(results);
  });
});

//update Customer
router.patch('/customers/:cid', (req, res) => {
  let sql = 'UPDATE customers SET ? WHERE customer_id = ' + req.params.cid;
  let body = {
    address: req.body.address,
    name: req.body.name,
  }
  db.query(sql, body, (err, results) => {
    if (err) throw err;
  })

  if (req.body.kind == 'business') {
    let sql = 'UPDATE business SET ? WHERE customer_id = ' + req.params.cid;
    let body = {
      category: req.body.category,
      company_income: req.body.company_income,
    }

    db.query(sql, body, (err, results) => {
      if (err) {
        throw err;
      }
      res.send('update business success');
    });
  } else if (req.body.kind == 'home') {
    let sql = 'UPDATE home SET ? WHERE customer_id = ' + req.params.cid;
    let body = {
      marry_status: req.body.marry_status,
      gender: req.body.gender,
      age: req.body.age,
      income: req.body.income
    }

    db.query(sql, body, (err, results) => {
      if (err) {
        throw err;
      }
      res.send('update home success');
    });
  }

});

//delete Customer
router.delete('/customers/:cid', (req, res) => {
  let sql = 'DELETE FROM customers WHERE customer_id =' + req.params.cid;
  db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    console.log(results);
    res.send('delete new customer success');
  });
});

// add Transaction
//
// router.post('/transactions', (req, res) => {
//   let body = {
//     //这些项里应该有通过登陆自动获取的部分
//     order_date: req.body.order_date,
//     product_id: req.body.product_id,
//     salesperson_id: req.body.salesperson_id,
//     customer_id: req.body.customer_id,
//     quantity: req.body.quantity,
//     store_id: req.body.store_id
//   }
//   var amount = 0;
//   let sql = 'SELECT amount FROM product WHERE product_id = ' + req.body.product_id;
//   db.query(sql, (err, results) => {
//     if (err) {
//       throw err;
//     }
//     amount = results;
//     if (req.body.quantity > amount[0]["amount"]) {
//       res.end("");
//     } else {
//       sql = 'INSERT INTO transactions SET ?'
//       db.query(sql, body, (err, results) => {
//         if (err) throw err;
//         res.send('Transaction added...');
//       });
//     }
//   });
// });

// add Transaction
router.post('/transactions', (req, res) => {
  let sql = 'INSERT INTO transactions SET ?'
  let body = {
    //这些项里应该有通过登陆自动获取的部分
    order_date: req.body.order_date,
    product_id: req.body.product_id,
    salesperson_id: req.body.salesperson_id,
    customer_id: req.body.customer_id,
    quantity: req.body.quantity,
    store_id: req.body.store_id
  }
  db.query(sql, body, (err, results) => {
    if (err) throw err;
  });
  
  sql = 'SELECT transaction_product(' + req.body.product_id + ", " + req.body.quantity + ')';
  db.query(sql, (err, results) => {
    if (err) throw err;
    res.send('Transaction added...');
  });
});

//get Product/amount
router.get('/products/amount/:pid', (req, res) => {
  let sql = 'SELECT amount FROM product WHERE product_id = ' + req.params.pid;
  db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send(results);
  });
});

//get Transactions
router.get('/transactions', (req, res) => {
  let sql = 'SELECT * FROM transactions';
  db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send(results);
  });
});

//Update Transaction
router.patch('/transactions/:oid', (req, res) => {
  let sql = 'UPDATE transactions SET ? WHERE order_id = ' + req.params.oid;
  let body = {
    order_date: req.body.order_date,
    product_id: req.body.product_id,
    salesperson_id: req.body.salesperson_id,
    customer_id: req.body.customer_id,
    quantity: req.body.quantity,
    store_id: req.body.store_id
  }
  //是否可以选择modify一部分，或者是将所有数据导过来，但部分数据维持原状
  //交给前端
  db.query(sql, body, (err, results) => {
    if (err) {
      throw err;
    }
    console.log(results);
    res.send('modify order success');
  });
});

//delete Transaction
router.delete('/transactions/:oid', (req, res) => {
  let sql = 'DELETE FROM transactions WHERE order_id=' + req.params.oid;
  db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    console.log(results);
    res.send('delete order success');
  });
});

//get Products
router.get('/products', (req, res) => {
  let sql = 'SELECT * FROM product';

  db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send(results);
  });
});

//get Product
router.get('/products/:pid', (req, res) => {
  let sql = 'SELECT * FROM product WHERE product_id =' + req.params.pid;
  db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    res.send(results);
  });
});