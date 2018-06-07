/* 회원 */
DROP TABLE member 
	CASCADE CONSTRAINTS;

/* 강의 */
DROP TABLE lechure 
	CASCADE CONSTRAINTS;

/* 회원게시판 */
DROP TABLE bbsMem 
	CASCADE CONSTRAINTS;

/* 상담게시판 */
DROP TABLE bbsQna 
	CASCADE CONSTRAINTS;

/* 출석 */
DROP TABLE chk 
	CASCADE CONSTRAINTS;

/* 강의장 */
DROP TABLE class 
	CASCADE CONSTRAINTS;

/* 성적 */
DROP TABLE grade 
	CASCADE CONSTRAINTS;

/* 사내게시판 */
DROP TABLE bbsTeam 
	CASCADE CONSTRAINTS;

/* 신청 */
DROP TABLE submit 
	CASCADE CONSTRAINTS;

/* 공지사항 */
DROP TABLE bbs 
	CASCADE CONSTRAINTS;

/* 개인정보 */
DROP TABLE privacy 
	CASCADE CONSTRAINTS;

/* 회원 */
CREATE TABLE member (
	memId VARCHAR2(20) NOT NULL, /* 아이디 */
	memPw VARCHAR2(20) NOT NULL, /* 비밀번호 */
	memCate VARCHAR2(20), /* 분류 */
	memIpD DATE, /* 입력일시 */
	memIpN VARCHAR2(20) /* 입력자 */
);

CREATE UNIQUE INDEX PK_member
	ON member (
		memId ASC
	);

ALTER TABLE member
	ADD
		CONSTRAINT PK_member
		PRIMARY KEY (
			memId
		);

/* 강의 */
CREATE TABLE lechure (
	lecNo NUMBER NOT NULL, /* 강의번호 */
	lecName VARCHAR2(100) NOT NULL, /* 강의이름 */
	lecStart DATE NOT NULL, /* 강의시작일 */
	lecEnd DATE NOT NULL, /* 강의종료일 */
	lecCon LONG, /* 강의설명 */
	teaId VARCHAR2(20) NOT NULL, /* 강사 */
	classAddress VARCHAR2(40) NOT NULL, /* 강의장위치 */
	classNum NUMBER, /* 수강인원 */
	lecIpD DATE NOT NULL, /* 입력일시 */
	lecIpN VARCHAR2(20) NOT NULL /* 입력자 */
);

CREATE UNIQUE INDEX PK_lechure
	ON lechure (
		lecNo ASC
	);

ALTER TABLE lechure
	ADD
		CONSTRAINT PK_lechure
		PRIMARY KEY (
			lecNo
		);

/* 회원게시판 */
CREATE TABLE bbsMem (
	bbsMemNo NUMBER NOT NULL, /* 글번호 */
	bbsMemCate VARCHAR2(20) NOT NULL, /* 분류 */
	bbsMemName VARCHAR2(100) NOT NULL, /* 글제목 */
	bbsMemCon LONG, /* 글내용 */
	memId VARCHAR2(20) NOT NULL, /* 글쓴이 */
	bbsMemDate DATE NOT NULL, /* 날짜 */
	bbsMemView NUMBER /* 조회수 */
);

CREATE UNIQUE INDEX PK_bbsMem
	ON bbsMem (
		bbsMemNo ASC
	);

ALTER TABLE bbsMem
	ADD
		CONSTRAINT PK_bbsMem
		PRIMARY KEY (
			bbsMemNo
		);

/* 상담게시판 */
CREATE TABLE bbsQna (
	bbsQnaNo NUMBER NOT NULL, /* 글번호 */
	bbsQnaPw VARCHAR2(20) NOT NULL, /* 비밀번호 */
	bbsQnaCate VARCHAR2(20) NOT NULL, /* 분류 */
	bbsQnaName VARCHAR2(100) NOT NULL, /* 글제목 */
	bbsQnaCon LONG, /* 글내용 */
	bbsQnaW VARCHAR2(20) NOT NULL, /* 글쓴이 */
	bbsQnaIpD DATE NOT NULL, /* 날짜 */
	bbsQnaView NUMBER /* 조회수 */
);

CREATE UNIQUE INDEX PK_bbsQna
	ON bbsQna (
		bbsQnaNo ASC
	);

ALTER TABLE bbsQna
	ADD
		CONSTRAINT PK_bbsQna
		PRIMARY KEY (
			bbsQnaNo
		);

