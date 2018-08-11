CREATE TABLE board(
num number(5) PRIMARY KEY,
pass varchar2(30),
name varchar2(30),
email varchar2(30),
title varchar2(50),
content varchar2(1000),
readcount number(4) default 0,
writedate date default sysdate
);
select * from BOARD;

-- 湲�踰덊샇瑜� 1�뵫 利앷��떆�궎�뒗 �떆���뒪 媛앹껜 
create sequence board_seq start with 1 increment by 1;
/*
	board_seq.nextval <-- 1�뵫 利앷�
	board_seq.currval <-- �쁽�옱 �떆���뒪 媛믪쓣 媛��졇��
	
	�떆���뒪�쓽 媛� - 1�씪�씠 吏��굹硫� 20�뵫 利앷��릺�뼱 �엳�떎. (�떒�젏)	
*/
insert into board(num,name,email,pass,title, content) 
	values(board_seq.nextval,'송민', 'hong@koreait.com', '1234', '테스', 'ㅁㄴㅇㅁ니임');
insert into board(num,name,email,pass,title, content) 
	values(board_seq.nextval,'송석석', 'lee@koreait.com', '1234', '스트르', '디ㅣ지');
insert into board(num,name,email,pass,title, content) 
	values(board_seq.nextval,'송민석', 'kim@koreait.com', '1234', '스트라','지금');