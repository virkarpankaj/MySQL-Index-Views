# virtual table - any 

create view MyView as
select customername, country, State from customers
where country like 'A%';

select * from myview ;

alter view myview as 
select customername, country, State from customers
where country like 'A%'or country like 'B%' OR country LIKE 'C%'
order by country ;

# A% - starts with A
 # %A - ends with A
 # %A% - A anywhere in string 