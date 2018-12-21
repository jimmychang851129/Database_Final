-- Anime ID used diff from docs
-- casting primary key has changed diff from docs

-- location varchar(45)
-- studio name varchar(30)
-- Name varchar(30)
-- people Name var char(15)
-- Agent name varchar(21)
-- SongName varchar(20)
-- Anime name varchar(30)
-- Character name varchar(20)
-- type , genre INTEGER
-- Gender BOOLEAN

CREATE TABLE Animation (
	AnimeID INTEGER PRIMARY KEY,
	AName varchar(30) NOT NULL,
	Episode SMALLINT,
	Season SMALLINT NOT NULL,
	Rating SMALLINT,
	sdName varchar(30)	-- studio name
);

CREATE TABLE Incharge (			-- double primary key not sure handle correct
	AnimeID INTEGER,
	Job varchar(30),
	SName varchar(15),	-- studio name
	PRIMARY KEY(AnimeID,Job)
);

CREATE TABLE Staff (
	SName varchar(15),
	SdName varchar(30),	# studio name
	PRIMARY KEY(SName)
);

CREATE TABLE Studio(
	SdName varchar(30),
	FoundDate date,
	Location varchar(45),	-- don't know how long it should be
	President varchar(15),
	PRIMARY KEY(SdName)
);

CREATE TABLE Genre(		-- double  primary key
	AnimeID INTEGER,
	Genre INTEGER,
	PRIMARY KEY(AnimeID,Genre)
);

CREATE TABLE Casting(
	AnimeID INTEGER,
	VName varchar(15),
	CharacterName varchar(20),	-- Character is keyword !!!
	ChGender BOOLEAN, 			-- 0 for male 1 for female
	PRIMARY KEY(AnimeID,CharacterName)	
);

CREATE TABLE VoiceActor(
	VName varchar(15),	-- voice actor name
	Gender BOOLEAN,
	Birthday Date,
	Debut Date,
	Agent varchar(21),
	PRIMARY KEY(VName)
);

CREATE TABLE Agent(
	AgName varchar(21),
	Location varchar(45),
	FoundDate Date,
	President varchar(15),
	PRIMARY KEY(AgName)
);

CREATE TABLE ThemeSong(
	SgName varchar(20),
	Author varchar(15),
	Composer varchar(15),
	Singer varchar(15),
	Type INTEGER,
	AName varchar(30),
	PRIMARY KEY(SgName)  -- need so much feature ?
);

CREATE TABLE Singer(
	VName varchar(15),
	Gender BOOLEAN, -- 0 for male 1 for female
	Birthday Date,
	Debut Date,
	Agent varchar(21),
	PRIMARY KEY(VName)
);
