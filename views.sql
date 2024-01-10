use db_Mens_Football_Leagues_Club_Management_System;

drop view if exists point_table_premier_league_view;
create view point_table_premier_league_view as
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



drop view if exists top_scorer_2018_view;
create view top_scorer_2018_view as
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
    on p.player_id = c.player_id;
    