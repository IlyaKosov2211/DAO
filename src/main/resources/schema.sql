create table if not exists netology.CUSTOMERS
(
    id serial primary key,
    name varchar not null,
    surname varchar not null,
    age int     not null,
    phone_number varchar not null
);


create table if not exists netology.ORDERS
(
    id serial primary key,
    date timestamp not null,
    customer_id int,
    product_name varchar not null,
    amount int not null,
    foreign key (customer_id) references netology.CUSTOMERS(id)
);

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('ILYA', 'KOSOV', 30, '+79091234567');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('IVAN', 'IVANOV', 40, '+79081234567');

insert into netology.CUSTOMERS (name, surname, age, phone_number)
values ('ALEXEY', 'PETROV', 50, '+79071234567');

insert into netology.ORDERS (date, customer_id, product_name, amount)
VALUES (current_date, 2, 'Computer', 3);