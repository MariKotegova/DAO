select product_name from product.ORDERS
                             inner join product.CUSTOMERS
                                        on orders.customer_id = customers.id
where upper(name)  = :name;