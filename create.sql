create table shop(
	pro_id varchar(10) unique not null,
	pro_name varchar(50) not null,
	category varchar(50),
	price decimal(10,2) not null,
	quantity_in_stock int not null,
	stock_time timestamp default current_timestamp
);
create table customer(
	cus_id serial primary key,
	cus_name varchar(50) not null,
	phone varchar(10),
	cos_time timestamp default current_timestamp
);
create table orders(
	order_id serial primary key,
	cus_id int references customer(cus_id),
	total_amount decimal(10,2) not null,
	order_time timestamp default current_timestamp
);
create table order_item(
	order_item_id serial primary key,
	order_id int references orders(order_id),
	pro_id varchar references shop(pro_id),
	quantity int not null,
	price_per_unit decimal(10,2) not null
);
