/* Вывести 5 последних фильмов начинающихся на «N» */
select * from film
where film_name like 'N%'
order by released_data
limit 5