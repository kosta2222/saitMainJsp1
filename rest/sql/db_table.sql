drop database my_sait;
create database if not exists my_sait;
use my_sait;
create table if not exists descript(
id int not null auto_increment primary key,
time_of Date,
number_of_foto smallint not null,
dir varchar(12) not null,
description text not null
)character set cp1251 ENGINE=MyIsam;