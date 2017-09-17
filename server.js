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




























//==========================================================//
const PORT = process.env.PORT || 8888;

app.listen(PORT, function() {
  console.log('app is listening at', PORT); 
})