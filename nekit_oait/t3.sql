/*
Вывести 5 самых титулованных режиссеров, наградой «BAFTA»
*/

with t1 as (select dir_id,count(*) as cou_awa_b from award
join have
on have.award_id = award.award_id
where award_name = 'BAFTA'
group by dir_id
order by cou_awa_b desc
limit 5
)

select * from t1

join director
on director.dir_id = t1.dir_id