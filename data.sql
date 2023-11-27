use db_Mens_Football_Leagues_Club_Management_System;



-- Insert data for Liverpool 2018 squad officials with manual official_id values
INSERT INTO tbl_club_officials (official_id, official_name, role_in_club, nationality, salary, release_clause)
VALUES
    (1, 'Jürgen Klopp', 'Manager', 'German', 7000000, 10000000),
    (2, 'Pepijn Lijnders', 'Assistant Manager', 'Dutch', 500000, 500000),
    (3, 'Peter Krawietz', 'Assistant Manager', 'German', 500000, 34340),
    (4, 'Andreas Kornmayer', 'Head of Fitness and Conditioning', 'German', 300000, 21320),
    (5, 'John Achterberg', 'Goalkeeping Coach', 'Dutch', 300000, 324240),
    (6, 'Mona Nemmer', 'Nutritionist', 'German', 200000, 0),
    (7, 'Vitor Matos', 'Elite Development Coach', 'Portuguese', 200000, 343440);

-- Insert data for Manchester City 2018 squad officials with manual official_id values
INSERT INTO tbl_club_officials (official_id, official_name, role_in_club, nationality, salary, release_clause)
VALUES
    (8, 'Pep Guardiola', 'Manager', 'Spanish', 9000000, 15000000),
    (9, 'Mikel Arteta', 'Assistant Manager', 'Spanish', 500000, 10000000),
    (10, 'Brian Kidd', 'Assistant Manager', 'English', 400000, 8000000),
    (11, 'Carles Planchart', 'Coach', 'Spanish', 300000, 7000000),
    (12, 'Xabi Mancisidor', 'Goalkeeping Coach', 'Spanish', 300000, 9000000),
    (13, 'Sam Erith', 'Physiotherapist', 'English', 200000, 6000000),
    (14, 'Lee Nobes', 'Fitness Coach', 'English', 200000, 7000000);


-- Insert data for Manchester United 2018 squad officials with manual official_id values
INSERT INTO tbl_club_officials (official_id, official_name, role_in_club, nationality, salary, release_clause)
VALUES
    (15, 'José Mourinho', 'Manager', 'Portuguese', 8000000, 15000000),
    (16, 'Michael Carrick', 'Assistant Manager', 'English', 400000, 10000000),
    (17, 'Kieran McKenna', 'Coach', 'Irish', 300000, 8000000),
    (18, 'Silvino Louro', 'Goalkeeping Coach', 'Portuguese', 300000, 9000000),
    (19, 'Emilio Álvarez Blanco', 'Goalkeeping Coach', 'Spanish', 300000, 8000000),
    (20, 'Gary Walker', 'Physiotherapist', 'English', 200000, 6000000);



-- Insert data for Arsenal 2018 squad officials with manual official_id values
INSERT INTO tbl_club_officials (official_id, official_name, role_in_club, nationality, salary, release_clause)
VALUES
    (21, 'Unai Emery', 'Manager', 'Spanish', 7000000, 12000000),
    (22, 'Juan Carlos Carcedo', 'Assistant Manager', 'Spanish', 400000, 9000000),
    (23, 'Pablo Villanueva', 'Coach', 'Spanish', 300000, 8000000),
    (24, 'Javi Garcia', 'Goalkeeping Coach', 'Spanish', 300000, 7000000),
    (25, 'Pedro Marques', 'Fitness Coach', 'Portuguese', 200000, 6000000);




-- Insert data into tbl_club
INSERT INTO tbl_club (club_id, club_name, country, city, net_worth)
VALUES
    (1, 'Liverpool FC', 'England', 'Liverpool', 1000000000),
    (2, 'Manchester City', 'England', 'Manchester', 1500000000),
    (3, 'Manchester United', 'England', 'Manchester', 1200000000),
    (4, 'Arsenal', 'England', 'London', 900000000);



