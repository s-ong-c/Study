CREATE TABLE shopMember(
	name	varchar2(20),
	userid	varchar2(15) PRIMARY KEY,
	pwd		varchar2(15),
	email 	varchar2(20),
	phone 	char(15),
	addr	varchar2(100),
	point	varchar2(10) default 0,
	gender	varchar2(10)
);

CREATE TABLE shopItem(
	itemnum		number(5) PRIMARY KEY,
	memberid	varchar2(12),
	title 		varchar2(100),
	price 		varchar2(15),
	countnum 	varchar2(10),
	content		varchar2(2000),
	image		varchar2(20),
	ctgl		varchar2(30),
	readCount number(4) default 0,
	writedate date default sysdate
);

CREATE TABLE reply(
	renum 		number(5) PRIMARY KEY,
	memberid	varchar2(10),	
	recontent 	varchar2(1000),
	reitemnum 	number(5),
	rewritedate date default sysdate
);

create table cusboard(
	cusnum number(5)	primary key,
	cususerid varchar2(10),
	cuspass varchar2(15),
	custitle varchar2(30),
	cuscontent varchar2(500),
	cusctgl varchar2(20),
	cuswritedate date default sysdate,
	cusanwserddate date default sysdate

);

CREATE TABLE freeboard(
	bonum number(5) PRIMARY KEY,
	bomemberid varchar2(10),
	bopass varchar2(10),
	botitle varchar2(50),
	bocontent	varchar2(1000),
	boreadcount	number(5) default 0,
	bowritedate date default sysdate
);

create sequence shop_item start with 1 increment by 1;
create sequence cus_board start with 1 increment by 1;
create sequence freeboard_seq start with 1 increment by 1;

SELECT * from shopmember; 
SELECT * from shopitem; 
SELECT * from reply; 
SELECT * from cusboard; 
select * from FREEBOARD;

drop table shopitem;
drop table shopmember;

delete from SHOPMEMBER where userid = 'test';
delete from shopitem where memberid = 'test';

insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '롱나시 기본나시 민소매', '15900', '30', '내용무','yifu01.PNG','패션의류');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '벨라덴 썽머 가디건', '29900', '5', '내용무','yifu02.PNG','패션의류');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '플라워 패턴 꽃무늬 롱 원피스', '23000', '10', '내용무','yifu03.PNG','패션의류');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '무배 튤립 프릴 반팔 벨트 원피스', '2000', '20', '내용무','yifu04.jpg','패션의류');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '코크 레터링 티셔츠', '15000', '50', '내용무','yifu05.jpg','패션의류');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '이너세트 플라워 시스루 블라우스', '21900', '40', '내용무','yifu06.jpg','패션의류');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '트리플에이 무지티 바팔티셔츠', '7900', '28', '내용무','yifu07.jpg','패션의류');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '편한 남자 옆밴딩 슬랙스', '16000', '45', '내용무','yifu08.jpg','패션의류');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '와이드스트라이프 정장셔츠', '29800', '36', '내용무','yifu09.jpg','패션의류');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '기획여름긴팔셔츠', '15500', '30', '내용무','yifu10.jpg','패션의류');



insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '롱나시 기본나시 민소매', '15900', '30', '내용무','yifu01.PNG','패션잡화');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '벨라덴 썽머 가디건', '29900', '5', '내용무','yifu02.PNG','패션잡화');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '플라워 패턴 꽃무늬 롱 원피스', '23000', '10', '내용무','yifu03.PNG','패션잡화');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '무배 튤립 프릴 반팔 벨트 원피스', '2000', '20', '내용무','yifu04.jpg','패션잡화');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '코크 레터링 티셔츠', '15000', '50', '내용무','yifu05.jpg','패션잡화');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '이너세트 플라워 시스루 블라우스', '21900', '40', '내용무','yifu06.jpg','패션잡화');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '트리플에이 무지티 바팔티셔츠', '7900', '28', '내용무','yifu07.jpg','패션잡화');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '편한 남자 옆밴딩 슬랙스', '16000', '45', '내용무','yifu08.jpg','패션잡화');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '와이드스트라이프 정장셔츠', '29800', '36', '내용무','yifu09.jpg','패션잡화');
insert into shopItem(itemnum, memberid, title, price, countnum, content, image, ctgl) 
values(shop_item.nextval, 'test', '기획여름긴팔셔츠', '15500', '30', '내용무','yifu10.jpg','패션잡화');



