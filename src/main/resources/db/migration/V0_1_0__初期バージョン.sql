--共通マスタ・共通機能のDDLを実行するスクリプト
--select 'start form here!!'::text;  

--\i folder/create_table.ddl;

--\set VERBOSITY verbose;

--SELECT * FROM :VERBOSITY;
 
create table PERSON2 (
    ID int not null,
    NAME varchar(100) not null
);


create table PERSON_v1 (
    ID int not null,
    NAME varchar(100) not null
);