-- Insert data for the tbl_league table
INSERT INTO tbl_league (league_id, season, league_name, country, prize_money, division)
VALUES
    (1, 2018, 'Premier League', 'England', 100000000, 'Division 1'),
    (1, 2019, 'Premier League', 'England', 100000000, 'Division 1'),
    (2, 2018, 'La Liga', 'Spain', 90000000, 'Division 1'),
    (3, 2018, 'Serie A', 'Italy', 80000000, 'Division 1'),
    (4, 2018, 'Bundesliga', 'Germany', 85000000, 'Division 1');




-- Insert data for the tbl_plays_in_league table for a single league
INSERT INTO tbl_plays_in_league (league_id, club_id, season)
VALUES
    (1, 1, 2018),
    (1, 2, 2018),
    (1, 3, 2018),
    (1, 4, 2018);
    




-- Insert data for club officials working for Liverpool FC
INSERT INTO tbl_works_for (club_id, official_id, start_date, end_date)
VALUES
    (1, 1, '2018-01-01', '2019-12-31'),
    (1, 2, '2018-01-01', '2019-12-31'),
    (1, 3, '2018-01-01', '2019-12-31'),
    (1, 4, '2018-01-01', '2019-12-31'),
    (1, 5, '2018-01-01', '2019-12-31'),
    (1, 6, '2018-01-01', '2019-12-31'),
    (1, 7, '2018-01-01', '2019-12-31');

-- Insert data for club officials working for Manchester City
INSERT INTO tbl_works_for (club_id, official_id, start_date, end_date)
VALUES
    (2, 8, '2018-01-01', '2019-12-31'),
    (2, 9, '2018-01-01', '2019-12-31'),
    (2, 10, '2018-01-01', '2019-12-31'),
    (2, 11, '2018-01-01', '2019-12-31'),
    (2, 12, '2018-01-01', '2019-12-31'),
    (2, 13, '2018-01-01', '2019-12-31'),
    (2, 14, '2018-01-01', '2019-12-31');

-- Insert data for club officials working for Manchester United
INSERT INTO tbl_works_for (club_id, official_id, start_date, end_date)
VALUES
    (3, 15, '2018-01-01', '2019-12-31'),
    (3, 16, '2018-01-01', '2019-12-31'),
    (3, 17, '2018-01-01', '2019-12-31'),
    (3, 18, '2018-01-01', '2019-12-31'),
    (3, 19, '2018-01-01', '2019-12-31'),
    (3, 20, '2018-01-01', '2019-12-31');

-- Insert data for club officials working for Arsenal
INSERT INTO tbl_works_for (club_id, official_id, start_date, end_date)
VALUES
    (4, 21, '2018-01-01', '2019-12-31'),
    (4, 22, '2018-01-01', '2019-12-31'),
    (4, 23, '2018-01-01', '2019-12-31'),
    (4, 24, '2018-01-01', '2019-12-31'),
    (4, 25, '2018-01-01', '2019-12-31');




-- Liverpool 2018 Squad Players
INSERT INTO tbl_players (player_id, player_name, date_of_birth, fav_position, nationality, weekly_wage, release_clause)
VALUES
    (1, 'Mohamed Salah', '1992-06-15', 'Forward', 'Egyptian', 200000, 300000000),
    (2, 'Sadio Mané', '1992-04-10', 'Forward', 'Senegalese', 180000, 250000000),
    (3, 'Roberto Firmino', '1991-10-02', 'Forward', 'Brazilian', 180000, 250000000),
    (4, 'Virgil van Dijk', '1991-07-08', 'Defender', 'Dutch', 160000, 220000000),
    (5, 'Andrew Robertson', '1994-03-11', 'Defender', 'Scottish', 150000, 210000000),
    (6, 'Alisson Becker', '1992-10-02', 'Goalkeeper', 'Brazilian', 170000, 240000000),
    (7, 'Trent Alexander-Arnold', '1998-10-07', 'Defender', 'English', 130000, 190000000),
    (8, 'Georginio Wijnaldum', '1990-11-11', 'Midfielder', 'Dutch', 140000, 200000000),
    (9, 'James Milner', '1986-01-04', 'Midfielder', 'English', 130000, 190000000),
    (10, 'Naby Keïta', '1995-02-10', 'Midfielder', 'Guinean', 150000, 210000000),
    (11, 'Jordan Henderson', '1990-06-17', 'Midfielder', 'English', 140000, 200000000),
    (12, 'Joel Matip', '1991-08-08', 'Defender', 'Cameroonian', 130000, 190000000),
    (13, 'Dejan Lovren', '1989-07-05', 'Defender', 'Croatian', 130000, 190000000),
    (14, 'Divock Origi', '1995-04-18', 'Forward', 'Belgian', 120000, 180000000),
    (15, 'Xherdan Shaqiri', '1991-10-10', 'Midfielder', 'Swiss', 140000, 200000000);



