var express = require('express');
var mysql = require('mysql')

var router = express.Router();

const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '123',
  database : 'Anime',
  port     : '3306',
  insecureAuth : true
});

// check connection error
connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }
 
  console.log('connected as id ' + connection.threadId);
});
// sample query

// var post = {SdName:'TROYCA',FoundDate:'2000-10-01',President:'長野敏之'}
// var query = connection.query('INSERT INTO Studio SET ?', post, function (error, results, fields) {
//   if (error) throw error;
//   // Neat!
// });

/* GET home page. */
router.get('/', function(req, res, next) {
  // res.render('index', { title: 'Express' });
  res.render('index');
});


router.get('/DBsearch',function(req,res,next){
	res.render('DBsearch');
})

router.get('/VoiceSearch',function(req,res,next){
	res.render('VoiceSearch');
})

router.get('/SongSearch',function(req,res,next){
	res.render('SongSearch');
})
router.post('/AnimeSearch',function(req,res,next){
	console.log("req = ",req.body.AnimeName);
	var AName = req.body.AnimeName.trim()
	var queryString = "SELECT * FROM Animation WHERE AName = ?"
	connection.query(queryString , AName , (err,results,fields)=>{
		console.log("result = ",results)
		console.log("length = ",results.length)
	})
})
module.exports = router;
