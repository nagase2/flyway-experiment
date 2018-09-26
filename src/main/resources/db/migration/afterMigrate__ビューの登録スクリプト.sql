--このスクリプトはMigrate実行時に毎回実行されます。



 create table PERSON_begin6 (
    ID int not null, 
    NAME varchar(100) not null
);

CREATE OR REPLACE VIEW person_view AS 
 SELECT person.id,
    person.name,
    person.ssss as xxxxx
   FROM person;
