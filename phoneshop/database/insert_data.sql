INSERT INTO `account`(`email`, `address`, `name`, `password`, `phone`, `role`)
VALUES ('caovy2001@gmail.com', 'Quang Binh', 'Cao Dinh Sy Vy', '123456', '0987654321', 'Admin');

INSERT INTO `product`(`name`, `description`, `price`, `img_source`, `type`, `brand`)
VALUES ('Product 1', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE1', 'BRAND3'),
       ('Product 2', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE2', 'BRAND2'),
       ('Product 3', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE3', 'BRAND1'),
       ('Product 4', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE4', 'BRAND2'),
       ('Product 5', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE3', 'BRAND3'),
       ('Product 6', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE2', 'BRAND4'),
       ('Product 7', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE1', 'BRAND3'),
       ('Product 8', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE2', 'BRAND2'),
       ('Product 9', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE3', 'BRAND1'),
       ('Product 10', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE4', 'BRAND2'),
       ('Product 11', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE3', 'BRAND3'),
       ('Product 12', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE2', 'BRAND4'),
       ('Product 13', 'This is description, This is description, This is description', 3400000,
        '/resources/home/0010687nokiax68gb1.png', 'TYPE1', 'BRAND1');

INSERT INTO `orders`(`status`, `date`, `address`, `user_email`, `description`, `total`)
VALUES ('0', '2001-04-20', 'Quang Binh', 'caovy2001@gmail.com', 'This is description', 0);


INSERT INTO `order_item`(`quantity`, `subtotal`, `order_id`, `product_id`)
VALUES (3, '7500000', 1, 2),
       (4, '7500000', 1, 1),
       (5, '7500000', 1, 3),
       (1, '7500000', 1, 4),
       (2, '7500000', 1, 5),
       (3, '7500000', 1, 6),
       (4, '7500000', 1, 7),
       (3, '7500000', 1, 9);