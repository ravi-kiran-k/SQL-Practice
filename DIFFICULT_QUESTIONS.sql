-- create database practice;
-- use practice;
-- create table test(id int not null, name varchar(20), id1 int, city varchar(20), state varchar(20));
-- insert into test values(1,'ravi',1,'bangalore', 'karnataka'),
-- (1,'ravi',1,'delhi', 'delhi'),
-- (2,'kiran',2,'patna', 'bihar'),
-- (3,'krishnappa',3,'mumbai', 'maharastra'),
-- (3,'krishnappa',3,'chennai', 'tamil nadu'),
-- (4,'kung',4,'nagpur', 'maharastra');
use practice;
select * from test;

select id , name,
 group_concat(concat(city,',',state)
separator ',' ) from test 
group by id, name;

use practice;
create table pract(id int not null,
date date, name varchar(20),age int);
alter table pract modify column id varchar(20);

insert into pract values
 ('v1','2022-01-16','ravi',20);
  insert into pract values('v2','2022-01-18','kiran',20),
   ('v1','2022-01-16','rak',20),
    ('v3','2022-01-19','goat',20),
     ('v4','2022-01-20','tim',20),
      ('v4','2022-01-21','tom',20),
       ('v2','2022-01-18','rom',20);
       
      
  update  pract set name= 'Ravi' where id='v1';
        update  pract set name= 'kiran' where id='v2';
         update  pract set name= 'rocks' where id='v3';
          update  pract set name= 'tom' where id='v4';
    
  with cte as 
(
select *,
row_number() over(partition by date_time order by date_time) as rnum
from ravi_sel
)
select id  from cte 
group by id
having max(rnum) =1 and count(id)>1 ;
