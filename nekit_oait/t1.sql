/*
Найти пользователей, которые оставили наибольшее количество отзы- вов под фильмами с участием Роберта де Ниро в фильмах жанра Драма

*/

with t1 as (
select mov_id from genre

join belong
	on genre.g_id = belong.g_id
	
where upper(g_name) like upper('%drama%')
)
,
t2 as (
select mov_id from actor
	
	join acting on 
	acting.act_id = actor.act_id
where act_name = 'Robert De Niro')

, good_films as (
	
select film.mov_id from film

join t1 
on t1.mov_id = film.mov_id

join t2
on t2.mov_id = film.mov_id

), t3
as (
select user_id,count(*) as cou_rev from review

join good_films
on review.mov_id = good_films.mov_id

group by user_id
	)
	
select * from user_
where user_id in (select user_id from t3
				  where cou_rev in (select max(cou_rev) from t3)
				  )