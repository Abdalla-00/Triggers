create table siu(ID int, Name VARCHAR(30));
SET SERVEROUTPUT ON;
create or replace TRIGGER su
BEFORE INSERT or DELETE or UPDATE ON siu
for each ROW
DECLARE 
    v_user VARCHAR2(30);
BEGIN
    select user into v_user FROM dual;

    if inserting THEN
        DBMS_OUTPUT.PUT_LINE('hal row aya laso galiyay by' || v_user);

    ELSIF DELETING Then
        DBMS_OUTPUT.PUT_LINE('hal row aya laso tirtiray by' || v_user);

    ELSIF UPDATING THEN
        DBMS_OUTPUT.PUT_LINE('hal row aya la badalay by' || v_user);

        END IF;
        END;



    INSERT INTO siu VALUES(001,'Abdala');

    UPDATE siu set Name='samiir' where Name='Abdala';

    DELETE FROM siu WHERE NAME='samiir';

    select *from siu;