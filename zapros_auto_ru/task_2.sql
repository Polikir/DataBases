/* Вывести id 10 самых быстрых машин с цветом «phantom black» */

select "ID ТС", "Разгон" from "ТС"
join "Цвет"
on "Цвет"."Id цвета" = "ТС"."Id цвета"
join "Разгон"
on "Разгон"."Id разгона" = "ТС"."Id разгона"

where "Цвет"."Цвет" = 'phantom black'

order by "Разгон"."Разгон"
limit 10