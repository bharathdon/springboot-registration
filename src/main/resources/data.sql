insert 
    into 
       ecommercedb.user
        (last_updated,email, enabled, first_name, last_name, password, role) 
    values
        (NOW(),'abc@gmail.com', true, 'bharath', 'kumar', '123', 'role_admin');