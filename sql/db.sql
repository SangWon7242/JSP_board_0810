# DB 생성
DROP DATABASE IF EXISTS jspboard;
CREATE DATABASE jspboard;

# DB 선택
USE jspboard;

# 게시물 테이블 생성
CREATE TABLE article (
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	`subject` CHAR(200) NOT NULL,
	content LONGTEXT NOT NULL
);

# 게시물 테스트 데이터
INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
`subject` = '제목1',
content = '내용1';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
`subject` = '제목2',
content = '내용2';

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
`subject` = '제목3',
content = '내용3';