-- Manchester City 2018 Squad Players
INSERT INTO tbl_players (player_id, player_name, date_of_birth, fav_position, nationality, weekly_wage, release_clause)
VALUES
    (16, 'Sergio Aguero', '1988-06-02', 'Forward', 'Argentinian', 170000, 220000000),
    (17, 'Kevin De Bruyne', '1991-06-28', 'Midfielder', 'Belgian', 190000, 230000000),
    (18, 'Leroy Sané', '1996-01-11', 'Midfielder', 'German', 140000, 180000000),
    (19, 'Raheem Sterling', '1994-12-08', 'Forward', 'English', 160000, 210000000),
    (20, 'David Silva', '1986-01-08', 'Midfielder', 'Spanish', 150000, 200000000),
    (21, 'Bernardo Silva', '1994-08-10', 'Midfielder', 'Portuguese', 140000, 190000000),
    (22, 'Kyle Walker', '1990-05-28', 'Defender', 'English', 130000, 170000000),
    (23, 'Fernandinho', '1985-05-04', 'Midfielder', 'Brazilian', 120000, 160000000),
    (24, 'Aymeric Laporte', '1994-05-27', 'Defender', 'French', 130000, 170000000),
    (25, 'John Stones', '1994-05-28', 'Defender', 'English', 120000, 160000000),
    (26, 'Ederson Moraes', '1993-08-17', 'Goalkeeper', 'Brazilian', 120000, 160000000),
    (27, 'Riyad Mahrez', '1991-02-21', 'Midfielder', 'Algerian', 150000, 200000000),
    (28, 'Gabriel Jesus', '1997-04-03', 'Forward', 'Brazilian', 130000, 170000000),
    (29, 'Vincent Kompany', '1986-04-10', 'Defender', 'Belgian', 100000, 130000000),
    (30, 'Ilkay Gündogan', '1990-10-24', 'Midfielder', 'German', 140000, 180000000);




-- Manchester United 2018 Squad Players
INSERT INTO tbl_players (player_id, player_name, date_of_birth, fav_position, nationality, weekly_wage, release_clause)
VALUES
    (31, 'Romelu Lukaku', '1993-05-13', 'Forward', 'Belgian', 170000, 220000000),
    (32, 'Paul Pogba', '1993-03-15', 'Midfielder', 'French', 190000, 230000000),
    (33, 'David De Gea', '1990-11-07', 'Goalkeeper', 'Spanish', 150000, 200000000),
    (34, 'Anthony Martial', '1995-12-05', 'Forward', 'French', 140000, 180000000),
    (35, 'Marcus Rashford', '1997-10-31', 'Forward', 'English', 130000, 170000000),
    (36, 'Nemanja Matic', '1988-08-01', 'Midfielder', 'Serbian', 120000, 160000000),
    (37, 'Juan Mata', '1988-04-28', 'Midfielder', 'Spanish', 120000, 160000000),
    (38, 'Ander Herrera', '1989-08-14', 'Midfielder', 'Spanish', 120000, 160000000),
    (39, 'Chris Smalling', '1989-11-22', 'Defender', 'English', 100000, 130000000),
    (40, 'Victor Lindelöf', '1994-07-17', 'Defender', 'Swedish', 110000, 140000000),
    (41, 'Luke Shaw', '1995-07-12', 'Defender', 'English', 110000, 140000000),
    (42, 'Ashley Young', '1985-07-09', 'Defender', 'English', 120000, 160000000),
    (43, 'Jesse Lingard', '1992-12-15', 'Midfielder', 'English', 130000, 170000000),
    (44, 'Phil Jones', '1992-02-21', 'Defender', 'English', 100000, 130000000),
    (45, 'Andreas Pereira', '1996-01-01', 'Midfielder', 'Brazilian', 120000, 160000000);





