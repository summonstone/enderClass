--사용자 db
create table member (
	userName char(5) not null,
    userID varchar(30) not null,
    userPW varchar(20) not null,
    userBirth varchar(20) not null,
    userPhone varchar(20) not null,
    userAddress varchar(50) not null,
    userGrade int(1) default 1,
    primary key(userID)
);

drop table member;
delete from member;
select*from member;

--교재 db
create table book(
	b_num int auto_increment primary key,
	b_name varchar(100) not null,
	b_image varchar(30) not null,
	b_pub varchar(10) not null,
	b_price int not null,
	b_info varchar(200) not null
);

drop table book;
delete from book;
select*from book;

insert into book (b_name, b_image, b_pub, b_price, b_info)
values
("프로젝트로 배우는 자바 웹 프로그래밍 (Servlet, JSP, JDBC)", "image", "한빛아카데미", 26000, "자바 웹 프로그래밍은 자바 프로그래밍 초보자나 경험이 있는 사람들 모두에게 적합하게 구성된 책이다."),
("초보자를 위한 JavaScript 200제","image", "정보문화사", 25000, "발 빠르게 진화되면서 세계에서 가장 인기 있는 언어가 된 자바스크립트를 설치부터 활용까지 예제별로 친절하게 안내하는 책이다."),
("자바 웹을 다루는 기술","image", "길벗", 45000 , "최근 효율적으로 개발할 수 있는 웹 프레임워크가 많이 나왔지만, JSP와 서블릿은 자바 웹 개발에서 가장 중요하고도 기본이 되는 내용이다."),
("데이터베이스 개론","image", "한빛아카데미", 27000 , "기초 개념부터 빅데이터까지 큰 흐름이 보이는 데이터베이스 교과서. 데이터베이스로 첫 항해를 떠나는 이들에게 지도와 돛이 되어주는 책입니다."),
("초보자를 위한 파이썬 200제","image", "정보문화사", 20000 , "처음부터 차근차근 예제를 통해 파이썬 기초를 다지고 간단한 프로그램을 만들 수 있는 실력까지 향상될 수 있도록 했다."),
("모던 웹을 위한 HTML5+CSS3 바이블","image", "한빛미디어", 32000 , "이 책은 HTML5 표준과 CSS3 표준을 사용하여 웹 페이지를 구현하는 방법을 중심으로 설명하고  웹 페이지 레이아웃, 스마트폰 레이아웃, 태블릿 PC 레이아웃, 소셜커머스 메인 페이지 레이아웃을 담았습니다.");
	
--강좌 db
create table class(
	c_num int auto_increment primary key,
	c_name varchar(50) not null,
	c_tr varchar(10) not null,
	c_price int not null,
	c_content int not null,
	c_info varchar(150),
	b_num int
);

drop table class;
delete from class;
select*from class;

insert into class (c_name, c_tr, c_price, c_content, c_info, b_num)
values
("자바 웹 프로그래밍", "강사 이름", 100000, 1, "자바 프로그래밍 초보자나 경험이 있는 사람들 모두에게 적합하게 구성!", 1 ),
("초보자를 위한 자바스크립트 200제", "강사 이름", 100000, 1, "자바스크립트를 설치부터 활용까지 예제별로 자세하게!", 2 ),
("자바 웹 개발", "강사 이름", 100000, 1, "자바 웹 개발에서 가장 중요하고 기본이 되는 JSP와 서블릿을 이용한 웹 개발", 3 ),
("데이터베이스", "강사 이름", 100000, 1, "기초 개념부터 빅데이터까지 큰 흐름이 볼 수 있는 강의", 4 ),
("초보자를 위한 파이썬 200제", "강사 이름", 100000, 1, "처음부터 차근차근 예제를 통해 파이썬 기초를 다지고 간단한 프로그램을 만들 수 있는 실력까지!", 5 ),
("모던 웹을 위한 HTML5+CSS3 바이블", "강사 이름", 100000, 1, " HTML5 표준과 CSS3 표준을 사용하여 웹 페이지를 구현하는 방법을 중심으로 설명하고  웹 페이지 레이아웃, 스마트폰 레이아웃, 태블릿 PC 레이아웃, 소셜커머스 메인 페이지 레이아웃을 활용.", 6 );

--장바구니 db
create table cart (
	userID varchar(30),
	c_num int not null,
	b_num int not null
);

drop table cart;
delete from cart;
select*from cart;

--주문 db
create table receipt (
	userID varchar(30),
	c_num int not null,
	b_num int not null
);

drop table receipt;
delete from receipt;
select*from receipt;

--게시판 db
CREATE TABLE board(
bo_num int primary key auto_increment not null,
bo_subject varchar(50),
bo_id varchar(20),
bo_content varchar(2000),
bo_date varchar(20),
bo_readcount int default 0
);

drop table board;

select * from book
select * from cart
select * from class;
select * from Board;
select c.c_name, c.c_tr, c.c_price, b.b_name, b.b_price from class c, book b, cart cart, member member where cart.c_num = c.c_num  and member.userID = cart.userID;
select c.c_name, c.c_tr, c.c_price, b.b_name, b.b_price from class c, book b, cart cart where cart.c_num = c.c_num and cart.b_num=b.b_num;
