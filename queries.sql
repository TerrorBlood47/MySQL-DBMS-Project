use db_Mens_Football_Leagues_Club_Management_System;


/*1. Retrieve total revenue generated by each club in 2018 by selling ticket*/
/*
with club_rev as
    (select home_team as club_id, spectators*ticket_price as revenue
    from tbl_match
    where spectators is not NULL and ticket_price is not NULL),
    total_sale as
    (
        select club_id, sum(revenue) as total_reveue
        from club_rev 
        group by club_id
    )
select c.club_name, t.total_reveue
from total_sale as t join tbl_club as c
on t.club_id = c.club_id;
*/


/*2.the ranking of the table for Premier League in 2018*/
/*
with premier_league as(
    select c.club_name, match_played, wins, losses, draws, goals_for, goals_against , (goals_for-goals_against) as goal_diff
    ,(wins*3 + draws*1) as points, (wins*3 + draws*1) + (goals_for-goals_against) as hidden_pts
    from tbl_ranking as r, tbl_club as c
    where r.league_id = (select distinct league_id from tbl_league where league_name="Premier League" and season = '2018')
        and r.club_id = c.club_id
    
)
select club_name, match_played, wins, losses, draws, goals_for, goals_against ,  goal_diff
    , points 
from premier_league 
order by points desc, goal_diff asc;
*/

/*
3. Retrieve Officials Working for a Club and Their Role*/
/*
select c.club_name, o.official_name, o.role_in_club
from tbl_club as c
join  tbl_works_for as w on c.club_id = w.club_id
join tbl_club_officials as o on w.official_id = o.official_id
where c.club_name = 'Liverpool FC';
*/
/*
4. number of goals by penalties in a 2018 season
*/
/*
select count(distinct concat(match_id,player_id,min) ) as pernalties_count
from tbl_match_events
where match_id in (select distinct match_id from tbl_fixture where season = '2018')
and type_of_events like "%Penalty%" and type_of_events not like "%miss%";
*/

/*
5. number of red cards from every club in 2018
*/
/*
with red_table as (
    select player_id, count(concat(match_id,player_id)) as red_card_count
    from tbl_match_events as me 
    where type_of_events like '%Penalty%' and match_id in (select distinct match_id from tbl_match where  
    match_date between '2018-01-01' and '2018-12-31')
    group by player_id
),
red_clubs as (
    select c.club_id, sum(red_card_count) as total_red_cnt
    from tbl_plays_for as c, red_table as r
    where c.player_id = r.player_id
    group by c.club_id
)
select club_name, COALESCE(total_red_cnt, 0) as total_red_cnt
from tbl_club as c
left outer join 
red_clubs as r
on c.club_id = r.club_id;
*/

/*6. the relegated clubs(last 2) from 2018 Premier League*/
/*
with premier_league as(
    select c.club_name, match_played, wins, losses, draws, goals_for, goals_against , (goals_for-goals_against) as goal_diff
    ,(wins*3 + draws*1) as points, (wins*3 + draws*1) + (goals_for-goals_against) as hidden_pts
    from tbl_ranking as r, tbl_club as c
    where r.league_id = (select distinct league_id from tbl_league where league_name="Premier League" and season = '2018')
        and r.club_id = c.club_id
    
),
revered_ranked_premier_league as(
    select club_name, match_played, wins, losses, draws, goals_for, goals_against, goal_diff, points
    from premier_league 
    order by points asc, goal_diff desc
)
select * from
revered_ranked_premier_league
order by points asc
limit 2; 
*/

/*7. top 2 Scorers */
/*
with candidates as (
    select player_id , count( player_id) as goals
    from tbl_match_events
    where type_of_events like "%Goal%" and match_id in (select distinct match_id from tbl_fixture
                                                            where season = '2018')
    group by player_id
    order by goals desc
)
select player_name , goals
from tbl_players  p
right outer join 
candidates c 
on p.player_id = c.player_id
limit 2;
*/