-- Arsenal 2018 Squad Players
INSERT INTO tbl_players (player_id, player_name, date_of_birth, fav_position, nationality, weekly_wage, release_clause)
VALUES
    (46, 'Pierre-Emerick Aubameyang', '1989-06-18', 'Forward', 'Gabonese', 180000, 250000000),
    (47, 'Alexandre Lacazette', '1991-05-28', 'Forward', 'French', 160000, 230000000),
    (48, 'Mesut Özil', '1988-10-15', 'Midfielder', 'German', 170000, 240000000),
    (49, 'Hector Bellerin', '1995-03-19', 'Defender', 'Spanish', 130000, 180000000),
    (50, 'Lucas Torreira', '1996-02-11', 'Midfielder', 'Uruguayan', 120000, 170000000),
    (51, 'Granit Xhaka', '1992-09-27', 'Midfielder', 'Swiss', 140000, 210000000),
    (52, 'Bernd Leno', '1992-03-04', 'Goalkeeper', 'German', 130000, 190000000),
    (53, 'Sokratis Papastathopoulos', '1988-06-09', 'Defender', 'Greek', 120000, 170000000),
    (54, 'Shkodran Mustafi', '1992-04-17', 'Defender', 'German', 130000, 190000000),
    (55, 'Aaron Ramsey', '1990-12-26', 'Midfielder', 'Welsh', 140000, 210000000),
    (56, 'Sead Kolašinac', '1993-06-20', 'Defender', 'Bosnian', 120000, 180000000),
    (57, 'Rob Holding', '1995-09-20', 'Defender', 'English', 110000, 170000000),
    (58, 'Emiliano Martinez', '1992-09-02', 'Goalkeeper', 'Argentine', 100000, 160000000),
    (59, 'Alex Iwobi', '1996-05-03', 'Midfielder', 'Nigerian', 110000, 170000000),
    (60, 'Danny Welbeck', '1990-11-26', 'Forward', 'English', 120000, 180000000);



-- Liverpool 2018 Squad Players Playing for Liverpool
INSERT INTO tbl_plays_for (player_id, club_id, jersey_no, start_date, end_date, prev_club_id)
VALUES
    (1, 1, 10, '2018-01-01', '2023-06-30', 4),
    (2, 1, 7, '2018-01-01', '2024-06-30', NULL),
    (3, 1, 1, '2018-01-01', '2022-06-30', NULL),
    (4, 1, 11, '2018-01-01', '2025-06-30', NULL),
    (5, 1, 9, '2018-01-01', '2023-06-30', 4),
    (6, 1, 14, '2018-01-01', '2024-06-30', 2),
    (7, 1, 26, '2018-01-01', '2022-06-30', NULL),
    (8, 1, 3, '2018-01-01', '2023-06-30', NULL),
    (9, 1, 4, '2018-01-01', '2022-06-30', 2),
    (10, 1, 6, '2018-01-01', '2024-06-30', NULL),
    (11, 1, 12, '2018-01-01', '2024-06-30', 4),
    (12, 1, 2, '2018-01-01', '2025-06-30', NULL),
    (13, 1, 22, '2018-01-01', '2023-06-30', 4),
    (14, 1, 18, '2018-01-01', '2023-06-30', NULL),
    (15, 1, 20, '2018-01-01', '2024-06-30', 4);



