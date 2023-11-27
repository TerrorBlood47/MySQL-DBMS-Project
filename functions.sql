use db_Mens_Football_Leagues_Club_Management_System;

/*Procedure*/

DELIMITER $$
DROP PROCEDURE IF EXISTS get_club $$
CREATE PROCEDURE get_club(IN clubName VARCHAR(200))
BEGIN
    SELECT * FROM tbl_club
    WHERE club_name = clubName;
END $$
DELIMITER ;

/*call get_club('Liverpool FC');*/




DELIMITER $$
DROP PROCEDURE IF EXISTS setPlayer $$
create PROCEDURE setPlayer(IN name VARCHAR(200),
                           IN dob DATE,
                           IN position VARCHAR(200),
                           IN nation VARCHAR(200),
                           IN wage INT,
                           IN rc INT)

BEGIN
    DECLARE id INT ;

    select max(player_id) into id from tbl_players ;

    if id is NULL 
        then set id := 1 ;
    else 
        set id := id + 1;
        end if;

    
    insert into tbl_players values
    (id, name, dob, position, nation, wage, rc);
    
    select concat('player ', name , ' inserted') as insert_status;


END $$
DELIMITER ;


/*all setPlayer('Luis Diaz','1996-07-07','Forward','Columbia',190000,19000000 );*/



/* Function */

DELIMITER $$
DROP FUNCTION IF EXISTS players_age $$
CREATE  FUNCTION players_age(DOB DATE)
RETURNS int DETERMINISTIC

BEGIN
    RETURN year(CURDATE()) - year(DOB);
END $$

DELIMITER ;


/*
SELECT player_name, players_age(date_of_birth) as age 
from tbl_players;
*/

/* trigger */
drop trigger if exists insert_msg_trig;
create trigger insert_msg_trig
before insert on tbl_players
for each row
    set new.age := players_age(new.date_of_birth);

