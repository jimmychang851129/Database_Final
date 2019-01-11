# Database final API

## 動畫資訊檢索頁面

DBsearch.ejs

### 動畫搜尋

#### API

- action : AnimeSearch
- method : post

#### input/output

```
格式 :
html裡form欄位的name : 欄位的值

input : 
SearchField : Anime
AnimeName : 動畫名稱

output : 整個Animation table符合動畫名稱的row，為array，每個element為一個json
[AnimeID,AName,Episode,Season,Rating,AnimeDate,sdName,image]

Example : 
input : 
SearchField : Anime
AnimeName : 刀劍神域

output : 
[{"AnimeID":7,"AName":"刀劍神域","Episode":25,"Season":1,"Rating":9,"AnimeDate":"2012","sdName":"A-1 Pictures","image":"images/anime/sao_s1.jpg"},
{"AnimeID":8,"AName":"刀劍神域","Episode":24,"Season":2,"Rating":7,"AnimeDate":"2014","sdName":"A-1 Pictures","image":"images/anime/sao_s2.jpg"}]
```

### 風格搜尋

#### API

- action : AnimeSearch
- method : post

#### input/output

```
格式 :
欄位的name : 欄位的值

input : 
SearchField : Genre
GenreName : 一個或多個數字，每個數字代表一種風格，如1 = 戰鬥 2 = 魔法......，
詳情可以看DBsearch.ejs 54行

output : 
Animation中有其中一個input風格的動畫，就是input 風格的or出來的動畫，
輸出的field為
['Genre.AnimeID','AName','Episode','Season','Rating','AnimeDate','sdName','image','Genre.Genre']

Example : 
input : 
SearchField : Genre
GenreName : [1,3,4]

output : 
[{"AnimeID":1,"AName":"Fate/Zero","Episode":25,"Season":1,"Rating":10,"AnimeDate":"2011","sdName":"ufotable","image":"images/anime/fz.jpeg","Genre":"動作,奇幻"},
{"AnimeID":2,"AName":"Steins;Gate","Episode":25,"Season":1,"Rating":9,"AnimeDate":"2011","sdName":"WHITE FOX","image":"images/anime/steingate.jpeg","Genre":"奇幻,懸疑"},
{"AnimeID":3,"AName":"Re:CREATORS","Episode":22,"Season":1,"Rating":9,"AnimeDate":"2017","sdName":"TROYCA","image":"images/anime/recreate.jpeg","Genre":"動作,奇幻"},
{"AnimeID":4,"AName":"Re:ゼロから始める異世界生活","Episode":25,"Season":1,"Rating":9,"AnimeDate":"2016","sdName":"WHITE FOX","image":"images/anime/rezero.jpeg","Genre":"動作,奇幻"},
{"AnimeID":5,"AName":"とある魔術の禁書目録","Episode":24,"Season":1,"Rating":8,"AnimeDate":"2008","sdName":"J.C.STAFF","image":"images/anime/index.jpg","Genre":"動作"},
{"AnimeID":7,"AName":"刀劍神域","Episode":25,"Season":1,"Rating":9,"AnimeDate":"2012","sdName":"A-1 Pictures","image":"images/anime/sao_s1.jpg","Genre":"動作,奇幻"},
{"AnimeID":8,"AName":"刀劍神域","Episode":24,"Season":2,"Rating":7,"AnimeDate":"2014","sdName":"A-1 Pictures","image":"images/anime/sao_s2.jpg","Genre":"動作,奇幻"}]
```

### 製作公司搜尋

#### API

- action : AnimeSearch
- method : post

#### input/output

```
input : 
SearchField : Studio
StudioName : 1~9其中一個數字，每個數字代表一個公司，詳情可見DBsearch.ejs 70行左右

output : 
Animation table中為該公司製作的動畫的array

Example
input: 
SearchField : Studio
StudioName : 1(對應到ufotable)

output:
[{"AnimeID":1,"AName":"Fate/Zero","Episode":25,"Season":1,"Rating":10,"AnimeDate":"2011","sdName":"ufotable","image":"images/anime/fz.jpeg"}]
```

### 年度動畫搜尋

#### API

- action : AnimeSearch
- method : post

#### input/output

```
input : 
SearchField : AnimeDate
DateName : 四位數字

output : 
Animation table中為該年度製作的動畫的array

Example
input :
Search Field : AnimeDate
DateName : 2014

output : 
[{"AnimeID":6,"AName":"四月是你的謊言","Episode":22,"Season":1,"Rating":8,"AnimeDate":"2014","sdName":"A-1 Pictures","image":"images/anime/april.jpg"},
{"AnimeID":8,"AName":"刀劍神域","Episode":24,"Season":2,"Rating":7,"AnimeDate":"2014","sdName":"A-1 Pictures","image":"images/anime/sao_s2.jpg"}]
```
## 聲優資訊檢索頁面

VoiceSearch.ejs

### 聲優搜尋

#### API

- action : VoiceSearch
- method : post

#### input/output

```
input :
SearchField = VoiceName
VoiceName = 聲優名稱

output : 
VoiceActor table為該聲優的row

Example : 
input : 
SearchField = VoiceName
VoiceName = 種田梨沙

output : 
[{"VName":"種田梨沙","Gender":1,"Birthday":"0712","Debut":"2010","Agent":"大澤事務所","image":"images/voiceactor/tameda.jpg"}]
```

