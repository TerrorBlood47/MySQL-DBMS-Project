create database db_Mens_Football_Leagues_Club_Management_System;

use db_Mens_Football_Leagues_Club_Management_System;

create table tbl_club
(
    club_id INT,
    club_name VARCHAR(200),
    country VARCHAR(200),
    city VARCHAR(200),
    net_worth INT,

    CONSTRAINT pk_club PRIMARY KEY(club_id)

);

create table tbl_league
(
    league_id INT,
    season YEAR,
    league_name VARCHAR(200),
    country VARCHAR(200),
    prize_money INT,
    division VARCHAR(200),

    CONSTRAINT pk_league PRIMARY KEY(league_id, season)

);

create table tbl_plays_in_league
(
    league_id INT,
    club_id INT,
    season YEAR,

    CONSTRAINT pk_plays_in_league PRIMARY KEY(league_id,club_id,season),
    CONSTRAINT fk_plays_in_ref_league FOREIGN KEY (league_id,season) REFERENCES tbl_league(league_id,season),
    CONSTRAINT fk_plays_in_ref_club FOREIGN KEY(club_id) REFERENCES tbl_club(club_id)
);

create table tbl_club_officials
(
    official_id INT,
    official_name VARCHAR(200),
    role_in_club VARCHAR(200),
    nationality VARCHAR(200),
    salary INT,
    release_clause INT,

    CONSTRAINT pk_club_offcials PRIMARY KEY(official_id)
);

create table tbl_works_for
(
    club_id INT,
    official_id INT,
    start_date DATE,
    end_date DATE,

    CONSTRAINT pk_works_for PRIMARY KEY(club_id, official_id,start_date),
    CONSTRAINT fk_works_ref_club FOREIGN KEY(club_id) REFERENCES tbl_club(club_id),
    CONSTRAINT fk_works_ref_officials FOREIGN KEY(official_id) REFERENCES tbl_club_officials(official_id)
    
);


create table tbl_players
(
    player_id INT,
    player_name VARCHAR(200),
    date_of_birth DATE,
    fav_position VARCHAR(200),
    nationality VARCHAR(200),
    weekly_wage INT,
    release_clause INT,

    CONSTRAINT pk_players PRIMARY KEY(player_id)
    
);

create table tbl_personal_trainers
(
    player_id INT,
    official_id INT,
    start_date DATE,
    end_date DATE,

    CONSTRAINT pk_personal_trainer PRIMARY KEY (player_id, official_id, start_date),
    CONSTRAINT fk_per_trainer_ref_player FOREIGN KEY(player_id)  REFERENCES tbl_players(player_id),
    CONSTRAINT fk_per_trainer_ref_officials FOREIGN KEY(official_id) REFERENCES tbl_club_officials(official_id)
);

create table tbl_plays_for
(
    player_id INT,
    club_id INT,
    jersey_no INT,
    start_date DATE NOT NULL,
    end_date DATE,
    prev_club_id INT,

    CONSTRAINT pk_plays_for PRIMARY KEY(player_id,club_id,jersey_no,start_date),
    CONSTRAINT fk_plays_for_ref_players FOREIGN KEY(player_id) REFERENCES tbl_players(player_id),
    CONSTRAINT fk_plays_for_ref_club FOREIGN KEY(club_id) REFERENCES tbl_club(club_id)
);



create table tbl_own_stadium
(
    club_id INT,
    stadium_id INT,
    stadium_name VARCHAR(200),
    location VARCHAR(200),
    built_date DATE,
    capacity INT,

    CONSTRAINT pk_own_stadium PRIMARY KEY(club_id,stadium_id),
    CONSTRAINT fk_ownstadium_ref_club FOREIGN KEY(club_id) REFERENCES tbl_club(club_id)

);

create table tbl_referee
(
    referee_id INT,
    refreee_name VARCHAR(200),
    nationality VARCHAR(200),

    CONSTRAINT pk_referee PRIMARY KEY(referee_id)
    
);

create table tbl_match
(
    match_id INT,
    match_date DATE NOT NULL,
    match_time TIME NOT NULL,
    home_team INT NOT NULL,
    away_team INT NOT NULL,
    spectators INT,
    ticket_price INT,
    home_score INT,
    away_score INT,
    match_status ENUM('finished', 'disrupted', 'upcoming'),

    CONSTRAINT pk_match PRIMARY KEY(match_id),
    CONSTRAINT fk_match_ref_home_club FOREIGN KEY(home_team) REFERENCES tbl_club(club_id),
    CONSTRAINT fk_match_ref_away_club FOREIGN KEY(away_team) REFERENCES tbl_club(club_id),
    CONSTRAINT chk_match_status CHECK (match_status IN ('finished', 'disrupted', 'upcoming')),
   CONSTRAINT unique_match_date_time UNIQUE (match_date, match_time)
);

create table tbl_match_events
(
     match_id INT,
     player_id INT,
     type_of_events VARCHAR(200),
     min INT,

     CONSTRAINT pk_match_events PRIMARY KEY(match_id,player_id,type_of_events,min),
     CONSTRAINT fk_match_events_ref_player FOREIGN KEY(player_id) REFERENCES tbl_players(player_id),
     CONSTRAINT fk_match_events_ref_match FOREIGN KEY(match_id) REFERENCES tbl_match(match_id)

);


create table fixture
(
    league_id INT,
    season YEAR,
    match_id INT,

    CONSTRAINT pk_fixture PRIMARY KEY(league_id, match_id,season),
    CONSTRAINT fk_fixture_ref_league FOREIGN KEY(league_id,season) REFERENCES tbl_league(league_id,season),
    CONSTRAINT fk_fixture_ref_match FOREIGN KEY(match_id) REFERENCES tbl_match(match_id)
);

create table tbl_employs
(
    league_id INT,
    season YEAR,
    referee_id INT,

    CONSTRAINT pk_employs PRIMARY KEY (league_id,season,referee_id),
    CONSTRAINT fk_employs_ref_league FOREIGN KEY(league_id,season) REFERENCES tbl_league(league_id,season),
    CONSTRAINT fk_employs_ref_referee FOREIGN KEY(referee_id) REFERENCES tbl_referee(referee_id)

);

create table tbl_officiates
(
    referee_id INT,
    match_id INT,
    role_in_match ENUM('Referee', 'Assistant Referee', 'Linesman', 'VAR'),

    CONSTRAINT pk_offciates PRIMARY KEY(referee_id,match_id),
    CONSTRAINT fk_officiates_ref_referee FOREIGN KEY(referee_id) REFERENCES tbl_referee(referee_id),
    CONSTRAINT fk_officiates_ref_match FOREIGN KEY(match_id) REFERENCES tbl_match(match_id),
    CONSTRAINT chk_role_referee_officiates CHECK(role_in_match in ('Referee', 'Assistant Referee', 'Linesman', 'VAR'))
);

create table tbl_ranking
(
    ranking_id INT,
    league_id INT,
    season YEAR,
    club_id INT,

    match_played INT,
    wins INT,
    losses INT,
    draws INT,
    goals_for INT,
    goals_against INT,
    
    CONSTRAINT pk_ranking PRIMARY KEY(ranking_id,league_id,season,club_id),
    CONSTRAINT fk_ranking_ref_league FOREIGN KEY(league_id,season) REFERENCES tbl_league(league_id,season),
    CONSTRAINT fk_ranking_ref_club FOREIGN KEY(club_id) REFERENCES tbl_club(club_id)
);