-- Manchester City 2018 Squad Players Playing for Manchester City
INSERT INTO tbl_plays_for (player_id, club_id, jersey_no, start_date, end_date, prev_club_id)
VALUES
    (16, 2, 10, '2018-01-01', '2023-06-30', 1),
    (17, 2, 17, '2018-01-01', '2024-06-30', NULL),
    (18, 2, 19, '2018-01-01', '2022-06-30', 1),
    (19, 2, 7, '2018-01-01', '2025-06-30', NULL),
    (20, 2, 21, '2018-01-01', '2023-06-30', 4),
    (21, 2, 20, '2018-01-01', '2024-06-30',4),
    (22, 2, 2, '2018-01-01', '2022-06-30', NULL),
    (23, 2, 25, '2018-01-01', '2023-06-30', NULL),
    (24, 2, 5, '2018-01-01', '2022-06-30', NULL),
    (25, 2, 24, '2018-01-01', '2024-06-30', NULL),
    (26, 2, 31, '2018-01-01', '2025-06-30', NULL),
    (27, 2, 8, '2018-01-01', '2023-06-30', 1),
    (28, 2, 33, '2018-01-01', '2023-06-30', NULL),
    (29, 2, 30, '2018-01-01', '2024-06-30', 4),
    (30, 2, 4, '2018-01-01', '2022-06-30', NULL);



-- Manchester United 2018 Squad Players Playing for Manchester United
INSERT INTO tbl_plays_for (player_id, club_id, jersey_no, start_date, end_date, prev_club_id)
VALUES
    (31, 3, 9, '2018-01-01', '2024-06-30', NULL),
    (32, 3, 6, '2018-01-01', '2024-06-30', NULL),
    (33, 3, 1, '2018-01-01', '2024-06-30', 4),
    (34, 3, 11, '2018-01-01', '2023-06-30', NULL),
    (35, 3, 10, '2018-01-01', '2023-06-30', 4),
    (36, 3, 31, '2018-01-01', '2022-06-30', NULL),
    (37, 3, 8, '2018-01-01', '2023-06-30', NULL),
    (38, 3, 21, '2018-01-01', '2022-06-30', NULL),
    (39, 3, 12, '2018-01-01', '2022-06-30', NULL),
    (40, 3, 2, '2018-01-01', '2024-06-30', 2),
    (41, 3, 23, '2018-01-01', '2022-06-30', NULL),
    (42, 3, 18, '2018-01-01', '2024-06-30', 1),
    (43, 3, 14, '2018-01-01', '2022-06-30', NULL),
    (44, 3, 4, '2018-01-01', '2024-06-30', 4),
    (45, 3, 7, '2018-01-01', '2023-06-30', NULL);



-- Arsenal 2018 Squad Players Playing for Arsenal
INSERT INTO tbl_plays_for (player_id, club_id, jersey_no, start_date, end_date, prev_club_id)
VALUES
    (46, 4, 14, '2018-01-01', '2023-06-30', NULL),
    (47, 4, 17, '2018-01-01', '2023-06-30', NULL),
    (48, 4, 10, '2018-01-01', '2024-06-30', 2),
    (49, 4, 7, '2018-01-01', '2023-06-30', NULL),
    (50, 4, 8, '2018-01-01', '2024-06-30', 1),
    (51, 4, 19, '2018-01-01', '2023-06-30', NULL),
    (52, 4, 12, '2018-01-01', '2022-06-30', NULL),
    (53, 4, 5, '2018-01-01', '2024-06-30', NULL),
    (54, 4, 11, '2018-01-01', '2024-06-30', NULL),
    (55, 4, 18, '2018-01-01', '2023-06-30', 2),
    (56, 4, 16, '2018-01-01', '2023-06-30', NULL),
    (57, 4, 15, '2018-01-01', '2023-06-30', 3),
    (58, 4, 22, '2018-01-01', '2023-06-30', NULL),
    (59, 4, 9, '2018-01-01', '2024-06-30', NULL),
    (60, 4, 21, '2018-01-01', '2024-06-30',3);





