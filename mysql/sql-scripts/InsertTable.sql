-- Studio
Insert into Studio(SdName,FoundDate,Location,President) Values('ufotable','2000','杉並区本天沼','近藤光');
Insert into Studio(SdName,FoundDate,Location,President) Values('TROYCA','2013','東京都練馬区石神井町','長野敏之');
Insert into Studio(SdName,FoundDate,President) Values('TYPE-MOON','2003','奈須蘑菇');
Insert into Studio(SdName,Location,President) Values('Nitro+','日本東京都千代田區','でじたろう');
Insert into Studio(SdName,FoundDate,Location,President) Values('MAGES.','2005','東京都渋谷區猿楽町','志倉千代丸');
Insert into Studio(SdName,FoundDate,Location,President) Values('WHITE FOX','2007','東京都杉並区天沼','岩佐岳');
Insert into Studio(SdName,FoundDate,Location,President) Values('A-1 Pictures','2005','東京都杉並區成田東4丁目','柏田真一郎');
Insert into Studio(SdName,FoundDate,Location) Values('三次元','2006','東京都杉並區上荻一丁目');
Insert into Studio(SdName,FoundDate,Location,President) Values('J.C.STAFF','1986','日本東京都武藏野市境二丁目','阿部倫久');
Insert into Studio(SdName,FoundDate,Location,President) Values('ISSEN','1990','日本東京都世田谷區若林一丁目','奧野敏聰');

-- Anime
Insert into Animation(AnimeID,AName,Episode,Season,Rating,AnimeDate,sdName,image) VALUES(1,'Fate/Zero',25,1,10,'201110','ufotable','fz.jpeg');
Insert into Animation(AnimeID,AName,Episode,Season,Rating,AnimeDate,sdName,image) VALUES(2,'Steins;Gate',25,1,9,'201104','WHITE FOX','steingate.jpeg');
Insert into Animation(AnimeID,AName,Episode,Season,Rating,AnimeDate,sdName,image) VALUES(3,'Re:CREATORS',22,1,9,'201704','TROYCA','recreate.jpeg');
Insert into Animation(AnimeID,AName,Episode,Season,Rating,AnimeDate,sdName,image) VALUES(4,'Re:ゼロから始める異世界生活',25,1,9,'201604','WHITE FOX','rezero.jpeg');
Insert into Animation(AnimeID,AName,Episode,Season,Rating,AnimeDate,sdName,image) VALUES(5,'とある魔術の禁書目録',24,1,8,'200810','J.C.STAFF','index.jpg');
Insert into Animation(AnimeID,AName,Episode,Season,Rating,AnimeDate,sdName,image) VALUES(6,'四月是你的謊言',22,1,8,'201410','A-1 Pictures','april.jpg');
Insert into Animation(AnimeID,AName,Episode,Season,Rating,AnimeDate,sdName,image) VALUES(7,'刀劍神域',25,1,9,'201207','A-1 Pictures','sao_s1.jpg');
Insert into Animation(AnimeID,AName,Episode,Season,Rating,AnimeDate,sdName,image) VALUES(8,'刀劍神域',24,2,7,'201407','A-1 Pictures','sao_s2.jpg');
Insert into Animation(AnimeID,AName,Episode,Season,Rating,AnimeDate,sdName,image) VALUES(9,'bang dream',13,2,10,'201901','三次元','bgd_s2.jpeg');


