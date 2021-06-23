drop table member;

create table member2(
	 id varchar2(12) primary key,
	 password varchar2(12) not null,
	 name varchar2(20) not null,
	 address varchar2(50),
	 tel varchar2(20) not null,
	 reg_date date
);
alter table member2 add (del char(1));

select * from member2;