SELECT * from shopmember; 
SELECT * from shopitem; 
SELECT * from reply; 
SELECT * from cusboard; 
select * from FREEBOARD;

delete shopitem where memberid='test2';

select itemnum, memberid, title, price, countnum, content, image, ctgl from 
(select rownum r, itemnum, memberid, title, price, countnum, content, image, ctgl from shopitem)
where r>=5 and r<=10;

insert into cusBoard(cusnum,cususerid,cuspass, custitle, cuscontent, cusctgl) values(cus_board.nextval,'기섭','1234','고장','고쳐주세요','주문/결제');


insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','울트라 스몰 USB 3.0 메모리 8G ','7000','1','향 좋음','865201394.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','OMT USB3.0 4포트 USB허브 5Gbps 고속전송','7000','1','향 좋음','841011342.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','삼성 led 모니터','7000','1','향 좋음','563246582.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아이폰 불사조케이스+방탄필름','7000','1','향 좋음','822668343.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','갤럭시S8 가죽케이스','7000','1','향 좋음','631487893.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','유케이스 아이폰6 6s 케이스 360도 풀커버','7000','1','향 좋음','757075810.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','슈피겐 아이폰6S 케이스','7000','1','향 좋음','605479879_02.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','에스뷰 보조배터리10400mAh','7000','1','향 좋음','702608487.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','USB 충전식 휴대용 전기 어린이 손난로 핫팩 ','7000','1','향 좋음','877529324.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','샤오미 2세대 20000mah 보조배터리','7000','1','향 좋음','711096202.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','닌텐도 New 3DSXL 닌텐도 뉴 3DS XL ','7000','1','향 좋음','303713249.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','닌텐도 위 wii 신형 2인구성 게임시디 포함 ','7000','1','향 좋음','887331308.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','UiiSii이어폰 모음 GT500','7000','1','향 좋음','833263457.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','뉴 에코 이어폰','7000','1','향 좋음','865676409.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','선없는 완전무선 블루투스 이어폰','7000','1','향 좋음','901501363.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','블루투스 이어폰 넥밴드 플루토 EBS-888','7000','1','향 좋음','738720478_02.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','BZ-T3710 AV Soundbar 가로세로 변형 사운드바 ','7000','1','향 좋음','798832295.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','캔스톤 T150 TV 사운드바 블루투스 스피커 ','7000','1','향 좋음','874226391.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','AKG K92 헤드폰','7000','1','향 좋음','930480204.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','고성능스테레오','7000','1','향 좋음','822986823.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','사운드매직 P21S 가성비 음질좋은 헤드폰 헤드셋 ','7000','1','향 좋음','651732388.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','Aneex 헤드폰 E-H8080 음악감상 및 통화가능 ','7000','1','향 좋음','557274535.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','BS-808 확성기','7000','1','향 좋음','840092530.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','건전지 알카라인 망간 리튬 ','7000','1','향 좋음','855586732.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','인스탁스와이드필름2팩(20장)','7000','1','향 좋음','827488867.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','인스탁스 미니7s','7000','1','향 좋음','293437092.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','인스탁스 미니90','7000','1','향 좋음','810828687.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','소니 FE 24-240mm F3.5-6.3 OSS ','7000','1','향 좋음','792692371.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','올림푸스 M.ZUIKO DIGITAL 45mm F1.8 ','7000','1','향 좋음','729496059.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','쿠첸공식대리점 10인용 전기보온 밥솥 LJ-MC1001 ','7000','1','향 좋음','945625176.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','쿠첸 4인용 전기밥솥 밥솥 CJE-A0401','7000','1','향 좋음','844788461.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','동부대우전자 20L 전자렌지','7000','1','향 좋음','862734926.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','브레드가든 큐트 핸드믹서모음전 핸드믹서기','7000','1','향 좋음','629794070.jpg','디지털가전');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','오플로어 옥슨 컴퓨터 책상','55000','1','천연가죽 이에요 ~ ','763453753.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','접이좌식책상','55000','1','천연가죽 이에요 ~ ','704849216_01.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','디토가구 다이아테이블 ','55000','1','천연가죽 이에요 ~ ','315907499.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','자이너스노트북테이블 ','55000','1','천연가죽 이에요 ~ ','338394098.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','집중력책상','55000','1','천연가죽 이에요 ~ ','368465246.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','원목 분리형 이층침대','55000','1','천연가죽 이에요 ~ ','132500045.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','어린이 아동 의자 스타백체어','55000','1','천연가죽 이에요 ~ ','154680895.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','샘글로벌TOP7체어','55000','1','천연가죽 이에요 ~ ','899302146.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','시니프 로보의자','55000','1','천연가죽 이에요 ~ ','721614464.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','심플메쉬의자','55000','1','천연가죽 이에요 ~ ','763453753.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','올리 체어','55000','1','천연가죽 이에요 ~ ','818496635.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','나누벨 원목거실장','55000','1','천연가죽 이에요 ~ ','912352386.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','보니코가구쿠키거실장','55000','1','천연가죽 이에요 ~ ','688065927.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','PLS-2000 티비거치대','55000','1','천연가죽 이에요 ~ ','116435334.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','파사 1800 슬라이딩 거실장','55000','1','천연가죽 이에요 ~ ','955295315.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','그라츠TV테이블','55000','1','천연가죽 이에요 ~ ','763453753.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','강화유리 장식장','55000','1','천연가죽 이에요 ~ ','680076682.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','잇츠유 방수단면매트리스','55000','1','천연가죽 이에요 ~ ','887755746.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','초극세사벨로아 6회전스프링 단면매트리스 ','55000','1','천연가죽 이에요 ~ ','156816426.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','넥스디자인 카모 4인용','55000','1','천연가죽 이에요 ~ ','494963192.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','배색디자인 하이디 3인용 가죽쇼파','55000','1','천연가죽 이에요 ~ ','687924131.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','모션 리클라이너 솔리드 좌식의자','55000','1','천연가죽 이에요 ~ ','681416918.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','BLMG블루밍홈 윈디쇼파베드3','55000','1','천연가죽 이에요 ~ ','227492352.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','스위티 3인용소파 좌식쇼파 쇼파베드','55000','1','천연가죽 이에요 ~ ','160037163.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','쇼파','55000','1','천연가죽 이에요 ~ ','160037163_00.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','자이너스 대나무 원목 거실 쇼파테이블','55000','1','천연가죽 이에요 ~ ','338389861.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','이케아 이동식서랍장','55000','1','천연가죽 이에요 ~ ','418019070.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','이케아 스탠드 LERSTA 리딩 플로어 램프 ','55000','1','천연가죽 이에요 ~ ','695453546.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','이케아 LERBERG 철제 대형 4단선반','55000','1','천연가죽 이에요 ~ ','693117599.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','이케아 미니양초랜턴','55000','1','천연가죽 이에요 ~ ','814045306.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','이케아 접이식의자 ','55000','1','천연가죽 이에요 ~ ','719771778.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','이케아 LOVA 캐노피','55000','1','천연가죽 이에요 ~ ','749959972.jpg','가구인테리어');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','adidas BI4247 MEN S OUTDOOR 스트레치 팬츠 ','55000','1','천연가죽 이에요 ~ ','925398732.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','헤드 JHPOM17006BUX 남성 베이직 밴딩 쇼츠 팬츠 ','55000','1','천연가죽 이에요 ~ ','938182694.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아디다스 티로17 트레이닝 쇼트 AY2885 ','55000','1','천연가죽 이에요 ~ ','878608922.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아디다스 쇼츠','55000','1','천연가죽 이에요 ~ ','948949364.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','나루 마스크 자외선차단 자전거 등산용품 자전거용품 ','55000','1','천연가죽 이에요 ~ ','283520931.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','디씨 스키 보드 넥워머 마스크','55000','1','천연가죽 이에요 ~ ','870567294.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','안티포그 스포츠글라스','55000','1','천연가죽 이에요 ~ ','920075006.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','2017년 네파 쿨토시 스퀘어라인 네파팔토시 ','55000','1','천연가죽 이에요 ~ ','800241935.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','나이키 아디다스 미즈노 헤어밴드 손목아대 정품','55000','1','천연가죽 이에요 ~ ','211121127.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아디다스 티로17 트레이닝 반팔저지','55000','1','천연가죽 이에요 ~ ','884057169.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','카파 ITA 기본 라운드 티','55000','1','천연가죽 이에요 ~ ','914308315.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','데상트S5321ZPC02하프넥 긴팔언더레이어 언더셔츠검정 ','55000','1','천연가죽 이에요 ~ ','814561057.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','언더아머 히트기어 헬스복 반팔티 기능성 이너웨어 ','55000','1','천연가죽 이에요 ~ ','951751025.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아디다스모자','55000','1','천연가죽 이에요 ~ ','915950232.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아리체 벌집망사 슬라이드 썬바이저 썬캡','55000','1','천연가죽 이에요 ~ ','678153171.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','팬셜비젼 랜턴비니 48루멘 불레부통상','55000','1','천연가죽 이에요 ~ ','882867332.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','따스한 군밤 방한모자','55000','1','천연가죽 이에요 ~ ','965559825.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','여성 골프 빅 빌 바이저','55000','1','천연가죽 이에요 ~ ','965343586.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','S.M.H 스포츠가방','55000','1','천연가죽 이에요 ~ ','260992059.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아디다스 슈즈백 ','55000','1','천연가죽 이에요 ~ ','209087630.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','티로 미디엄 팀백','55000','1','천연가죽 이에요 ~ ','890362646.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','핑 삼양인터내셔널정품','55000','1','천연가죽 이에요 ~ ','938059229.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','엠유 캐릭터 골프 캐디백 보스턴백','55000','1','천연가죽 이에요 ~ ','929230975.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','MARKBE 마크비 임프로 골프공','55000','1','천연가죽 이에요 ~ ','765907274.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','골프공 50개','55000','1','천연가죽 이에요 ~ ','905420199.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','핑 골드 고반발 유틸리티 우드 ','55000','1','천연가죽 이에요 ~ ','937876135.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','마레스 루즈 핏 마레스 래쉬가드 ','55000','1','천연가죽 이에요 ~ ','548764579.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아쿠윈 스퍼트 훈련용 핀 SF 숏핀 오리발','55000','1','천연가죽 이에요 ~ ','887266979.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','TUSA 투사 센타스노클','55000','1','천연가죽 이에요 ~ ','755687825.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','다슬기잡이 해녀수경','55000','1','천연가죽 이에요 ~ ','503975432.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','발폭넓이조절 타보레 트라이더 킥보드','55000','1','천연가죽 이에요 ~ ','278993942.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','필모리스고글 스포츠선글라스','55000','1','천연가죽 이에요 ~ ','698103456.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','자전거 헬멧','55000','1','천연가죽 이에요 ~ ','861346676.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','Toodi 전동킥보드','55000','1','천연가죽 이에요 ~ ','962324696.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','두발전동보드','55000','1','천연가죽 이에요 ~ ','930683547.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','더존휠 12종 전동휠 투휠 보드 전동 전기 킥보드 보드','55000','1','천연가죽 이에요 ~ ','731166292.jpg','스포츠레저');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','2017미고미니플러스2유모차','7000','1','향 좋음','658696104.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','LOVI 러비스위스 모유실감 메디컬 젖병','7000','1','향 좋음','921017415.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','더블하트','7000','1','향 좋음','504740147.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','퓨레스트 로션','7000','1','향 좋음','588166596.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','닥터아토 카밍로션 +미스트/다이애퍼크림 증정 ','7000','1','향 좋음','866717838.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','베피스 로션 or 워시1+1 /아기로션/유아로션 ','7000','1','향 좋음','815435026.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아토팜 대용량 로션300ml 크림160ml ','7000','1','향 좋음','875144080.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','마더스콘 유아식기/이유식기 식판 도시락 스푼포크 ','7000','1','향 좋음','173637483.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','MAXICOSI 맥시코시 토비 카시트 로빈레드','7000','1','향 좋음','920571527.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','맘플러스 3단계 스텝 변기 유아변기 유아소변기 ','7000','1','향 좋음','951283014.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','개구리소변기','7000','1','향 좋음','693271919.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','꾸꾸 자동차 유아변기 자동차변기 포티 아기변기','7000','1','향 좋음','859940368_01.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','루즈핏임부티','7000','1','향 좋음','dsdfdf.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아이엔젤끄로베 셀피믹스 힙시트캐리어','7000','1','향 좋음','354762728_01.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','오리궁뎅이 힙시트 신비아이 아기띠 아기 유아 용품 ','7000','1','향 좋음','158683767.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','리틀라이프 레인져 캐리어 ','7000','1','향 좋음','933440193.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','국민슬링 노댄져 아기띠','7000','1','향 좋음','121589238.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','코지힙 사계절 아기띠 오가닉 신생부터 사용','7000','1','향 좋음','646329382.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','물감 미술 유아 방수 모래 놀이 매트 ','7000','1','향 좋음','788065402.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','변신범퍼침대 대형 럭키스타 아이보리','7000','1','향 좋음','838685905.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','놀이방매트 놀이매트 유아매트 어린이매트 바닥매트 ','7000','1','향 좋음','199339465.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','정토이즈 파워 제이맥 271pcs','7000','1','향 좋음','642590217.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','새봄씨 옥스포드 WEQ 블럭 블록 듀플로 호환','7000','1','향 좋음','896522996.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','100 건담 Mk-II 에우고 2.0 138412 건담프라모델 ','7000','1','향 좋음','853970167.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','블라블라 베지스 보행기튜브 레오파이 아기유아 튜브 ','7000','1','향 좋음','130119863.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','백조 보행기튜브','7000','1','향 좋음','563173186.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','패밀리에어쿠션풀','7000','1','향 좋음','678540020.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','자석칠판','7000','1','향 좋음','199218218.jpg','출산육아');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','2017 월드컵 운동화','75000','1','핏 좋아요','902061587.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','여름샌들','75000','1','핏 좋아요','943815600.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','나이키 에어맥스 2017 블랙 ','75000','1','핏 좋아요','907032660.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','디불런 바퀴달린 LED 롤러슈즈 신발 휠리스 힐리스 ','75000','1','핏 좋아요','936303679.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','GG510블랙','75000','1','핏 좋아요','934429132.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','통굽운동화 여성 키높이','75000','1','핏 좋아요','572238505.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','통굽운동화 스니커즈','75000','1','핏 좋아요','308245355.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','나이키 에어맥스테아','75000','1','핏 좋아요','962041656.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','남자워킹화','75000','1','핏 좋아요','891468060_00.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','소가죽으로 제작한 골든 스타 샤무아 구스 블랙 크랙 ','75000','1','핏 좋아요','863117943.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','여자 통굽 구두','75000','1','핏 좋아요','936315489.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','LIVITY 샌들슬리퍼 아쿠아슈즈','75000','1','핏 좋아요','301340910_00.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','간호사샌들','75000','1','핏 좋아요','964092793.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','푸마 바스켓 하트 페이턴트 화이트','75000','1','핏 좋아요','928884692.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','브라운 로퍼 키높이 구두 단화 남성 ','75000','1','핏 좋아요','960150442.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','겨자 남성 캐주얼 구두 단화 키높이 ','75000','1','핏 좋아요','960108548.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','1+1여행용남여배낭+슬링백3D캐주얼등산힙색베백팩가방','75000','1','핏 좋아요','915465061_00.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','빅애플백팩','75000','1','핏 좋아요','767663294.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','여행 가방 보조 백','75000','1','핏 좋아요','838730105.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','고급 백팩 남자백팩 여성백팩','75000','1','핏 좋아요','877184231.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','캐주얼 원형 사각 학생 책 가방','75000','1','핏 좋아요','851298277.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','버사 오토매틱 네오 싱글 와치와인더 하이덴 보관함 ','75000','1','핏 좋아요','710264841.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','엠콜로 시계 전자시계 군인시계 학생시계 손목시계 ','75000','1','핏 좋아요','941547054.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','무광실버메탈 기어S3클래식 시계줄 블루투스 호환용 ','75000','1','핏 좋아요','880464000.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','줄리아 가죽시계','75000','1','핏 좋아요','916045290.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','핫딜 쎄젤르 TEEN 젤네일세트','75000','1','핏 좋아요','810750954.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','젤네일 세트 오픈특가','75000','1','핏 좋아요','615047297.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','손톱깍기세트','75000','1','핏 좋아요','254447900.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','오리엔탈리엔 보양진 탈모방지 샴푸 400ml 3개 ','75000','1','핏 좋아요','689156545_00.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','버블볼4종+장미입욕꽃+티라이트2개 거품 입욕제 ','75000','1','핏 좋아요','159705462.jpg','패션잡화');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','나이키 나이키 츄리닝 후드세트','7000','2','향 좋음','nike.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','플라워 오프숄더 반팔 블라우스','7000','1','향 좋음','963307459.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','패션풀 블라우스','7000','1','향 좋음','920442214.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','패션박스티','7000','1','향 좋음','896654063.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','화이트 블라우스','7000','1','향 좋음','162187489_00.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','미니 포켓 스트라이프 블라우스','7000','1','향 좋음','944498064.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','정장세트','7000','1','향 좋음','851789888.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','콜티나 디스트로이드진','7000','1','향 좋음','915103557.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','스키니바지','7000','1','향 좋음','761570384.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','비이심플 레터링 자수 브이넥 긴팔 가디건','7000','1','향 좋음','953562700.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','생활한복','13900','1','향 좋음','935125894.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','생활한복반티','25000','1','향 좋음','824448251.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','남성 바람막이 아웃도어점퍼','7000','1','향 좋음','719625732.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','알슨코리아 남녀공용 코치자켓 ','7000','1','향 좋음','748307691.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','여름점퍼','7000','1','향 좋음','717803402.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','아디다스 콘디보 16 반팔티','7000','1','향 좋음','960132317.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','멋남 버블 포켓 반팔티','9650','1','향 좋음','940582847.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','반팔 카라티','12900','1','향 좋음','924921568.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','데미지진','15900','1','향 좋음','238309923.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','튿어진청바지','7000','1','향 좋음','779573498.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','인터페이스 지금 안사면 손해 쭈리 단가라 브이넥','14900','1','향 좋음','932404491.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','TI FOR MEN 티아이포맨 스트라이프 와플 니트 가디건','47480','1','향 좋음','925069752.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','푸마 IT 에보트레이닝 우븐 팬츠','42320','1','향 좋음','960130953.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','3단줄꽈베기 심플라운드 긴팔니트티','18100','1','향 좋음','956579317.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','클래식 코트 수트','7000','1','향 좋음','620464212.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','남성정장','7000','1','향 좋음','940423878.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','닥스 와이셔츠','7000','1','향 좋음','576374374.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','남성슬림핏셔츠','7000','1','향 좋음','813866614.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','반팔셔츠 화이트 ','23200','1','향 좋음','964893357.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','여름맞이 캐주얼원피스','7000','1','향 좋음','800937441_00.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','8부데님','7000','1','향 좋음','399815051.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','여름신상 티셔츠','5900','1','향 좋음','767551396.jpg','패션의류');
insert into shopitem(itemnum,memberid,title,price,countnum,content,image,ctgl) values(shop_item.nextval,'test','블라우스','25900','1','향 좋음','812278667.jpg','패션의류');


select title from shopitem;
select title,price from shopitem;
select title,price from shopitem where rownum<5;
select title,price from shopitem where rownum>5;
select title,price from shopitem where rownum=5;
select title,price from shopitem where rownum>3 and rownum<10;

select rownum rnum,title,price from shopitem;
select rownum rnum,title from shopitem where rnum<3;

select title from (select rownum rnum,title,price from shopitem) where rnum<5;
select title from (select rownum rnum,title,price from shopitem) where rnum>5 and rnum<10;
