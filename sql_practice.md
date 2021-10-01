### В созданной БД:
- добавьте в таблицу users колонку phone_number (int)


    ALTER TABLE users ADD COLUMN phone_number INT;


- поменяйте тип данных в таблице users колонка phone_number с int на varchar

    ALTER TABLE users ALTER COLUMN phone_number TYPE VARCHAR(255);

- в таблице products увеличьте цену в 2 раза

    UPDATE products SET price = price*2;

- Вывести:
    1. всех юзеров

        SELECT * FROM users;
    
    2. все продукты

        SELECT * FROM products;

    3. все статусы заказов

        SELECT * FROM order_status;

- Вывести заказы, которые успешно доставлены и оплачены

    SELECT orders.order_id FROM orders JOIN order_status ON orders.order_status_order_status_id = order_status.order_status_id WHERE order_status.status_name = 'Paid' OR order_status.status_name = 'Accepted';

- Вывести: (если задание можно решить несколькими способами, указывай все)
    1. продукты, цена которых больше 80.00 и меньше или равно 150.00

        SELECT * FROM products WHERE price BETWEEN 80 AND 150;

    2. заказы совершенные после 01.10.2020 (поле created_at)

        SELECT * FROM orders WHERE created_at > '01.10.2020';
    
    3. заказы полученные за первое полугодие 2020 года

        SELECT * FROM orders WHERE created_at BETWEEN '01.01.2020' AND '06.30.2020';

    4. подукты следующих категорий Category 7, Category 11, Category 18

        SELECT * FROM products WHERE categories_category_id = 7 OR categories_category_id = 11 OR categories_category_id = 18;
    
    5. незавершенные заказы по состоянию на 31.12.2020

        SELECT * FROM orders JOIN order_status ON
        orders.order_status_order_status_id =  order_status.order_status_id WHERE order_status.status_name = 'In progress' AND orders.updated_at < '12.31.2020';

    6. вывести все корзины, которые были созданы, но заказ так и не был оформлен.

        SELECT carts.cart_id FROM carts 
        JOIN orders ON carts.cart_id = orders.carts_cart_id
        JOIN order_status ON orders.order_status_order_status_id= order_status.
        order_status_id
        WHERE order_status.status_name = 'Canceled';
- Вывести:
    1. среднюю сумму всех завершенных сделок

        SELECT AVG(total) FROM orders JOIN order_status ON orders.order_status_order_status_id = order_status.order_status_id GROUP BY order_status.status_name HAVING order_status.status_name = 'Finished';

    2. вывести максимальную сумму сделки за 3 квартал 2020

        