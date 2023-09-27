select * from shipping_info;
select ps.shipping_info_id, si.shipping_driver, 
count(ps.product_shipping_id) 
from product_shipping ps join shipping_info si
on ps.shipping_info_id = si.shipping_info_id
group by ps.shipping_info_id, si.shipping_driver
order by count(ps.product_shipping_id) desc;
select * from product;

select p.product_name, 
count(ps.product_shipping_id) 
from product_shipping ps join product p
on ps.product_id = p.product_id
group by p.product_name
order by count(ps.product_shipping_id) desc
limit 10;
select * from product;

select * from product where product_id 
not in (select distinct product_id from product_shipping); 

SELECT cast(to_char(('2023-07-14 10:30:00')::TIMESTAMP,'yyyymmdd') as BigInt);

Select * from shipping_info;

create or replace function set_shipment_id(shipment_date TIMESTAMP, product_id int) 
returns BigInt 
language plpgsql 
as $$ declare shipment_id BigInt;
begin   
SELECT 
cast(concat(cast(to_char((shipment_date)::TIMESTAMP,'yyyymmdd') as BigInt), lpad(product_id::text,3,'0')) as BigInt) into shipment_id;
return shipment_id;
end;
$$;
select set_shipment_id('2023-05-01 10:00:00',1);
DROP FUNCTION set_shipment_id(timestamp without time zone,integer)



00 23 * * *  pg_dump postgres > postgres_backup.sql




select * from product_shipping;
CREATE PROCEDURE createShipment 
AS INSERT INTO product_shipping DEFAULT VALUES
GO;
\d product_shipping;

 
values ()

create or replace procedure create_shipment() 
language plpgsql as $$
begin 
insert into product_shipping DEFAULT VALUES;
end; $$
call create_shipment();
select * from product_shipping;

select ps.shipping_info_id, si.shipping_driver, 
count(ps.product_shipping_id) 
from product_shipping ps join shipping_info si
on ps.shipping_info_id = si.shipping_info_id
group by ps.shipping_info_id, si.shipping_driver
order by count(ps.product_shipping_id) desc;

select ps.shipping_info_id, si.shipping_driver, 
count(ps.product_shipping_id) 
from product_shipping ps join shipping_info si
on ps.shipping_info_id = si.shipping_info_id
group by ps.shipping_info_id, si.shipping_driver
order by count(ps.product_shipping_id) desc;


select * from product where product_id not in (select distinct product_id from product_shipping);

Select * from product_shipping;
select * from product where product_id not in (select distinct product_id from product_shipping);
SELECT * 
FROM 
    Product_Shipping
WHERE 
    Delivery_Time_Id IS NULL;


SELECT 
    p.Product_Name,
    ps.*
FROM 
    Product p
LEFT JOIN 
    Product_Shipping ps ON p.Product_ID = ps.Product_ID
WHERE 
    Delivery_Time IS NULL
ORDER BY 
    p.Product_Name;
	
SELECT p.Product_Name
FROM 
    Product p
LEFT JOIN 
    Product_Shipping ps ON p.Product_ID = ps.Product_ID
WHERE 
    Delivery_Time IS NULL
ORDER BY 
    p.Product_Name;

SELECT
    p.Product_Name,
    ps.*
FROM
    Product p
LEFT JOIN
    Product_Shipping ps ON p.Product_ID = ps.Product_ID
WHERE
    ps.Delivery_Time IS NULL;