### 性別搜尋

#### API

- action : VoiceSearch
- method : post

#### input/output

```
input :
SearchField = VoiceName
VoiceName = 0 or 1, 0 for Male, 1 for Female

output : 
VoiceActor Table裡所有該性別的聲優的row的array

Example : 
input : 
SearchField = VoiceName
VoiceName = 0(Female)

output : 
[{"VName":"井口裕香","Gender":1,"Birthday":"0711","Debut":"2002","Agent":"大澤事務所","image":"images/voiceactor/ikuchi.jpg"},
{"VName":"今井麻美","Gender":1,"Birthday":"0516","Debut":"1999","Agent":"EARLY WING","image":"images/voiceactor/imai.jpeg"},
{"VName":"佐倉綾音","Gender":1,"Birthday":"0129","Debut":"2010","Agent":"I'm Enterprise","image":"images/voiceactor/sakura.jpeg"},
{"VName":"佐藤利奈","Gender":1,"Birthday":"0502","Debut":"2001","Agent":"東京俳優生活協同組合","image":"images/voiceactor/satou.jpg"},
{"VName":"內山夕實","Gender":1,"Birthday":"1030","Debut":"2005","Agent":"大澤事務所","image":"images/voiceactor/neshan.jpeg"},
{"VName":"大原沙耶香","Gender":1,"Birthday":"1206","Debut":"1998","Agent":"東京俳優生活協同組合","image":"images/voiceactor/dauan.jpeg"},
{"VName":"小松未可子","Gender":1,"Birthday":"1111","Debut":"2010","Agent":"Hirata Office","image":"images/voiceactor/siaosung.jpeg"},
{"VName":"川澄綾子","Gender":1,"Birthday":"0330","Debut":"1997","Agent":"大澤事務所","image":"images/voiceactor/chanchen.jpeg"},
{"VName":"愛美","Gender":1,"Birthday":"1225","Debut":"2010","Agent":"響","image":"images/voiceactor/aimi.jpeg"},
{"VName":"戶松遙","Gender":1,"Birthday":"0204","Debut":"2004","Agent":"Music Ray'n","image":"images/voiceactor/haruka.jpeg"},
{"VName":"水瀨祈","Gender":1,"Birthday":"1202","Debut":"2010","Agent":"AXL ONE","image":"images/voiceactor/mizu.jpeg"},
{"VName":"相羽あいな","Gender":1,"Birthday":"1017","Debut":"2016","Agent":"響","image":"images/voiceactor/aiba.jpeg"},
{"VName":"種田梨沙","Gender":1,"Birthday":"0712","Debut":"2010","Agent":"大澤事務所","image":"images/voiceactor/tameda.jpg"},
{"VName":"花澤香菜","Gender":1,"Birthday":"0225","Debut":"2003","Agent":"大澤事務所","image":"images/voiceactor/hanazawa.jpg"},
{"VName":"豐崎愛生","Gender":1,"Birthday":"1028","Debut":"2006","Agent":"Music Ray'n","image":"images/voiceactor/fungchi.jpeg"},
{"VName":"高橋李依","Gender":1,"Birthday":"0227","Debut":"2013","Agent":"81 produce","image":"images/voiceactor/kaochao.jpg"}]

超多= =
```

### 動畫搜尋

#### API

- action : VoiceSearch
- method : post

#### input/output

```
input :
SearchField = AnimeVoice
VoiceAnime = 1 ~ 9(對應AnimeID)，前端我是用select,option tag做的

output : 
VName為聲優名字，image為聲優圖片
['AName','VName','CharacterName','Gender','Agent','image']

Example:
input : 
SearchField = AnimeVoice
VoiceAnime : 9(Bang dream)

output : 
[{"AName":"bang dream","VName":"愛美","CharacterName":"戶山香澄","Gender":1,"Agent":"響","image":"images/voiceactor/aimi.jpeg"},
{"AName":"bang dream","VName":"相羽あいな","CharacterName":"湊友希那","Gender":1,"Agent":"響","image":"images/voiceactor/aiba.jpeg"}]
```

## 動畫歌曲檢索頁面

SongSearch.ejs

### 歌曲搜尋

#### API

- action : SongSearch
- method : post

#### input/output

```
input : 
SearchField : SongName
SongName : 動畫歌曲名稱

output : 
AName 為動畫名稱
image為動畫圖片
Type為opening or ending
['SgName','Author','Composer','Singer','Type','AName','image'];

Example : 
input : 
SearchField : SongName
SongName : 光るなら

output : 
[{"SgName":"光るなら","Author":"Goose house","Composer":"Goose house","Singer":"Goose house","Type":"Opening","AName":"四月是你的謊言","image":"images/anime/april.jpg"}]
```

### 其他

動畫歌曲搜尋
歌手搜尋
還沒做~

Details的API也還沒做完

## 問題

Details API不確定有哪些
目前想到，但不一定要做，好多OAO

1. SongSearch.ejs的Singer地方多增一個點擊歌手可以取得歌手資訊的API
2. DBsearch.ejs新增一個點擊Studio輸出Studio的資訊和該Studio裡的staff
3. 點擊VoiceActor的Agent輸出Agent的資訊
4. 點擊VoiceActor跑出他的個人資訊和Casting的角色、動畫
5. DBsearch.ejs Genre地方可能也要能按一下動畫跑出動畫資訊