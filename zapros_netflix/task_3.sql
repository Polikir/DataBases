/* Вывести 5 самых титулованных режиссеров, наградой «BAFTA» */

select dir_name,count(*) from director
join having_
on director.prod_id = having_.prod_id
join director_awards
on having_.awards_id = director_awards.awards_id
where awards_name = 'BAFTA'
group by dir_name
order by count desc
limit 5
