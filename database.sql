create table moisture_log
(
	id int auto_increment primary key,
	pot_id char not null,
	moisture_degree int not null,
	datetime timestamp not null
);

create table params
(
	schedule_time char(10) null,
	ref_moisture int default 75 null,
	id int not null primary key,
	auto_moisture int default 0 null
);

create table plant_instruction
(
	id int auto_increment primary key,
	name varchar(100) null,
	temperature varchar(20) null,
	moisture varchar(20) null,
	type int null
);

create table schedule
(
	id int auto_increment primary key,
	pot_id int not null,
	watering_time timestamp default CURRENT_TIMESTAMP not null,
	watering_duration int not null,
	status char(10) default 'PENDING' null
);

create table temperature_log
(
	id int auto_increment primary key,
	pot_id char not null,
	temperature int not null,
	datetime timestamp not null
);

create table user
(
	id int auto_increment primary key,
	user_name varchar(255) not null
);

create table user_pot_map
(
	pot_id int not null,
	user_id int not null,
	primary key (pot_id, user_id)
);

create table watering_log
(
	id int auto_increment primary key,
	pot_id int null,
	watering_seconds int null,
	watering_time timestamp not null,
	schedule_id int null
);

create table watering_pot
(
	id int auto_increment primary key,
	despcription varchar(255) null
);

insert into params (id, schedule_time, ref_moisture, auto_moisture) values (1, '10:00', 30, 1);