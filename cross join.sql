/* Cross Join */
create table month_values(MM integer);
create table year_values (YYYY integer);

insert into month_values values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12);
insert into year_values values (2011),(2012),(2013),(2014),(2015),(2016),(2017),(2018),(2019);

select * from month_values;
select * from year_values;

select a.YYYY, b.MM
from year_values as a, month_values as b 
order by a.YYYY, b.MM;
