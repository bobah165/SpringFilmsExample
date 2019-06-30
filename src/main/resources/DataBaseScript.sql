create table films
(
  id      serial primary key,
  title   varchar(100)          not null,
  year    numeric(4),
  genere  varchar(20),
  watched boolean default false not null
);

insert into films (title,year,genere,watched) values ('Agent 007',2011,'action',true);