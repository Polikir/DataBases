/* Среди пользователей, которые 
отправили наибольшее количество сообщений, 
выбрать самого младшего и для него вывести 
разность между самым старым и самым новым выставленным им автомобилем.*/

with mes_count as (select "Id пользователя",count(*) from "Сообщение"
group by "Id пользователя"
order by "count" desc),

one_user as (
select "Пользователь"."Id пользователя" as "user_id" from mes_count

join "Пользователь"
on mes_count."Id пользователя" = "Пользователь"."Id пользователя"
where "count" = (select max("count") from mes_count)

order by "Дата Рождения"
limit 1)

select  max("Год Выпуска") - min("Год Выпуска") as diff from one_user

join "Объявление"
on "Объявление"."Id пользователя" = one_user.user_id

join "ТС"
on "Объявление"."ID ТС" = "ТС"."ID ТС"

join "Год выпуска"
on "Год выпуска"."Id года выпуска" = "ТС"."Id года выпуска"