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