-- Insert data for Liverpool's stadium
INSERT INTO tbl_own_stadium (club_id, stadium_id, stadium_name, location, built_date, capacity)
VALUES (1, 1, 'Anfield', 'Liverpool, England', '1884-01-01', 54074);

-- Insert data for Manchester City's stadium
INSERT INTO tbl_own_stadium (club_id, stadium_id, stadium_name, location, built_date, capacity)
VALUES (2, 1, 'Etihad Stadium', 'Manchester, England', '2003-07-25', 53097);

-- Insert data for Manchester United's stadium
INSERT INTO tbl_own_stadium (club_id, stadium_id, stadium_name, location, built_date, capacity)
VALUES (3, 1, 'Old Trafford', 'Manchester, England', '1910-02-19', 74326);

-- Insert data for Arsenal's stadium
INSERT INTO tbl_own_stadium (club_id, stadium_id, stadium_name, location, built_date, capacity)
VALUES (4, 1, 'Emirates Stadium', 'London, England', '2006-07-22', 60260);




-- Insert data for referees
INSERT INTO tbl_referee (referee_id, refreee_name, nationality)
VALUES
    (1, 'Michael Oliver', 'English'),
    (2, 'Anthony Taylor', 'English'),
    (3, 'Martin Atkinson', 'English'),
    (4, 'Kevin Friend', 'English'),
    (5, 'Paul Tierney', 'English'),
    (6, 'Craig Pawson', 'English'),
    (7, 'Chris Kavanagh', 'English'),
    (8, 'Andre Marriner', 'English'),
    (9, 'Stuart Attwell', 'English'),
    (10, 'Lee Mason', 'English');




-- Insert data for matches between the clubs in 2018
-- Assume club_id 1 is Liverpool, club_id 2 is Manchester City, club_id 3 is Manchester United, and club_id 4 is Arsenal

INSERT INTO tbl_match (match_id, match_date, match_time, home_team, away_team, spectators, ticket_price, home_score, away_score, match_status)
VALUES
    (1, '2018-01-01', '15:00:00', 1, 2, 55000, 50, 2, 1, 'finished'),
    (2, '2018-02-15', '14:30:00', 3, 4, 60000, 60, 3, 0, 'finished'),
    (3, '2018-03-10', '16:00:00', 2, 1, 52000, 55, 1, 1, 'finished'),
    (4, '2018-04-05', '15:30:00', 4, 3, 58000, 65, 0, 2, 'finished'),
    (5, '2018-05-20', '17:00:00', 1, 3, 53000, 58, 2, 1, 'finished'),
    (6, '2018-06-12', '14:45:00', 4, 2, 61000, 62, 1, 1, 'finished'),
    (7, '2018-07-07', '15:15:00', 2, 3, 54000, 54, 2, 1, 'finished'),
    (8, '2018-08-23', '17:30:00', 1, 4, 59000, 59, 2, 0, 'finished'),
    (9, '2018-09-18', '15:30:00', 3, 2, 58000, 62, 2, 2, 'finished'),
    (10, '2018-10-30', '14:45:00', 4, 1, 60000, 60, 1, 3, 'finished'),
    (11, '2018-11-25', '16:00:00', 3, 1, 54000, 56, 0, 2, 'finished'),
    (12, '2018-12-12', '15:00:00', 2, 4, 52000, 55, 2, 1, 'finished');



-- Insert upcoming matches
INSERT INTO tbl_match (match_id, match_date, match_time, home_team, away_team, spectators, ticket_price, match_status)
VALUES
    (13, '2019-01-15', '14:00:00', 1, 2, NULL, NULL, 'upcoming'),
    (14, '2019-01-20', '16:30:00', 4, 3, NULL, NULL, 'upcoming'),
    (15, '2019-03-15', '14:00:00', 1, 3, NULL, NULL, 'upcoming'),
    (16, '2019-02-20', '16:30:00', 4, 2, NULL, NULL, 'upcoming'),
    (17, '2019-02-17', '14:00:00', 1, 4, NULL, NULL, 'upcoming'),
    (18, '2019-04-20', '16:30:00', 2, 3, NULL, NULL, 'upcoming');



