DROP DATABASE IF EXISTS Voca;
CREATE DATABASE Voca;
USE Voca;

CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    loginId CHAR(20) NOT NULL,
    loginPw CHAR(60) NOT NULL,
    `authLevel` SMALLINT(2) UNSIGNED DEFAULT 3 COMMENT '권한레벨(3=일반, 7=관리자)',
    `name` CHAR(20) NOT NULL,
    `nickname` CHAR(20) NOT NULL,
    cellphoneNo CHAR(20) NOT NULL,
    email CHAR(50) NOT NULL
);


INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'admin',
loginPw = 'admin',
authLevel = 7,
`name` = "관리자",
nickname = "관리자",
cellphoneNo = "01011112222",
email = "amdin@gmail.com";

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'user1',
loginPw = 'user1',
`name` = "사용자1",
nickname = "사용자1",
cellphoneNo = "01012345678",
email = "user1@gmail.com";

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'user2',
loginPw = 'user2',
`name` = "사용자2",
nickname = "사용자2",
cellphoneNo = "01012345672",
email = "user2@gmail.com";

SELECT * FROM `member`;

CREATE TABLE word(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `name` char(50) not null,
	same_num int(10),
	`group` char(30),
	type char (30),
	origin char(30),
    pronun char(50),
    `usage` char(50),
	derivative char(50),
	level char(30),
	category char(50),
	topic char(50),
	full_ref char(50),
	search_type char(50),
	related_word char(50),
	ref char(50),
	mean char(100) not null,
	example char(100),
	search_num int(20) not null default '0',
    test_num int(20) not null default '0'
);




SELECT * FROM word;

CREATE TABLE MyVoca(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    memberId INT(10) NOT NULL,
    wordId INT(10) NOT NULL
);

SELECT * FROM MyVoca;
