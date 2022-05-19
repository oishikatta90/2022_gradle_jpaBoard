#DB 생성
DROP DATABASE IF EXISTS jts_gradle_jpaBoard;
CREATE DATABASE jts_gradle_jpaBoard;
USE jts_gradle_jpaBoard;

#질문 테이블 생성
CREATE TABLE question (
  id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  create_date DATETIME NOT NULL,
  `subject` VARCHAR(200) NOT NULL,
  content TEXT NOT NULL
);

#답변 테이블 생성
CREATE TABLE answer (
  id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  create_date DATETIME NOT NULL,
  question_id BIGINT UNSIGNED NOT NULL,
  content TEXT NOT NULL
);

#회원 테이블 생성
CREATE TABLE site_user (
  id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  username CHAR(100) NOT NULL UNIQUE,
  `password` CHAR(100) NOT NULL,
  email CHAR(100) NOT NULL UNIQUE
  );

#질문 테이블에 작성자 컬럼 추가
ALTER TABLE question
ADD COLUMN author_id BIGINT UNSIGNED NOT NULL;

#답변 테이블에 작성자 컬럼 추가
ALTER TABLE answer
ADD COLUMN author_id BIGINT UNSIGNED NOT NULL;

#질문 테이블에 수정 날짜 컬럼 추가
#alter table question
#add column modify_date datetime not null default '1970-01-01' after create_date;
#update question set modify_date = create_date;

#질문 테이블에 수정날짜 컬럼 추가
ALTER TABLE question
ADD COLUMN modify_date DATETIME AFTER create_date;

#답변 테이블에 수정날짜 컬럼추가
ALTER TABLE answer
ADD COLUMN modify_date DATETIME AFTER create_date;

#답변 테이블에 수정 날짜 컬럼 추가
#alter table answer
#add column modify_date datetime not null DEFAULT '1970-01-01' after create_date;
#update answer set modify_date = create_date;

INSERT INTO site_user
SET
username = 'admin',
`password` = '$2a$10$aI3RXS0LG7smJyXI4qx8gOTJ1gKLxfm4dHoPtouNsLzPKZKa8jBcC',
email = 'admin1@go.com';


SELECT * FROM question;
SELECT * FROM answer;
SELECT * FROM `site_user`;