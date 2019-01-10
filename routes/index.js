var express = require('express');
var mysql = require('mysql')

var router = express.Router();

const connection = mysql.createConnection({
  host     : 'localhost',
  port 	   : '3306',
  user     : 'jimmy',
  password : 'jimmy',
  database : 'Anime',
  insecureAuth : true
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
	console.log("req = ",req.body.SearchField);
	if(req.body.SearchField == "Anime"){
		var AName = req.body.AnimeName.trim()
		var queryString = "SELECT * FROM Animation WHERE AName = ?"
		connection.query(queryString , AName , (err,results,fields)=>{
			if(results){
				console.log("result = ",results)
				console.log("length = ",results.length)
				for(var i = 0 ; i < results.length ; i++){
					results[i].image = 'images/anime/' + results[i].image
				}
				res.send(results)
			}
			else{
				output = {
					AnimeID : 'None'
				}
				res.send(output);
			}
		})
	}
	if(req.body.SearchField == "Genre"){
		console.log("Genre = ",req.body.GenreName);
		var QueryArr = [req.body.GenreName];
		var RetField = ['Genre.AnimeID','AName','Episode','Season','Rating','AnimeDate','sdName','image','Genre.Genre']
		var queryString = "SELECT DISTINCT " + RetField.join()+ " FROM Genre join Animation on Genre.AnimeID = Animation.AnimeID WHERE Genre.Genre in (" + QueryArr.join() + ")" 
		connection.query(queryString , (err,results,fields)=>{
			if(results){
				var AniMap = new Map();
				var GenreList = ['None','動作','魔法','奇幻','懸疑','冒險','校園','戀愛','青春','音樂'];
				var outputList = [];
				// console.log("result = ",results)
				// console.log("length = ",results.length)
				for(var i = 0 ; i < results.length ; i++){
					if(AniMap.get(results[i].AnimeID) != 1){
						outputList.push(results[i]);
						outputList[outputList.length-1].image = 'images/anime/' + results[i].image
						outputList[outputList.length-1].Genre = GenreList[parseInt(results[i].Genre)];
						AniMap.set(results[i].AnimeID,1)
					}
					else{
						outputList[outputList.length-1].Genre = outputList[outputList.length-1].Genre+','+GenreList[parseInt(results[i].Genre)];
					}
				}
				res.send(outputList)
			}
			else{
				output = {
					AnimeID : 'None'
				}
				res.send(output);
			}
		})
	}
	if(req.body.SearchField =='Studio'){
		var StudioList = ['None','Ufotable','TYPE-MOON','Nitro+','MAGES.','WHITE FOX','A-1 Pictures','三次元','J.C.STAFF','ISSEN'];
		var StudioChoice = StudioList[parseInt(req.body.StudioName)]
		console.log("Studio choice = ",StudioChoice);
		var queryString = "SELECT * FROM Animation WHERE sdName = ?"
		connection.query(queryString , StudioChoice , (err,results,fields)=>{
			if(results){
				console.log("result = ",results);
				console.log("length = ",results.length);
				for(var i = 0 ; i < results.length ; i++){
					results[i].image = 'images/anime/' + results[i].image
				}
				res.send(results)
			}
			else{
				output = {
					AnimeID : 'None'
				}
				res.send(output);
			}
		})
	}
})

router.post('/VoiceSearch',function(req,res,next){
	if(req.body.SearchField == "VoiceName"){
		var VName = req.body.VoiceName.trim();
		var queryString = "SELECT * FROM VoiceActor WHERE VName = ?"
		connection.query(queryString , VName , (err,results,fields)=>{
			if(results){
				console.log("result = ",results);
				console.log("length = ",results.length);
				for(var i = 0 ; i < results.length ; i++){
					results[i].image = 'images/voiceactor/' + results[i].image
				}
				res.send(results);
			}
			else{
				output = {VName : 'None'};
				res.send(output);
			}
		})
	}
	if(req.body.SearchField == 'gender'){
		var gender;
		console.log("gender = ",gender)
		if(req.body.Sex == '0'){
			gender = 'TRUE'
		}
		else{
			gender = 'FALSE'
		}
		var queryString = "SELECT * FROM VoiceActor WHERE Gender = ?"
		connection.query(queryString , gender , (err,results,fields)=>{
			if(results){
				console.log("result = ",results);
				console.log("length = ",results.length);
				for(var i = 0 ; i < results.length ; i++){
					results[i].image = 'images/voiceactor/' + results[i].image
				}
				res.send(results);
			}
			else{
				output = {VName : 'None'};
				res.send(output);
			}
		})
	}
})


// router.post('/AnimeDetail',function(req,res,next){
// 	var AniName = req.body.AniName;
// 	var SearchField = req.body.SearchField;
// })

module.exports = router;
