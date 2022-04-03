select count(*) from customers; #122

select count(*) from customers where country = 'USA' ;  # 36

explain select count(*) from customers where country = 'USA' ; # will search all 122 rows

create index country_index on customers(country);

explain select count(*) from customers where country = 'USA' ;  # will search only 36 rows

SHOW indexes from customers;

drop index  country_index on customers;

