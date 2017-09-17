var express = require('express');
var bodyParser = require('body-parser');

var app = express();

//parse requests
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));

var mysql = require('mysql');

app.use(function(req, res, next){
  if( req.headers['x-forwarded-proto'] === 'https' ){
    res.redirect('http://' + req.hostname + req.url);
  } else {
    next();
  }
});

app.use(express.static(__dirname + '/client'))

//==========================================================//


var connection = mysql.createConnection({
  connectionLimit : 10,
  host : "localhost",
  user : "root",
  password : "",
  database : "grocery_list"
});

connection.connect();


//==========================================================//

//==========================================================//
//            SETTING UP LISTENERS                          //
//==========================================================//

//Retrieve groceries from db
app.get('/home', function(req, res){
  connection.query('select * from product', (err,rows,fields) => {
    res.json(rows);
  });
})


//customer specific queries
app.get('/johnny', function(req, res){
  connection.query('SELECT customer.id AS customerId, customer.firstname, product.id AS productId, product.name, category.id AS categoryId, category.name, order_products.number_of_product FROM customer, product, category, category_product, customers_order, order_products WHERE category_product.product_id = product.id AND category_product.category_id = category.id AND customers_order.customerid = customer.id AND order_products.order_id = customers_order.id AND order_products.product_id=product.id AND customer.id = 1', (err,rows,fields) => {
    res.json(rows);
  });
})

app.get('/billy', function(req, res){
  connection.query('SELECT customer.id AS customerId, customer.firstname, product.id AS productId, product.name, category.id AS categoryId, category.name, order_products.number_of_product FROM customer, product, category, category_product, customers_order, order_products WHERE category_product.product_id = product.id AND category_product.category_id = category.id AND customers_order.customerid = customer.id AND order_products.order_id = customers_order.id AND order_products.product_id=product.id AND customer.id = 2', (err,rows,fields) => {
    res.json(rows);
  });
})

app.get('/mac', function(req, res){
  connection.query('SELECT customer.id AS customerId, customer.firstname, product.id AS productId, product.name, category.id AS categoryId, category.name, order_products.number_of_product FROM customer, product, category, category_product, customers_order, order_products WHERE category_product.product_id = product.id AND category_product.category_id = category.id AND customers_order.customerid = customer.id AND order_products.order_id = customers_order.id AND order_products.product_id=product.id AND customer.id = 3', (err,rows,fields) => {
    res.json(rows);
  });
})

app.get('/fiona', function(req, res){
  connection.query('SELECT customer.id AS customerId, customer.firstname, product.id AS productId, product.name, category.id AS categoryId, category.name, order_products.number_of_product FROM customer, product, category, category_product, customers_order, order_products WHERE category_product.product_id = product.id AND category_product.category_id = category.id AND customers_order.customerid = customer.id AND order_products.order_id = customers_order.id AND order_products.product_id=product.id AND customer.id = 4', (err,rows,fields) => {
    res.json(rows);
  });
})


//date range 

app.get('/shit', function(req, res){   
  var type = "%Y-%m-%d"   //default day
  if( req.query.type === "week" ){     
    type = "%Y-%x";   
  }
  else if(req.query.type === "month" ) {
    type = "%Y-%m";
  }
  connection.query(`select DATE_FORMAT(order_date, \"${type}\") AS trunced_date, count(*) from order_products order_products.order_date >= FROM_UNIXTIME(UNIX_TIMESTAMP(\"${req.query.startDate}\")) AND order_products.order_date <= FROM_UNIXTIME(UNIX_TIMESTAMP(\"${req.query.endDate}\")) GROUP BY trunced_date`, (err, rows, fields) => {
    if( err ){
      console.log('ERR, does not compute', err);
    }
    res.json(rows);  
  });
})


//==========================================================//
const PORT = process.env.PORT || 8888;

app.listen(PORT, function() {
  console.log('app is listening at', PORT); 
})