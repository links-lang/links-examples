create database surveybuilder;

-- database within which scope will be stored all tables from SurveyBuilder application

CREATE TABLE surveys
(
  id serial NOT NULL,
  name character varying(255),
  textareasno integer,
  redirection text,
  welcome text,
  timetofill integer,
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

-- tables connected with checkboxes !

create table checkboxquestions(
id serial NOT NULL,
surveyid integer,
checkboxcontent text
);

create table checkboxoptions(
id serial NOT NULL,
questionid integer,
optioncontent text
);

create table checkboxentries(
id serial NOT NULL,
optionid integer,
respondendid integer,
optionvalue integer
);

-- tables for temporary operations

create table tmpquestions(
name text
);

create table tmpcbquestions(
id serial NOT NULL,
qcontent text
);

create table tmpcboptions(
-- pomyslec nad jakims ID tutaj, sprobujemy na razie bez
cbqid integer,
ocontent text
);