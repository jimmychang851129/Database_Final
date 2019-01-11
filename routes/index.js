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

// check connection error
// connection.connect(function(err) {
//   if (err) {
//     console.error('error connecting: ' + err.stack);
//     return;
//   }
 
//   console.log('connected as id ' + connection.threadId);
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
				output = {AnimeID : 'None'}
				res.send(output);
			}
		})
	}
	// add AnimeDetail to get detail of animation ?
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
				output = {AnimeID : 'None'}
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
				output = {AnimeID : 'None'}
				res.send(output);
			}
		})
	}
	if(req.body.SearchField == 'AnimeDate'){
		var QueryDate = req.body.DateName.trim();
		var reg = /^\d+$/;
		if(QueryDate.match(reg) != null && parseInt(QueryDate) < 10000){
			console.log("QueryDate = ",QueryDate);
			var queryString = "SELECT * FROM Animation WHERE AnimeDate = ?"
			connection.query(queryString , QueryDate , (err,results,fields)=>{
				if(results){
					console.log("result = ",results);
					console.log("length = ",results.length);
					for(var i = 0 ; i < results.length ; i++){
						results[i].image = 'images/anime/' + results[i].image
					}
					res.send(results)
				}
				else{
					output = {AnimeID : 'None'}
					res.send(output);
				}
			})
		}
		else{
			output = {AnimeID : 'NotDate'}
			res.send(output);
		}
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
			gender = true
		}
		else{
			gender = false
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
	// maybe add detail VoiceActor
	if(req.body.SearchField == 'VoiceAnime'){
		var queryAnime  = req.body.GenreName;
		console.log("queryAnime = ",queryAnime)
		var RetField = ['A.AName','C.VName','C.CharacterName','V.Gender','V.Agent','V.image']
		var queryString = "SELECT " + RetField.join() + " FROM Casting as C inner join Animation as A on C.AnimeID = A.AnimeID inner join VoiceActor as V on C.VName = V.VName Where C.AnimeID = ?"
		connection.query(queryString , queryAnime , (err,results,fields)=>{
			if(results){
				console.log("result = ",results);
				console.log("length = ",results.length);
				for(var i = 0  ; i < results.length ; i++){
					results[i].image = 'images/voiceactor/' + results[i].image;
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

// maybe need a singer details pages or api
router.post('/SongSearch',function(req,res,next){
	console.log(req.body.SearchField)
	if(req.body.SearchField == 'SongName'){
		var SongName = req.body.SongName.trim();
		console.log("SongName = ",SongName)
		var RetField = ['T.SgName','T.Author','T.Composer','T.Singer','T.Type','A.AName','A.image'];
		var queryString = "SELECT " + RetField.join() + " FROM ThemeSong as T join Animation as A on T.AnimeID = A.AnimeID WHERE T.SgName = ?"
		connection.query(queryString , SongName , (err,results,fields)=>{
			if(results){
				console.log("result = ",results);
				console.log("length = ",results.length);
				for(var i = 0 ; i < results.length ; i++){
					if(results[i].Type === 0){
						results[i].Type = "Opening"
					}
					else{
						results[i].Type = "Ending"
					}
					results[i].image = "images/anime/" + results[i].image;
				}
				res.send(results)
			}
			else{
				output = {AnimeID : 'None'}
				res.send(output);
			}
		})
	}
})

// not yet fully test
router.post('/AnimeDetail',function(req,res,next){
	var SearchField = req.body.SearchField;
	var input = req.body.input;
	
	// Search Agent information
	if(SearchField == "Agent"){
		var queryString = "SELECT * FROM Agent WHERE AgName = ?"
		connection.query(queryString , input , (err,results,fields)=>{
			if(results){
				console.log("result = ",results);
				console.log("length = ",results.length);
				res.send(results);
			}
			else{
				output = {VName : 'None'};
				res.send(output);
			}
		})
	}
	//query Anime Name to get casting list
	// input anime name
	// return casting list of an anime and voice actor and corresponding character
	if(SearchField == "Casting"){
		console.log("input = ",input)
		var RetField = ['A.AName','A.AnimeDate','A.image','A.Season','C.VName','C.CharacterName','C.ChGender','C.image as Cimage','V.image as Vimage']
		var queryString = "SELECT " + RetField.join() + " FROM Animation as A join Casting as C on A.AnimeID = C.AnimeID join VoiceActor as V on C.VName = V.VName WHERE  A.AnimeID = ?" 
		connection.query(queryString , input , (err,results,fields)=>{
			if(results){
				console.log("result = ",results);
				console.log("length = ",results.length);		// need modify
				// for(var i = 0 ; i < results.length ; i++){

				// }
				res.send(results);
			}
			else{
				output = {VName : 'None'};
				res.send(output);
			}
		})
	}
	// query singer in 動畫歌曲檢索  return singer image
	if(SearchField == 'Singer'){
		var queryString = "SELECT * FROM Singer WHERE VName = ?"
		connection.query(queryString , input , (err,results,fields)=>{
			if(results){
				console.log("result = ",results);
				console.log("length = ",results.length);		// need modify
				for(var i = 0 ; i < results.length ; i++){
					results[i].image = "images/singer" + results[i].image;
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



module.exports = router;