/* 출석 */
CREATE TABLE chk (
	chkNo NUMBER NOT NULL, /* 출석번호 */
	memId VARCHAR2(20) NOT NULL, /* 아이디 */
	chkIpD DATE NOT NULL, /* 입력일시 */
	chkUdD DATE, /* 수정일시 */
	teaId VARCHAR2(20) /* 강사수정 */
);

CREATE UNIQUE INDEX PK_chk
	ON chk (
		chkNo ASC
	);

ALTER TABLE chk
	ADD
		CONSTRAINT PK_chk
		PRIMARY KEY (
			chkNo
		);

/* 강의장 */
CREATE TABLE class (
	classNo NUMBER NOT NULL, /* 강의장번호 */
	className VARCHAR2(40) NOT NULL, /* 강의장명 */
	classAddress VARCHAR2(20), /* 강의장위치 */
	classIpD DATE NOT NULL, /* 입력일시 */
	classIpN VARCHAR2(20) NOT NULL /* 입력자 */
);

CREATE UNIQUE INDEX PK_class
	ON class (
		classNo ASC
	);

ALTER TABLE class
	ADD
		CONSTRAINT PK_class
		PRIMARY KEY (
			classNo
		);

/* 성적 */
CREATE TABLE grade (
	memId VARCHAR2(20) NOT NULL, /* 아이디 */
	graName VARCHAR2(40), /* 회원이름 */
	graJava NUMBER(3,0), /* JAVA */
	graWeb NUMBER(3,0), /* WEB */
	graDb NUMBER(3,0), /* DB */
	graIpD DATE NOT NULL, /* 입력일시 */
	teaId VARCHAR2(20) NOT NULL, /* 입력자 */
	teaUdD DATE, /* 수정일시 */
	teaUdN VARCHAR2(20) /* 수정입력 */
);

CREATE UNIQUE INDEX PK_grade
	ON grade (
		memId ASC
	);

ALTER TABLE grade
	ADD
		CONSTRAINT PK_grade
		PRIMARY KEY (
			memId
		);

/* 사내게시판 */
CREATE TABLE bbsTeam (
	bbsTeamNo NUMBER NOT NULL, /* 글번호 */
	bbsTeamCate VARCHAR2(20) NOT NULL, /* 분류 */
	bbsTeamName VARCHAR2(100) NOT NULL, /* 글제목 */
	bbsTeamCon LONG, /* 글내용 */
	bbsTeamW VARCHAR2(20) NOT NULL, /* 글쓴이 */
	bbsTeamDate DATE NOT NULL, /* 날짜 */
	bbsTeamView NUMBER /* 조회수 */
);

CREATE UNIQUE INDEX PK_bbsTeam
	ON bbsTeam (
		bbsTeamNo ASC
	);

ALTER TABLE bbsTeam
	ADD
		CONSTRAINT PK_bbsTeam
		PRIMARY KEY (
			bbsTeamNo
		);

/* 신청 */
CREATE TABLE submit (
	submitNo VARCHAR2(40) NOT NULL, /* 신청번호 */
	lecName VARCHAR2(40) NOT NULL, /* 강의이름 */
	memId VARCHAR2(20) NOT NULL /* 신청자 */
);

CREATE UNIQUE INDEX PK_submit
	ON submit (
		submitNo ASC
	);

ALTER TABLE submit
	ADD
		CONSTRAINT PK_submit
		PRIMARY KEY (
			submitNo
		);

/* 공지사항 */
CREATE TABLE bbs (
	bbsNo NUMBER NOT NULL, /* 글번호 */
	bbsCate VARCHAR2(20) NOT NULL, /* 분류 */
	bbsName VARCHAR2(100) NOT NULL, /* 글제목 */
	bbsCon LONG, /* 글내용 */
	bbsW VARCHAR2(20) NOT NULL, /* 글쓴이 */
	bbsDate DATE NOT NULL, /* 날짜 */
	bbsView NUMBER, /* 조회수 */
	bbsUdD DATE /* 수정일시 */
);

CREATE UNIQUE INDEX PK_bbs
	ON bbs (
		bbsNo ASC
	);

ALTER TABLE bbs
	ADD
		CONSTRAINT PK_bbs
		PRIMARY KEY (
			bbsNo
		);