-- genre
Insert into Genre(AnimeID,Genre) VALUES(1,1);
Insert into Genre(AnimeID,Genre) VALUES(1,2);
Insert into Genre(AnimeID,Genre) VALUES(1,3);
Insert into Genre(AnimeID,Genre) VALUES(2,4);
Insert into Genre(AnimeID,Genre) VALUES(2,3);
Insert into Genre(AnimeID,Genre) VALUES(3,1);
Insert into Genre(AnimeID,Genre) VALUES(3,3);
Insert into Genre(AnimeID,Genre) VALUES(4,3);
Insert into Genre(AnimeID,Genre) VALUES(4,5);
Insert into Genre(AnimeID,Genre) VALUES(4,1);
Insert into Genre(AnimeID,Genre) VALUES(5,1);
Insert into Genre(AnimeID,Genre) VALUES(5,2);
Insert into Genre(AnimeID,Genre) VALUES(6,6);
Insert into Genre(AnimeID,Genre) VALUES(6,7);
Insert into Genre(AnimeID,Genre) VALUES(6,8);
Insert into Genre(AnimeID,Genre) VALUES(7,1);
Insert into Genre(AnimeID,Genre) VALUES(7,3);
Insert into Genre(AnimeID,Genre) VALUES(7,5);
Insert into Genre(AnimeID,Genre) VALUES(8,1);
Insert into Genre(AnimeID,Genre) VALUES(8,3);
Insert into Genre(AnimeID,Genre) VALUES(8,5);
Insert into Genre(AnimeID,Genre) VALUES(9,8);
Insert into Genre(AnimeID,Genre) VALUES(9,9);


-- staff
Insert into Staff(SName,SdName) VALUES('青木英','TROYCA');
Insert into Staff(SName,SdName) VALUES('武內崇','TYPE-MOON');
Insert into Staff(SName,SdName) VALUES('虛淵玄','Nitro+');
Insert into Staff(SName) VALUES('佐藤卓哉');
Insert into Staff(SName) VALUES('花田十輝');
Insert into Staff(SName) VALUES('廣江禮威');
Insert into Staff(SName) VALUES('長月達平');
Insert into Staff(SName) VALUES('渡邊政治');
Insert into Staff(SName) VALUES('鎌池和馬');
Insert into Staff(SName) VALUES('錦織博');
Insert into Staff(SName) VALUES('新川直司');
Insert into Staff(SName) VALUES('石黑恭平');
Insert into Staff(SName) VALUES('川原礫');
Insert into Staff(SName,SdName) VALUES('伊藤智彥','A-1 Pictures');
Insert into Staff(SName,SdName) VALUES('ISSEN','ISSEN');
Insert into Staff(SName) VALUES('大槻敦史');

-- incharge
Insert into Incharge(AnimeID,Job,SName) VALUES(1,'監督','青木英');
Insert into Incharge(AnimeID,Job,SName) VALUES(1,'人設原案','武內崇');
Insert into Incharge(AnimeID,Job,SName) VALUES(1,'作者','虛淵玄');
Insert into Incharge(AnimeID,Job,SName) VALUES(2,'監督','佐藤卓哉');
Insert into Incharge(AnimeID,Job,SName) VALUES(2,'系列構成','花田十輝');
Insert into Incharge(AnimeID,Job,SName) VALUES(3,'作者','廣江禮威');
Insert into Incharge(AnimeID,Job,SName) VALUES(3,'監督','青木英');
Insert into Incharge(AnimeID,Job,SName) VALUES(4,'作者','長月達平');
Insert into Incharge(AnimeID,Job,SName) VALUES(4,'監督','渡邊政治');
Insert into Incharge(AnimeID,Job,SName) VALUES(5,'作者','鎌池和馬');
Insert into Incharge(AnimeID,Job,SName) VALUES(5,'監督','錦織博');
Insert into Incharge(AnimeID,Job,SName) VALUES(6,'作者','新川直司');
Insert into Incharge(AnimeID,Job,SName) VALUES(6,'監督','石黑恭平');
Insert into Incharge(AnimeID,Job,SName) VALUES(7,'作者','川原礫');
Insert into Incharge(AnimeID,Job,SName) VALUES(7,'監督','伊藤智彥');
Insert into Incharge(AnimeID,Job,SName) VALUES(8,'作者','川原礫');
Insert into Incharge(AnimeID,Job,SName) VALUES(8,'監督','伊藤智彥');
Insert into Incharge(AnimeID,Job,SName) VALUES(9,'作者','ISSEN');
Insert into Incharge(AnimeID,Job,SName) VALUES(9,'劇本統籌','大槻敦史');

