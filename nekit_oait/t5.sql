/* Вывести 5 юзеров из США, которые посмотрели больше всего фильмов, произведенных в Японии */

with t1 as (
select mov_id from film
where country_of_origin = 'Japan'
),

t2 as (
select user_id from watch

where mov_id in (select * from t1)
)
select login from t2
join user_
on user_.user_id = t2.user_id

where country = 'United States'