-- Populate the fixture table with data for all 18 matches
INSERT INTO tbl_fixture (league_id, season, match_id)
VALUES
    (1, 2018, 1),
    (1, 2018, 2),
    (1, 2018, 3),
    (1, 2018, 4),
    (1, 2018, 5),
    (1, 2018, 6),
    (1, 2018, 7),
    (1, 2018, 8),
    (1, 2018, 9),
    (1, 2018, 10),
    (1, 2018, 11),
    (1, 2018, 12),
    (1, 2019, 13),
    (1, 2019, 14),
    (1, 2019, 15),
    (1, 2018, 16),
    (1, 2019, 17),
    (1, 2019, 18);



-- Populate the tbl_employs table with data
INSERT INTO tbl_employs (league_id, season, referee_id)
VALUES
    (1, 2018, 1), 
    (1, 2018, 2), 
    (1, 2018, 3), 
    (1, 2018, 4), 
    (1, 2019, 1), 
    (1, 2019, 2), 
    (1, 2019, 3), 
    (1, 2019, 4); 




-- Populate the tbl_officiates table with data
INSERT INTO tbl_officiates (referee_id, match_id, role_in_match)
VALUES
    (1, 1, 'Referee'), -- Referee 1 officiates Match 1 as a Referee
    (2, 2, 'Referee'), -- Referee 2 officiates Match 2 as a Referee
    (3, 3, 'Referee'), -- Referee 3 officiates Match 3 as a Referee
    (4, 4, 'Referee'), -- Referee 4 officiates Match 4 as a Referee
    (1, 1, 'Assistant Referee'), -- Referee 1 officiates Match 5 as an Assistant Referee
    (2, 2, 'Assistant Referee'), -- Referee 2 officiates Match 6 as an Assistant Referee
    (3, 3, 'Assistant Referee'), -- Referee 3 officiates Match 7 as an Assistant Referee
    (4, 4, 'Assistant Referee'), -- Referee 4 officiates Match 8 as an Assistant Referee
    (1, 1, 'Linesman'), -- Referee 1 officiates Match 9 as a Linesman
    (2, 2, 'Linesman'), -- Referee 2 officiates Match 10 as a Linesman
    (3, 3, 'Linesman'), -- Referee 3 officiates Match 11 as a Linesman
    (4, 4, 'Linesman'), -- Referee 4 officiates Match 12 as a Linesman
    (1, 1, 'VAR'), -- Referee 1 officiates Match 13 as a VAR (Video Assistant Referee)
    (2, 2, 'VAR'), -- Referee 2 officiates Match 14 as a VAR (Video Assistant Referee)
    (3, 3, 'VAR'), -- Referee 3 officiates Match 15 as a VAR (Video Assistant Referee)
    (4, 4, 'VAR'); -- Referee 4 officiates Match 16 as a VAR (Video Assistant Referee)



-- Insert data into tbl_ranking for the 2018 season
-- Assuming a league with ID 1 and four clubs with IDs 1, 2, 3, and 4

-- Club 1
INSERT INTO tbl_ranking (ranking_id, league_id, season, club_id, match_played, wins, losses, draws, goals_for, goals_against)
VALUES (1, 1, 2018, 1, 6, 4, 0, 2, 12, 3);

-- Club 2
INSERT INTO tbl_ranking (ranking_id, league_id, season, club_id, match_played, wins, losses, draws, goals_for, goals_against)
VALUES (2, 1, 2018, 2, 6, 3, 1, 2, 10, 5);

