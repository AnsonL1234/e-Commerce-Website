use ecommerce;

INSERT INTO User (UserID, username, password, first_name, last_name, balance, email_address) VALUES
(1,  'anson99', 'pass123', 'Anson', 'Ling', 500, 'anson@mail.com'),
(2, 'sarah_s', 'pass123', 'Sarah', 'Smith', 820, 'sarah@mail.com'),
(3, 'mike_w', 'pass123', 'Mike', 'Wong', 300, 'mike@mail.com'),
(4, 'jenny_l', 'pass123', 'Jenny', 'Lee', 1000, 'jenny@mail.com');

INSERT INTO Item
    (ItemID, BuyerID, SellerID, item_images, title, description, quantity, price, categorise)
VALUES
    (10, NULL, 1, 'img/item10.png', 'Gaming Mouse',
     'High precision wireless mouse', 10, 35, 'Electronics'),
    (11, NULL, 1, 'img/item11.png', 'Mechanical Keyboard',
     'RGB backlit mechanical keyboard', 1, 80, 'Bid'),
    (12, NULL, 1, 'img/item12.png', 'USB-C Hub',
     '7-in-1 USB hub for laptops', 10, 25, 'Accessories'),
    (13, NULL, 1, 'img/item13.png', 'Wireless Earbuds',
     'Noise cancelling earbuds', 10, 50, 'Electronics'),
    (14, NULL, 1, 'img/item14.png', 'Laptop Stand',
     'Adjustable aluminium laptop stand', 10, 30, 'Accessories'),
    (15, NULL, 1, 'img/item15.png', 'Portable SSD',
     '1TB high-speed portable SSD', 10, 120, 'Storage'),

    (16, NULL, 2, 'img/item16.png', 'Smartwatch',
     'Smartwatch with fitness tracking', 10, 150, 'Wearables'),
    (17, NULL, 2, 'img/item17.png', 'Bluetooth Speaker',
     'Portable bluetooth speaker', 10, 60, 'Audio'),
    (18, NULL, 2, 'img/item18.png', 'Desk Lamp',
     'LED desk lamp with dimmer', 10, 20, 'Home'),
    (19, NULL, 2, 'img/item19.png', 'Drawing Tablet',
     'Digital drawing tablet for artists', 1, 220, 'Bid'),
    (20, NULL, 2, 'img/item20.png', 'Fitness Band',
     'Activity and sleep tracking band', 10, 45, 'Wearables'),
    (21, NULL, 2, 'img/item21.png', 'Wireless Charger',
     'Fast wireless charging pad', 10, 35, 'Accessories'),

    (22, NULL, 3, 'img/item22.png', 'Running Shoes',
     'Lightweight running shoes', 10, 75, 'Sports'),
    (23, NULL, 3, 'img/item23.png', 'Hoodie',
     'Warm fleece hoodie', 10, 35, 'Clothing'),
    (24, NULL, 3, 'img/item24.png', 'Backpack',
     'Durable everyday backpack', 1, 50, 'Bid'),
    (25, NULL, 3, 'img/item25.png', 'Baseball Cap',
     'Adjustable baseball cap', 10, 15, 'Clothing'),
    (26, NULL, 3, 'img/item26.png', 'Water Bottle',
     'Insulated stainless steel water bottle', 10, 12, 'Sports'),
    (27, NULL, 3, 'img/item27.png', 'Gloves',
     'Lightweight cycling gloves', 10, 18, 'Accessories'),

    (28, NULL, 4, 'img/item28.png', 'Kitchen Knife Set',
     'Stainless steel kitchen knife set', 10, 90, 'Kitchen'),
    (29, NULL, 4, 'img/item29.png', 'Air Fryer',
     'Digital air fryer', 10, 130, 'Kitchen'),
    (30, NULL, 4, 'img/item30.png', 'Coffee Grinder',
     'Electric burr coffee grinder', 10, 40, 'Kitchen'),
    (31, NULL, 4, 'img/item31.png', 'Blender',
     'High power blender for smoothies', 1, 100, 'Bid'),
    (32, NULL, 4, 'img/item32.png', 'Cookware Set',
     'Non-stick cookware set', 10, 150, 'Kitchen'),
    (33, NULL, 4, 'img/item33.png', 'Cutting Board',
     'Bamboo cutting board', 10, 20, 'Kitchen');

