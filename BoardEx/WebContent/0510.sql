create table member(
		name	varchar2(10),
		userid	varchar2(10) primary key,
		pwd		varchar2(10),
		email	varchar2(20),
		phone	char(13),
		admin	number(1) default 0 --관리자 0:일반회원  1:관리자
);
select * from member;

--테이블 컬럼의 구조를 바꾸다 : email을 30개로 바꾸다
 alter table member modify(
 	email varchar2(30)
 );		
--테이블 컬럼의 이름을 바꾸다   userid를 id로 바꾼다.
 alter table member  rename column userid to id;
--> 다시 원래대로 바꿔놓자
 alter table member  rename column id to userid;
--테이블 이름을 바꾼다.
 rename member to MemberShip;
--> 다시 원래대로 바꿔놓자
 rename membership to Member;

--컬럼을 추가하자 (age라는 컬럼은 정수형 3칸 짜리로 만들 것임, 제약조건은 없음)
alter table member add (AGE number(3) null);

--컬럼을 삭제하자 (age컬럼 삭제)
alter table member drop column age;


insert into member values('홍길동', 'hong', '1234hong', 'hong.com', '010-11', 0);
insert into member values('김길동', 'kim', '1234kim', 'kim.com', '010-99', 0);
insert into member values('최길동', 'choi', '1234choi', 'choi.com', '010-88', 0);


SELECT * from member;

--select 12+18, 16+45, 78*5 from dual;
drop table member;

