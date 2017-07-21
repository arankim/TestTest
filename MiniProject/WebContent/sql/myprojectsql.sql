create sequence seq_count start with 10000
increment by 1 nocache;

create table countdb (
num number(10)
);

insert into countdb values (seq_count.nextval);