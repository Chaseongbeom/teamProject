-- MySQL
-- root 계정으로 설정
create database bootex default character set utf8;

create user 'bootuser'@'localhost' identified by 'bootuser';
grant all privileges on bootex.* to 'bootuser'@'localhost';

create user 'bootuser'@'%' identified by 'bootuser';
grant all privileges on bootex.* to 'bootuser'@'%';

-- scott 계정
CREATE TABLE `react_user` (
  `username` varchar(100) DEFAULT NULL COMMENT '사용자 이름',
  `userorg` varchar(100) DEFAULT NULL COMMENT '소속기관',
  `useremail` varchar(100) COMMENT '이메일',
  `userpassword` varchar(100) DEFAULT NULL COMMENT '로그인 비밀번호',
  `usermajor` varchar(100) DEFAULT NULL COMMENT '전공',
  `userphone` varchar(100) DEFAULT NULL COMMENT '휴대전화번호',
  `userflag` varchar(100) DEFAULT NULL COMMENT '승인여부',
  `reg_date` varchar(100) DEFAULT NULL COMMENT '등록날짜',
  `reg_user` varchar(100) DEFAULT NULL COMMENT '등록자',
  `update_date` varchar(100) DEFAULT NULL COMMENT '수정날짜',
  `update_user` varchar(100) DEFAULT NULL COMMENT '수정자',
  PRIMARY KEY (`useremail`)
);


-- bootuser 계정으로 설정
use bootex;
create table news (
	title varchar(100),
	journalist varchar(30),
	reg_dt TIMESTAMP NOT NULL DEFAULT now(),
	publisher varchar(30)	
);

insert into news (title,journalist,publisher) values('제목1', '홍길동', '조선일보');
insert into news (title,journalist,publisher) values('제목2', '유재석', '한국일보');
select * from news;


-- Oracle
create table news (
	title varchar(100),
	journalist varchar(30),
	reg_dt TIMESTAMP,
	publisher varchar(30)	
);

insert into news (title,journalist,reg_dt,publisher) values('제목1', '홍길동', sysdate, '조선일보');
insert into news (title,journalist,reg_dt,publisher) values('제목2', '유재석', sysdate, '한국일보');
commit;
select * from news;

CREATE TABLE react_user (
  username varchar(100),
  userorg varchar(100),
  useremail varchar(100),
  userpassword varchar(100),
  usermajor varchar(100),
  userphone varchar(100),
  userflag varchar(100),
  reg_date varchar(100),
  reg_user varchar(100),
  update_date varchar(100),
  update_user varchar(100),
  PRIMARY KEY (useremail)
);