-- add AnimeDate in animation
-- TODO 
-- 1. add imagepath

-- Anime ID used diff from docs
-- casting primary key has changed diff from docs

-- location varchar(45)
-- studio name varchar(30)
-- Name varchar(30)
-- people Name var char(21)
-- Agent name varchar(60)
-- SongName varchar(20)
-- Anime name varchar(30)
-- Character name varchar(20)
-- type , genre INTEGER
-- Gender BOOLEAN
CREATE TABLE Studio(
	SdName varchar(30),
	FoundDate char(5),
	Location varchar(90), 		-- CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,	-- don't know how long it should be
	President varchar(21), 	-- CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci,
	PRIMARY KEY(SdName)
); 							-- CHARACTER SET = utf8;

CREATE TABLE Animation (
	AnimeID INTEGER,
	AName varchar(50) NOT NULL,
	Episode SMALLINT,
	Season SMALLINT NOT NULL,
	Rating SMALLINT,
	AnimeDate CHAR(7),					-- date
	sdName varchar(30) NOT NULL,	-- studio name
	image varchar(30),
	PRIMARY KEY(AnimeID),
	FOREIGN KEY (sdName) REFERENCES Studio(SdName)
);

CREATE TABLE Genre(		-- double  primary key
	AnimeID INTEGER,
	Genre INTEGER,
	PRIMARY KEY(AnimeID,Genre),
	FOREIGN KEY (AnimeID) REFERENCES Animation(AnimeID)
);

CREATE TABLE Staff (
	SName varchar(15),
	SdName varchar(30),	# studio name
	PRIMARY KEY(SName),
	FOREIGN KEY (SdName) REFERENCES Studio(SdName)
);

CREATE TABLE Incharge (			-- double primary key not sure handle correct
	AnimeID INTEGER,
	Job varchar(30),
	SName varchar(15),	-- studio name
	PRIMARY KEY(AnimeID,Job),
	FOREIGN KEY (SName) REFERENCES Staff(SName),
	FOREIGN KEY (AnimeID) REFERENCES Animation(AnimeID)
);

CREATE TABLE Agent(
	AgName varchar(66),
	Location varchar(90),
	FoundDate CHAR(5),
	President varchar(21),
	PRIMARY KEY(AgName)
);

CREATE TABLE VoiceActor(
	VName varchar(21),	-- voice actor name
	Gender BOOLEAN,
	Birthday char(5),
	Debut char(5),
	Agent varchar(66),
	image varchar(30),
	PRIMARY KEY(VName),
	FOREIGN KEY (Agent) REFERENCES Agent(AgName)
);

CREATE TABLE Casting(
	AnimeID INTEGER,
	VName varchar(21),
	CharacterName varchar(30),	-- Character is keyword !!!
	ChGender BOOLEAN, 			-- 0 for male 1 for female
	image varchar(30),			-- store character image
	PRIMARY KEY(AnimeID,CharacterName),
	FOREIGN KEY (AnimeID) REFERENCES Animation(AnimeID),
	FOREIGN KEY (VName) REFERENCES VoiceActor(VName)
);

CREATE TABLE Singer(
	VName varchar(21),
	Gender BOOLEAN, -- 0 for male 1 for female
	Birthday Date,
	Debut Date,
	Agent varchar(30),
	image varchar(30),
	PRIMARY KEY(VName),
	FOREIGN KEY (Agent) REFERENCES Agent(AgName)
);

CREATE TABLE ThemeSong(
	SgName varchar(20),
	Author varchar(21),
	Composer varchar(21),
	Singer varchar(21),
	Type INTEGER,
	AnimeID INTEGER,
	PRIMARY KEY(SgName),  -- need so much feature ?
	FOREIGN KEY (SgName) REFERENCES Singer(VName),
	FOREIGN KEY (AnimeID) REFERENCES Animation(AnimeID)
);
