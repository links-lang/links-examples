create database simple_scheduler;

create table consts 
(
    item varchar(255),
    value integer
);

create table eventinfo
(
    event_id integer,
    title varchar(255),
    sponsor_id integer,
    description varchar(255)
);
    
create table personinfo
(
    person_id integer,
    person_name varchar(255),
    password varchar(255)
);

create table joininfo
(
    join_id integer,
    event_id integer,
    person_id integer
);

create table eventtime
(
    event_id integer,
    available_time varchar(255)
);

create table jointime
(
    join_id integer,
    available_time varchar(255)
);

insert into consts values ('max_event_id', 0);
insert into consts values ('max_person_id', 0);
insert into consts values ('max_join_id', 0);