/* 개인정보 */
CREATE TABLE privacy (
	memId VARCHAR2(20) NOT NULL, /* 아이디 */
	memNo NUMBER NOT NULL, /* 회원번호 */
	lecNo NUMBER, /* 강의이름 */
	memName VARCHAR2(40) NOT NULL, /* 이름 */
	memGen VARCHAR2(4) NOT NULL, /* 성별 */
	memBirth DATE NOT NULL, /* 생년월일 */
	memMail VARCHAR2(40) NOT NULL, /* 이메일 */
	memPnum NUMBER(11,0) NOT NULL, /* 전화번호 */
	lecStuName VARCHAR2(40) /* 기본 없음 */
);

CREATE UNIQUE INDEX PK_privacy
	ON privacy (
		memId ASC
	);

ALTER TABLE privacy
	ADD
		CONSTRAINT PK_privacy
		PRIMARY KEY (
			memId
		);

ALTER TABLE lechure
	ADD
		CONSTRAINT FK_member_TO_lechure
		FOREIGN KEY (
			teaId
		)
		REFERENCES member (
			memId
		);

ALTER TABLE lechure
	ADD
		CONSTRAINT FK_member_TO_lechure2
		FOREIGN KEY (
			lecIpN
		)
		REFERENCES member (
			memId
		);

ALTER TABLE bbsMem
	ADD
		CONSTRAINT FK_member_TO_bbsMem
		FOREIGN KEY (
			memId
		)
		REFERENCES member (
			memId
		);

ALTER TABLE bbsQna
	ADD
		CONSTRAINT FK_member_TO_bbsQna
		FOREIGN KEY (
			bbsQnaW
		)
		REFERENCES member (
			memId
		);
/* 연관관계 삭제 */
ALTER TABLE bbsQna DROP CONSTRAINT FK_member_TO_bbsQna;

ALTER TABLE chk
	ADD
		CONSTRAINT FK_member_TO_chk
		FOREIGN KEY (
			memId
		)
		REFERENCES member (
			memId
		);

ALTER TABLE class
	ADD
		CONSTRAINT FK_member_TO_class
		FOREIGN KEY (
			classIpN
		)
		REFERENCES member (
			memId
		);

ALTER TABLE grade
	ADD
		CONSTRAINT FK_member_TO_grade
		FOREIGN KEY (
			teaId
		)
		REFERENCES member (
			memId
		);

ALTER TABLE grade
	ADD
		CONSTRAINT FK_member_TO_grade2
		FOREIGN KEY (
			memId
		)
		REFERENCES member (
			memId
		);

ALTER TABLE bbsTeam
	ADD
		CONSTRAINT FK_member_TO_bbsTeam
		FOREIGN KEY (
			bbsTeamW
		)
		REFERENCES member (
			memId
		);
		
ALTER TABLE submit
	ADD
		CONSTRAINT FK_member_TO_submit
		FOREIGN KEY (
			memId
		)
		REFERENCES member (
			memId
		);

ALTER TABLE bbs
	ADD
		CONSTRAINT FK_member_TO_bbs
		FOREIGN KEY (
			bbsW
		)
		REFERENCES member (
			memId
		);

ALTER TABLE privacy
	ADD
		CONSTRAINT FK_member_TO_privacy
		FOREIGN KEY (
			memId
		)
		REFERENCES member (
			memId
		)
		ON DELETE CASCADE;
		
drop sequence bbsQna_seq;
create sequence bbsQna_seq;

drop sequence privacy_seq;
create sequence privacy_seq;

drop sequence bbsMem_seq;
create sequence bbsMem_seq;

drop sequence cmt_seq;
create sequence cmt_seq;

drop sequence bbs_seq;
create sequence bbs_seq;

drop sequence bbsTeam_seq;
create sequence bbsTeam_seq;

drop sequence chk_seq;
create sequence chk_seq;

/* 직원 */
insert into member values('E1',1234,'행정',sysdate,'');

/* 강사 */
insert into member values('T1',1234,'강사',sysdate,'E1');

/* 강의장 */
insert into class values(1,'자바강의장','6강의장',sysdate,'E1');

/* 강의 */
insert into lechure values(1,'자바',sysdate,sysdate,'강의내용','T1',1,20,sysdate,'E1');

/* 회원 */
insert into member values('abc',1234,'학생',sysdate,'');

/* 개인정보 */
insert into privacy values('abc',privacy_seq.nextval,1,'학생이름','남',sysdate,'abc@gamil.com',01012345678, '없음');

/* 회원게시판 */
insert into bbsMem values(bbsmem_seq.nextval,'잡담','첫번째글','내용무','abc',sysdate,1);

/* 상담게시판 */
insert into bbsQna values(bbsQna_seq.nextval,1234,'잡담','첫번째글','내용무','E1',sysdate,1);

