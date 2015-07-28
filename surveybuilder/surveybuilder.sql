create database surveybuilder;

-- database within which scope will be stored all tables from SurveyBuilder application

create table surveys(
id serial NOT NULL,
name varchar(255),
textareasno integer
);

create table surveyrespondents(
id serial NOT NULL,
surveyid integer,
name varchar(255)
);

create table textareas(
id serial NOT NULL,
surveyid integer,
questioncontent text
);

create table textareaentries(
id serial NOT NULL,
textareaid integer,
respondendid integer,
answer text
);

create table tmpquestions(
name text
);

-- Remember to delete the content after creation of a survey !
