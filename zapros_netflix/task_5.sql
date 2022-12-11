/* Вывести 5 юзеров из США, которые посмотрели больше всего фильмов, произведенных в Японии */

select user_.user_id,count(*) from user_ 

join watch
on watch.user_id = user_.user_id

join film
on film.mov_id = watch.mov_id

where country_of_origin = 'Japan' and country = 'United States'

group by user_.user_id

order by count desc
limit 5