/* 

Для режиссеров, имеющих самое большое количество наград, вывести средний хронометраж фильмов вышедших после 2015

*/


with t1 as (select dir_id,count(*) as co_awa from award
join have
on have.award_id = award.award_id
group by dir_id)
,
t2 as ( select dir_id from t1
where co_awa = (select max(co_awa) from t1)
),
t3 as 
( select mov_id from create_
  where dir_id = (select * from t2)
)

--select dir_id from t1
--where co_awa = (select max(co_awa) from t1)
select avg(timing_minutes) from film
join timing
on timing.timing_id = film.timing_id
where release_date >= '2016-01-01' and mov_id in (select * from t3)
