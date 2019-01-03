var express = require('express');
var mysql = require('mysql')

var router = express.Router();

var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '123',
  database : 'Anime',
  insecureAuth : true
});

connection.connect(function(err) {
  if (err) throw err;
  console.log('connected as id ' + connection.threadId);
});

// sample query

// connection.query('SELECT * FROM Studio', function (error, results, fields) {
//   if (error) throw error;
//   console.log('The solution is: ', results);
// });


// var post = {SdName:'TROYCA',FoundDate:'2000-10-01',President:'長野敏之'}
// var query = connection.query('INSERT INTO Studio SET ?', post, function (error, results, fields) {
//   if (error) throw error;
//   // Neat!
// });

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

module.exports = router;
