drop trigger if exists trig
go


create trigger trig
	on tariff
	instead of insert 
as
SET NOCOUNT ON	
insert into tariff select inserted.tariff_id, inserted.tariff_title, inserted.servises_id, inserted.price, inserted.period 
					   from inserted inner join (select servises_id, Max(price) as price1 
												 from TARIFF 
												 group by servises_id)t1 
					   on t1.servises_id=inserted.servises_id 
					   where inserted.price<t1.price1

INSERT INTO TARIFF VALUES
(111, 'AAA', 150, 999, 3),
(222, 'BBB', 150, 8000, 24)

SELECT * FROM TARIFF

DELETE FROM TARIFF WHERE tariff_title='AAA'