-- Agent
Insert into Agent(AgName,Location,FoundDate,President) VALUES('SACRA MUSIC','東京都千代田區六番町','2017','水野道訓');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('VV-ALKLINE','東京都文京区本郷','2017','澤野弘之');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('Music Ray\'n','東京都千代田區六番町','2005','高橋章');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('MAGES.','東京都港区三田三丁目','2006','志倉千代丸');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('TaWaRa','東京都新宿区西新宿','2016','大嶋文博');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('gr8!records','東京都千代田区六番町','2003','高橋章');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('81 produce','東京都澀谷區富谷1丁目','1981','南澤道義');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('響','東京都中野區中央一丁目','2009','木谷高明');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('大澤事務所','東京都港區赤坂4丁目','1984','大澤田鶴子');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('I\'m Enterprise','東京都澀谷區代代木','1993','江崎加子男');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('Across Entertainment','東京都澀谷區富谷','2008','藤崎淳');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('EARLY WING','東京都港區元赤坂一丁目','2009','佐藤龍乙');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('劇団俳優座','東京都港区六本木四丁目','1944','宮崎健');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('東京俳優生活協同組合','東京都渋谷區千駄ヶ谷','1960','朝田孝二');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('株式会社劇団ひまわり','東京都涉谷區惠比壽西2丁目','1952','砂岡不二夫');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('Atomic Monkey','日本東京都港區東麻布','2007','田村司');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('ARTSVISION','東京都澀谷區代代木','1984','江崎加子男');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('Hirata Office','東京都港区赤坂','1979','桜井良樹');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('武士道','東京都中野區','2002','木谷高明');
Insert into Agent(AgName,Location,FoundDate,President) VALUES('AXL ONE','東京都新宿區西新宿','2011','森川智之');

-- VoiceACtor
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('小山力也',FALSE,'1218','1987','劇団俳優座','shaoshan.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('大原沙耶香',TRUE,'1206','1998','東京俳優生活協同組合','dauan.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('川澄綾子',TRUE,'0330','1997','大澤事務所','chanchen.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent) VALUES('中田讓治',FALSE,'0422','1985','大澤事務所');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('宮野真守',FALSE,'0608','2001','株式会社劇団ひまわり','miyano.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('花澤香菜',TRUE,'0225','2003','大澤事務所','hanazawa.jpg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('關智一',FALSE,'0908','1993','Atomic Monkey','kanzi.jpg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('今井麻美',TRUE,'0516','1999','EARLY WING','imai.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('山下大輝',FALSE,'0907','2012','ARTSVISION','yamasita.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('豐崎愛生',TRUE,'1028','2006','Music Ray\'n','fungchi.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('小松未可子',TRUE,'1111','2010','Hirata Office','siaosung.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('水瀨祈',TRUE,'1202','2010','AXL ONE','mizu.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,image) VALUES('小林裕介',FALSE,'0325','2009','shaolin.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('高橋李依',TRUE,'0227','2013','81 produce','kaochao.jpg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('內山夕實',TRUE,'1030','2005','大澤事務所','neshan.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('種田梨沙',TRUE,'0712','2010','大澤事務所','tameda.jpg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('佐倉綾音',TRUE,'0129','2010','I\'m Enterprise','sakura.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('花江夏樹',FALSE,'0626','2011','Across Entertainment','komica.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('逢坂良太',FALSE,'0802','2011','EARLY WING','ryota.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('松岡禎丞',FALSE,'0917','2009','I\'m Enterprise','kito.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('戶松遙',TRUE,'0204','2004','Music Ray\'n','haruka.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('愛美',TRUE,'1225','2010','響','aimi.jpeg');
Insert into VoiceActor(VName,Gender,Birthday,Debut,Agent,image) VALUES('相羽あいな',TRUE,'1017','2016','響','aiba.jpeg');
