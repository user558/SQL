--Создание и использование представлений
drop view if exists view_1
go

create view view_1 as
(
select
type, weight, Customers_goods.first_name as first_name, Customers_goods.last_name as last_name, departure , arrival
from 
Goods 
INNER JOIN Customers_goods
on Goods.customer_id=Customers_goods.customer_id
INNER JOIN ROUTE_LIST
on ROUTE_LIST.sheet_number=Goods.sheet_number
)
go

select v.last_name,v.first_name,v.weight,v.type,g.sheet_number from 
goods as g,view_1 as v,Customers_goods as c 
where c.last_name=v.last_name 
AND c.first_name=v.first_name 
AND c.customer_id=g.customer_id 
AND v.weight>5





drop view if exists view_2
go

create view view_2 as 
(SELECT  
   s.ship_id,
   o.last_name as owner,
   c.surname as captain,
   sum(DATEDIFF(hour,departure, arrival)) as diff 
from 
   ROUTE_LIST as rl
INNER JOIN ship as s 
   on s.ship_id=rl.ship_id
INNER JOIN owners as o
   on o.owners_id=s.owners_id
INNER JOIN captains as c 
   on c.captain_id=s.captain_id
group by s.ship_id,o.last_name,c.surname
)
go

select * from view_2
order by diff




drop view if exists view_3
go

create view view_3 as
 (
 SELECT sum(weight) as SUM,goods.sheet_number as sheet,departure as date from GOODS
   inner join 
     ROUTE_LIST as rl on Goods.sheet_number = rl.sheet_number
   inner join 
     Route as r on rl.route_id = r.route_id
   inner join
     Ports as p on r.departure_port_code=p.port_id
   where 
     r.departure_port_code=(select port_id from ports as p inner join city as c on p.city_id=c.city_id  where city = 'Bar')
   group by 
     departure,goods.sheet_number
  )
  go
   
select (((select cast((count(SUM) from view_3) as DEC(5,2)))/(select count(weight) from goods))*100) as count
select (((select count(sum) from view_3)/(select count(weight) from goods))*100) as count

drop view if exists view_4
go
create view view_4 as
(select
  TOP 99 PERCENT e.last_name as employee_last_name,
  e.first_name as employee_first_name,
  j.job,
  o.last_name as owner_last_name,
  s.name as ship_name from
  employee as e 
  INNER JOIN jobs as j on j.job_id=e.job_id
  INNER JOIN ship as s on e.ship_id=s.ship_id
  INNER JOIN owners as o on o.owners_id=s.owners_id
  order by e.last_name
  )
  go
