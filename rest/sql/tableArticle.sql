use my_sait;
create table if not exists article(
id int not null auto_increment primary key,
time_of Date null,
header_of_article varchar(100) not null,
type_of_article varchar(50) not null,
text text not null
)character set cp1251 ENGINE=MyIsam;