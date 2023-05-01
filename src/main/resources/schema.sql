create schema if not exists product;

create table if not exists product.CUSTOMERS(
                                  id int auto_increment primary key,
                                  name varchar(255),
                                  surname varchar(255),
                                  age int,
                                  phone_number int
);

insert into product.CUSTOMERS(name, surname, age, phone_number)
values ('Petr', 'Petrov', 26, 88888);

insert into product.CUSTOMERS(name, surname, age, phone_number)
values ('Ivan', 'Ivanov', 40, 77777);

insert into product.CUSTOMERS(name, surname, age, phone_number)
values ('Alexey', 'Alexeev', 30, 44444);

create table if not exists product.ORDERS(
                               id int auto_increment primary key,
                               date varchar(255),
                               customer_id int not null ,
                               product_name varchar(255),
                               amount int,
                               foreign key (customer_id) references product.CUSTOMERS (id)
);

insert into product.ORDERS(date, customer_id, product_name, amount)
values ('01.01.2022', 1, 'bread', 100);

insert into product.ORDERS(date, customer_id, product_name, amount)
values ('01.02.2022', 2, 'batter', 50);

insert into product.ORDERS(date, customer_id, product_name, amount)
values ('01.03.2022', 3, 'tea', 200);

insert into product.ORDERS(date, customer_id, product_name, amount)
values ('01.04.2022', 3, 'coffee', 500);