/* 출석 */
insert into chk values(chk_seq.nextval,'abc',sysdate,'','');

/* 성적 */
insert into grade values('abc','abc',100,100,100,sysdate,'T1','','');

/* 사내게시판 */
insert into bbsTeam values(bbsTeam_seq.nextval,'잡담','첫번째글','내용무','1',sysdate,1);

/* 신청 */
insert into submit values('test','자바','abc');
/* 공지사항 */
insert into bbs values(bbs_seq.nextval,'잡담','첫번째글','내용무','E1',sysdate,1,'');
/* 꼭 실행해야할 구문 */
alter table lechure rename column classaddress to classno;
alter table lechure add classaddress varchar2(40); 
ALTER TABLE lechure DROP CONSTRAINT PK_LECHURE CASCADE;
create sequence classno_seq start with 910 increment by 1 maxvalue 99999999 minvalue 910 nocycle nocache noorder;


insert into member values('E1',1234,'행정',sysdate,'');
insert into member values('E2',1234,'행정',sysdate,'');
insert into member values('E3',1234,'행정',sysdate,'');
insert into member values('T1',1234,'강사',sysdate,'');
insert into member values('T2',1234,'강사',sysdate,'');
insert into member values('T3',1234,'강사',sysdate,'');
insert into member values('S1',1234,'영업',sysdate,'');
insert into member values('S2',1234,'영업',sysdate,'');



/* 구문 테스트 */
select * from (select ROWNUM rnum, memId, memName, chkIpD, teaId
 from (select distinct e.memId, e.memName, d.chkIpD, d.teaId
 from (select memId, memName from privacy) e full outer join chk d on d.memId = e.memId order by e.MEMNAME))
 where rnum>=1 and rnum<=10;
SELECT * FROM ALL_CONSTRAINTS WHERE TABLE_NAME = 'lechure';
select * from MEMBER;
select * from chk;
select * from user_sequences;
select count(*) from bbs;
select * from grade;
select * from PRIVACY;
select * from lechure;
select count(*) from BBSQNA where bbsQnaName like '%테스트%';
select * from (select rownum rnum, bbsQnaNo, bbsQnaPW, bbsQnaCate, BBSQNAName, bbsQnaCon, bbsQnaW, bbsQnaIPD, bbsQnaView from BBSQNA order by bbsqnano desc) where rnum>=1 and rnum<=10;

select * from (select rownum rnum, bbsQnaNo, bbsQnaPW, bbsQnaCate, BBSQNAName, bbsQnaCon, bbsQnaW, bbsQnaIPD, bbsQnaView
from bbsQna where bbsqnaName like '%테스트%' order by bbsqnano desc) where rnum>=1 and rnum<=10;

select * from (select ROWNUM rnum, memId, memName, chkIpD, teaId" +
                "               from (select distinct e.memId, e.memName, d.chkIpD, d.teaId" +
                "                 from (select memId, memName from privacy) e full outer join chk d on d.memId = e.memId order by e.MEMNAME))" +
                "                  where rnum>=? and rnum<=?";
insert into member values('abcd',1234,'학생',sysdate,'');
insert into privacy values('abcd',privacy_seq.nextval,1,'학생이름','남',sysdate,'abc@gamil.com',01012345678, '없음');
select * from chk;
select to_CHAR(chkipd, 'YYYY-MM-DD') from chk where memid = 'test';
select * from member;
insert into submit values('T1','aaaa','T1');
delete from submit where memid = 'T1';
submit, lechure
select * from submit;
select distinct * from (select)
select distinct e.memId, e.memName,e.memGen,e.lecNo,e.LECSTUNAME, d.LECNAME 
 from (select distinct e.memId, d.memName, d.memGen, d.lecNo, d.LECSTUNAME 
 from submit e inner join privacy d on e.memId = d.memId)
 e full outer join lechure d on e.memId = d.LECNAME order by e.MEMID desc;
 select * from lechure where lecname = '자바';
 SELECT * FROM (select rownum rnum, bbsNo, bbscate, bbsname, bbscon, bbsw, bbsdate, bbsview, bbsudd from bbs ORDER BY BBSNO DESC) where rnum>=1 and rnum<10;
 select * from (select rownum rnum, bbsQnaNo, bbsQnaPW, bbsQnaCate, BBSQNAName, bbsQnaCon, bbsQnaW, bbsQnaIPD, bbsQnaView from BBSQNA order by bbsqnano desc) where rnum>=11 and rnum<=20;
 select * from PRIvacy
 