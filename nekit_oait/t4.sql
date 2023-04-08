/* Вывести всех режиссеров, которые сняли фильмы, участие в которых принимал Роберт Де Ниро до 2021 года */



with t2 as (
select film.mov_id from actor
	
	join acting on 
	acting.act_id = actor.act_id
	join film 
	on film.mov_id = actor.act_id
	
	where act_name = 'Robert De Niro' and release_date <= '2021-01-01'
	
	)

select dir_name from create_

join director
on director.dir_id = create_.dir_id
where mov_id in (select * from t2)


