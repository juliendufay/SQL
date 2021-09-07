Create ROLE 'r_gescom_afpa_marketing'@'localhost'

Grant SELECT, INSERT, UPDATE, DELETE 
ON gescom_afpa.products
TO 'r_gescom_marketing'@'localhost'

Grant SELECT, INSERT, UPDATE, DELETE 
on gescom_afpa.categories 
to 'r_gescom_marketing'@'localhost'

Grant SELECT 
on gescom_afpa.orders_details
to 'r_gescom_marketing'@'localhost'

Grant SELECT 
on gescom_afpa.orders
to 'r_gescom_marketing'@'localhost'

Grant SELECT 
on  gescom_afpa.customers
to 'r_gescom_marketing'@'localhost'