-- Club 3
INSERT INTO tbl_ranking (ranking_id, league_id, season, club_id, match_played, wins, losses, draws, goals_for, goals_against)
VALUES (3, 1, 2018, 3, 6, 2, 0, 4, 5, 12);

-- Club 4
INSERT INTO tbl_ranking (ranking_id, league_id, season, club_id, match_played, wins, losses, draws, goals_for, goals_against)
VALUES (4, 1, 2018, 4, 6, 2, 2, 2, 7, 4);




-- Insert match events for Match 1
INSERT INTO tbl_match_events (match_id, player_id, type_of_events, min)
VALUES
    (1, 3, 'Goal', 8),     -- Roberto Firmino scores
    (1, 6, 'Goal', 24),    -- Alisson Becker scores
    (1, 18, 'Goal', 72),   -- Leroy Sané scores
    (1, 20, 'Assist', 8),  -- David Silva with an assist
    (1, 10, 'Assist', 24); -- Naby Keïta with an assist





-- Insert match events for Match 1
INSERT INTO tbl_match_events (match_id, player_id, type_of_events, min)
VALUES
    (1, 2, 'Goal', 15),     -- Sergio Agüero scores
    (1, 20, 'Goal', 30),    -- Kevin De Bruyne scores
    (1, 1, 'Goal', 60),     -- Mohamed Salah scores
    (1, 12, 'Goal', 85),    -- Joel Matip scores
    (1, 27, 'Yellow Card', 28), -- Yellow card for Fernandinho
    (1, 2, 'Red Card', 75),    -- Red card for Sergio Agüero
    (1, 11, 'Penalty Goal', 40),-- Penalty goal by Roberto Firmino
    (1, 1, 'Goal', 80), 
    (1, 3, 'Penalty Goal', 70);  -- Penalty goal by Sadio Mané

-- Insert match events for Match 2
INSERT INTO tbl_match_events (match_id, player_id, type_of_events, min)
VALUES
    (2, 44, 'Goal', 10),    -- Anthony Martial scores
    (2, 47, 'Goal', 40),    -- Pierre-Emerick Aubameyang scores
    (2, 31, 'Yellow Card', 20), -- Yellow card for Nemanja Matic
    (2, 16, 'Goal', 55),    -- Sergio Agüero scores
    (2, 47, 'Penalty Goal', 60), -- Penalty goal by Pierre-Emerick Aubameyang
    (2, 18, 'Red Card', 80);   -- Red card for Aaron Ramsey




-- Insert match events for Match 3
INSERT INTO tbl_match_events (match_id, player_id, type_of_events, min)
VALUES
    (3, 12, 'Goal', 32),    -- Joel Matip scores
    (3, 19, 'Goal', 75),    -- Raheem Sterling scores
    (3, 1, 'Goal', 82),     -- Mohamed Salah scores
    (3, 10, 'Assist', 32),  -- Naby Keïta with an assist
    (3, 17, 'Assist', 75);  -- Kevin De Bruyne with an assist




-- Insert match events for Match 4
INSERT INTO tbl_match_events (match_id, player_id, type_of_events, min)
VALUES
    (4, 46, 'Goal', 18),    -- Pierre-Emerick Aubameyang scores
    (4, 34, 'Goal', 55),    -- Anthony Martial scores
    (4, 38, 'Goal', 68),     -- Ander Herrera scores
    (4, 16, 'Assist', 18),  -- Sergio Aguero with an assist
    (4, 36, 'Assist', 55);  -- Nemanja Matic with an assist




-- Insert match events for Match 5
INSERT INTO tbl_match_events (match_id, player_id, type_of_events, min)
VALUES
    (5, 1, 'Goal', 10),     -- Mohamed Salah scores
    (5, 35, 'Goal', 32),    -- Marcus Rashford scores
    (5, 3, 'Goal', 60),     -- Roberto Firmino scores
    (5, 38, 'Assist', 10),  -- Ander Herrera with an assist
    (5, 33, 'Assist', 32);  -- David De Gea with an assist


