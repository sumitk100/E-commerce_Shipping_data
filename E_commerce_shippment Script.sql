CREATE DATABASE e_commerce_shippment ;
 
USE e_commerce_shippment;

SELECT * FROM delivery ;
 
 SELECT  Warehouse_block , sum(cost_of_the_product) as total_cost
 from delivery 
 group by warehouse_block 
 order by cost_of_the_product desc ;
 
 select count(*) as numberofcustomers 
 from delivery ;
 
 select count(id) as numberofcustomers
 from delivery ;
 
 select gender , count(*) as numberofcusttomers
 from delivery 
 group by gender ;
 
 SELECT COUNT(*) AS NO_OF_CUSTOMERS , Customer_rating
 FROM delivery
 group by Customer_rating
 order by Customer_rating asc;
 
 SELECT mode_of_shipment , SUM(cost_of_the_product)  as total_cost 
 FROM delivery 
 group by mode_of_shipment 
 order by cost_of_the_product desc ;
 

select count(customer_care_calls) as total_calls
from delivery ;
 
 select Mode_of_Shipment  ,sum(Weight_in_gms) as total_weight
 from delivery 
 group by Mode_of_Shipment 
 order by sum(Weight_in_gms) desc   ;

SELECT SUM(Customer_care_calls) AS Total_enquiry 
from delivery ;
 
 
 
 
 select customer_rating ,  case 
 when customer_rating >3 then "reached on time" 
 when customer_rating =3 then " delivered"
 when customer_rating <3 then "very late delivery "
 end  as review
 from delivery
 GROUP BY CUSTOMER_RATING
 ORDER BY CUSTOMER_RATING ASC;
 
 
 SELECT max(weight_in_gms) as maximum_weight ,min(weight_in_gms) as  minimum_weight
 from delivery ;
 
 SELECT MAX(Discount_offered) as max_dis_given , min(discount_offered) as min_dis_given 
 from delivery ;
 

 
 select     product_importance, sum(cost_of_the_product) as total_cost 
 from delivery 
 group by product_importance ;
 

select count(Customer_care_calls)
from delivery ;


alter table delivery change ï»¿ID     id int ;
select * from delivery ;


SELECT Product_importance , customer_rating
from delivery 
where product_importance = "high"  and customer_rating = 5 ;


