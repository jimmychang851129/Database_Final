var express = require('express');
var mysql = require('mysql')

var router = express.Router();

const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'Anime',
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
	console.log("req = ",req.body.SearchField);
  if(req.body.SearchField == "Anime"){
  	var AName = req.body.AnimeName.trim()
  	var queryString = "SELECT * FROM Animation,Genre,GenreName WHERE AName like '%" + AName + "%' AND Animation.AnimeID = Genre.AnimeID AND GenreName.Genre = Genre.Genre"
  	connection.query(queryString , (err,results,fields)=>{
      for(var i = 0; i < results.length-1; i++){
        for(var j = i+1; j < results.length;){
          if(results[i].AName == results[j].AName && results[i].Season == results[j].Season){
            results[i].Gtype = results[i].Gtype+','+results[j].Gtype;
            results.splice(j,1);
          }else{
            j++;
          }
        }
      }
  		console.log("result = ",results)
  		console.log("length = ",results.length)
      for(var i = 0 ; i < results.length ; i++){
            results[i].image = 'images/anime/' + results[i].image
          }
      res.send(JSON.stringify(results));
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
        res.send(JSON.stringify(outputList));
      }
      else{
        output = {AnimeID : 'None'}
        res.send(JSON.stringify(output));
      }
    })
  }
  if(req.body.SearchField == "Studio"){
  var StudioList = ['None','Ufotable','TYPE-MOON','Nitro+','MAGES.','WHITE FOX','A-1 Pictures','三次元','J.C.STAFF','ISSEN'];
  var StudioChoice = StudioList[parseInt(req.body.StudioName)]
  console.log("Studio choice = ",StudioChoice);
  var queryString = "SELECT * FROM Animation,Genre,GenreName WHERE sdName = ? AND Animation.AnimeID = Genre.AnimeID AND GenreName.Genre = Genre.Genre"
  connection.query(queryString , StudioChoice , (err,results,fields)=>{
    if(results){
      for(var i = 0; i < results.length-1; i++){
        for(var j = i+1; j < results.length;){
          if(results[i].AName == results[j].AName && results[i].Season == results[j].Season){
            results[i].Gtype = results[i].Gtype+','+results[j].Gtype;
            results.splice(j,1);
          }else{
            j++;
          }
        }
      }
      console.log("result = ",results);
      console.log("length = ",results.length);
      for(var i = 0 ; i < results.length ; i++){
        results[i].image = 'images/anime/' + results[i].image;
      }
      res.send(JSON.stringify(results));
    }
    else{
      output = {AnimeID : 'None'}
      res.send(JSON.stringify(output));
    }
  })
  }
  if(req.body.SearchField == 'AnimeDate'){
    var QueryDate = req.body.DateName.trim();
    var reg = /^\d+$/;
    if(QueryDate.match(reg) != null && parseInt(QueryDate) < 10000){
      console.log("QueryDate = ",QueryDate);
      var queryString = "SELECT * FROM Animation,Genre,GenreName WHERE AnimeDate = ? AND Animation.AnimeID = Genre.AnimeID AND GenreName.Genre = Genre.Genre"
      connection.query(queryString , QueryDate , (err,results,fields)=>{
        if(results){
          for(var i = 0; i < results.length-1; i++){
            for(var j = i+1; j < results.length;){
              if(results[i].AName == results[j].AName && results[i].Season == results[j].Season){
                results[i].Gtype = results[i].Gtype+','+results[j].Gtype;
                results.splice(j,1);
              }else{
                j++;
              }
            }
          }
          console.log("result = ",results);
          console.log("length = ",results.length);
          for(var i = 0 ; i < results.length ; i++){
            results[i].image = 'images/anime/' + results[i].image
          }
          res.send(JSON.stringify(results))
        }
        else{
          output = {AnimeID : 'None'}
          res.send(JSON.stringify(output));
        }
      })
    }
    else{
      output = {AnimeID : 'NotDate'}
      res.send(JSON.stringify(output));
    }
  }
})
module.exports = router;
