-- Studio
Insert into Studio(SdName,FoundDate,Location,President) Values('ufotable','2000','杉並区本天沼2-47-17 第2榎本ビル','近藤光');
Insert into Studio(SdName,FoundDate,Location,President) Values('TROYCA','2013','東京都練馬区石神井町3-17-19 石神井公園ビル','長野敏之');
Insert into Studio(SdName,FoundDate,President) Values('TYPE-MOON','2003','奈須蘑菇');
Insert into Studio(SdName,Location,President) Values('Nitro+','日本東京都千代田區','でじたろう');
Insert into Studio(SdName,FoundDate,Location,President) Values('MAGES.','2005','東京都渋谷區猿楽町','志倉千代丸');
Insert into Studio(SdName,FoundDate,Location,President) Values('WHITE FOX','2007','東京都杉並区天沼','岩佐岳');
Insert into Studio(SdName,FoundDate,Location,President) Values('A-1 Pictures','2005','東京都杉並區成田東4丁目38番18號','柏田真一郎');
Insert into Studio(SdName,FoundDate,Location) Values('三次元','2006','東京都杉並區上荻一丁目');
Insert into Studio(SdName,FoundDate,Location,President) Values('J.C.STAFF','1986','日本東京都武藏野市境二丁目','阿部倫久');


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


-- incharge


