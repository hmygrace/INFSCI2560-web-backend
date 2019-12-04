const express = require('express');
const app = express();
//获得post请求body内容的中间件
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({
  extended: false
}));
app.use(bodyParser.json());
//

//每一次操作后输出操作内容
const morgan = require('morgan');
app.use(morgan('short'));
//设置路由
//CORS
app.all('*', function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Methods", "PUT,POST,PATCH,GET,DELETE,OPTIONS");
  res.header("Access-Control-Allow-Headers", "Access-Control-Allow-Origin,Access-Control-Allow-Headers, X-Requested-With,Origin, X-Requested-With,Content-Type,Accept");
  res.header("Content-Type", "application/json;charset=utf-8");
  next();
});
app.use('/regionManager', require('../SaleSystem/routes/regionManagerAPI'));
app.use('/salesperson', require('../SaleSystem/routes/salespersonAPI'));
app.use('/storeManager', require('../SaleSystem/routes/storeManagerAPI'));
app.use('/account', require('../SaleSystem/routes/accountAPI'));
app.use('/aggregation', require('../SaleSystem/routes/aggregationAPI'));
app.use('/browser', require('../SaleSystem/routes/browserAPI'));




app.use(express.static('./public'));

const port = 5000;

app.listen(port, () => {
  console.log('Server started on port ' + port);
});