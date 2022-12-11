/* Вывести самый старый фильм выпущенный в Индии с возрастным ограничением 12 */

select film_name from film
where age_limit = 12 and country_of_origin = 'India'
order by released_data 
limit 1 