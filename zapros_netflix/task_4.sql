/* Вывести всех режиссеров, которые сняли фильмы, участие в которых принимал Роберт Де Ниро до 2021 года */
with table_ptr as 
( 
select acting.mov_id as movid,film_name from actor
join acting
on actor.act_id = acting.act_id
left join film 
on acting.mov_id = film.mov_id
where act_name = 'Robert De Niro' and released_data < '2021-01-01'
)
select dir_name from table_ptr

join create1 
on create1.mov_id  = table_ptr.movid

join director
on director.prod_id = create1.prod_id