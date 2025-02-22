CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

INSERT INTO Categories (category_name) VALUES
('Electronics'),
('Home Appliances'),
('Furniture');



CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2),
    stock_quantity INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Products (name, description, price, stock_quantity, category_id) VALUES
('Wireless Headphones', 'Experience high-quality sound without wires.', 59.99, 150, 1),
('Smartphone X200', 'Latest smartphone with advanced features.', 699.99, 80, 1),
('Bluetooth Speaker', 'Portable speaker with exceptional audio clarity.', 49.99, 200, 1),
('Laptop Pro 15', 'Powerful laptop for professionals and creatives.', 1299.99, 50, 1),
('Tablet S10', 'Sleek tablet for work and play.', 399.99, 120, 1),
('Smartwatch Series 5', 'Keep track of your fitness and notifications.', 199.99, 180, 1),
('Gaming Console Z', 'Next-gen gaming console with stunning graphics.', 499.99, 60, 1),
('Digital Camera 3000', 'Capture every moment in high resolution.', 549.99, 40, 1),
('LED TV 42"', 'Crystal clear display with smart features.', 399.99, 70, 1),
('Portable Charger 10000mAh', 'Never run out of battery on the go.', 29.99, 300, 1),
('Fitness Tracker Band', 'Monitor your health and activity levels.', 39.99, 250, 1),
('Action Camera GoPro', 'Record adventures in high definition.', 299.99, 80, 1),
('E-reader Kindle Lite', 'Lightweight e-reader for book lovers.', 89.99, 150, 1),
('VR Headset V1', 'Step into a virtual world of entertainment.', 349.99, 65, 1),
('Drone QuadCopter', 'Fly high with this easy-to-use drone.', 499.99, 35, 1),
('Wireless Mouse', 'Ergonomic design for smooth navigation.', 19.99, 400, 1),
('Ergonomic Keyboard', 'Designed for comfort and efficiency.', 49.99, 300, 1),
('27" Monitor', 'Ultra HD monitor for crisp visuals.', 229.99, 75, 1),
('External Hard Drive 1TB', 'Store all your files securely.', 79.99, 150, 1),
('USB Flash Drive 64GB', 'Compact and fast data transfer.', 14.99, 500, 1),
('Coffee Maker BrewMaster', 'Brew your perfect cup every morning.', 89.99, 100, 2),
('Air Fryer XL', 'Enjoy healthy fried foods with less oil.', 129.99, 90, 2),
('High-Speed Blender', 'Blend smoothies and soups effortlessly.', 99.99, 80, 2),
('4-Slice Toaster', 'Evenly toasted bread every time.', 39.99, 120, 2),
('Microwave Oven 900W', 'Quick and efficient heating.', 149.99, 70, 2),
('Refrigerator FrostFree', 'Spacious and energy-efficient design.', 899.99, 30, 2),
('Washing Machine 7kg', 'Advanced cleaning technology for your clothes.', 499.99, 40, 2),
('Dryer Pro 6kg', 'Efficient drying for all your laundry needs.', 399.99, 45, 2),
('Robot Vacuum Cleaner', 'Automate your cleaning with smart technology.', 299.99, 60, 2),
('Air Purifier Plus', 'Keep your indoor air clean and fresh.', 199.99, 50, 2),
('Desk Lamp LED', 'Brighten up your workspace with energy-efficient lighting.', 29.99, 200, 3),
('Ergonomic Chair', 'Comfortable seating for long hours at your desk.', 149.99, 75, 3),
('Office Desk Modern', 'Sleek design to boost your productivity.', 249.99, 40, 3),
('Bookshelf Classic', 'Organize your books in style.', 119.99, 60, 3),
('Comfortable Sofa', 'Relax in comfort with this plush sofa.', 699.99, 20, 3),
('Dining Table Set', 'Elegant dining experience for your home.', 499.99, 25, 3),
('Queen Bed Frame', 'Sturdy bed frame for a restful sleep.', 299.99, 35, 3),
('Memory Foam Mattress', 'Experience ultimate comfort and support.', 399.99, 50, 3),
('Spacious Wardrobe', 'Ample storage space for your clothes.', 349.99, 30, 3),
('Glass Coffee Table', 'Modern design for your living room.', 199.99, 40, 3),
('Modern TV Stand', 'Sleek stand to complement your entertainment area.', 149.99, 55, 3),
('Area Rug Oriental', 'Add warmth and style to any room.', 129.99, 65, 3),
('Curtains Blackout', 'Block out light for a peaceful sleep.', 79.99, 80, 3),
('Floor Lamp Contemporary', 'Illuminate your space with modern style.', 89.99, 70, 3),
('Wall Clock Vintage', 'Classic design to enhance your decor.', 39.99, 100, 3),
('Picture Frame Set', 'Display your memories elegantly.', 49.99, 150, 3),
('Indoor Plant Ficus', 'Bring a touch of nature indoors.', 24.99, 120, 3),
('Decorative Vase', 'Stylish vase for your favorite flowers.', 34.99, 90, 3),
('Throw Pillow', 'Add a pop of color and comfort to your room.', 19.99, 200, 3),
('Bluetooth Earbuds', 'Enjoy high-quality sound in a compact design.', 59.99, 250, 1);



CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(255)
);

INSERT INTO Customers (name, email, address) VALUES
('Alice Smith', 'alice.smith@example.com', '123 Maple St, Springfield, IL'),
('Bob Johnson', 'bob.johnson@example.com', '456 Oak Ave, Columbus, OH'),
('Carol Williams', 'carol.williams@example.com', '789 Pine Rd, Austin, TX'),
('David Brown', 'david.brown@example.com', '101 Cedar Blvd, Portland, OR'),
('Evelyn Jones', 'evelyn.jones@example.com', '202 Birch Ln, Denver, CO'),
('Frank Garcia', 'frank.garcia@example.com', '303 Walnut St, Seattle, WA'),
('Grace Miller', 'grace.miller@example.com', '404 Cherry Ct, Boston, MA'),
('Hank Davis', 'hank.davis@example.com', '505 Elm Dr, Atlanta, GA'),
('Ivy Rodriguez', 'ivy.rodriguez@example.com', '606 Willow Ave, Miami, FL'),
('Jack Martinez', 'jack.martinez@example.com', '707 Spruce St, San Francisco, CA'),
('Kathy Hernandez', 'kathy.hernandez@example.com', '808 Aspen Rd, Chicago, IL'),
('Larry Lopez', 'larry.lopez@example.com', '909 Hickory Ln, Dallas, TX'),
('Megan Gonzalez', 'megan.gonzalez@example.com', '111 Poplar Ave, Phoenix, AZ'),
('Nathan Wilson', 'nathan.wilson@example.com', '222 Sycamore St, Las Vegas, NV'),
('Olivia Anderson', 'olivia.anderson@example.com', '333 Magnolia Blvd, Orlando, FL'),
('Peter Thomas', 'peter.thomas@example.com', '444 Cypress Ct, Raleigh, NC'),
('Queenie Taylor', 'queenie.taylor@example.com', '555 Redwood Dr, Sacramento, CA'),
('Ryan Moore', 'ryan.moore@example.com', '666 Sequoia Ave, Tampa, FL'),
('Sara Jackson', 'sara.jackson@example.com', '777 Palm St, New Orleans, LA'),
('Tom Martin', 'tom.martin@example.com', '888 Fir Rd, Kansas City, MO'),
('Uma Lee', 'uma.lee@example.com', '999 Olive Ln, Indianapolis, IN'),
('Victor Perez', 'victor.perez@example.com', '121 Chestnut St, Detroit, MI'),
('Wendy Thompson', 'wendy.thompson@example.com', '232 Spruce Ave, Cleveland, OH'),
('Xavier White', 'xavier.white@example.com', '343 Willow Ct, Milwaukee, WI'),
('Yvonne Harris', 'yvonne.harris@example.com', '454 Pine St, St. Louis, MO'),
('Zachary Clark', 'zachary.clark@example.com', '565 Cedar Dr, Charlotte, NC'),
('Aaron Lewis', 'aaron.lewis@example.com', '676 Birch Rd, Nashville, TN'),
('Bella Robinson', 'bella.robinson@example.com', '787 Oak Ln, Salt Lake City, UT'),
('Charlie Walker', 'charlie.walker@example.com', '898 Maple Ave, Richmond, VA'),
('Diana Young', 'diana.young@example.com', '1010 Elm Ct, Columbus, GA'),
('Ethan Allen', 'ethan.allen@example.com', '1111 Aspen Blvd, Oklahoma City, OK'),
('Fiona King', 'fiona.king@example.com', '1212 Hickory Rd, Louisville, KY'),
('George Wright', 'george.wright@example.com', '1313 Poplar Ln, Cincinnati, OH'),
('Hannah Scott', 'hannah.scott@example.com', '1414 Sycamore Ave, Memphis, TN'),
('Ian Torres', 'ian.torres@example.com', '1515 Magnolia St, Jacksonville, FL'),
('Julia Nguyen', 'julia.nguyen@example.com', '1616 Cypress Rd, San Diego, CA'),
('Kevin Hill', 'kevin.hill@example.com', '1717 Redwood Ave, Boulder, CO'),
('Laura Adams', 'laura.adams@example.com', '1818 Sequoia St, Henderson, NV'),
('Michael Baker', 'michael.baker@example.com', '1919 Palm Rd, Fort Lauderdale, FL'),
('Natalie Nelson', 'natalie.nelson@example.com', '2020 Fir Ave, Cambridge, MA'),
('Oscar Carter', 'oscar.carter@example.com', '2121 Olive Ct, Chicago, IL'),
('Patricia Mitchell', 'patricia.mitchell@example.com', '2222 Chestnut Rd, Detroit, MI'),
('Quentin Perez', 'quentin.perez@example.com', '2323 Spruce Ln, Cleveland, OH'),
('Rebecca Roberts', 'rebecca.roberts@example.com', '2424 Willow St, Milwaukee, WI'),
('Steven Turner', 'steven.turner@example.com', '2525 Pine Blvd, St. Louis, MO'),
('Theresa Phillips', 'theresa.phillips@example.com', '2626 Cedar Ct, Charlotte, NC'),
('Ulysses Campbell', 'ulysses.campbell@example.com', '2727 Birch Ave, Nashville, TN'),
('Vanessa Parker', 'vanessa.parker@example.com', '2828 Oak Rd, Salt Lake City, UT'),
('William Evans', 'william.evans@example.com', '2929 Maple Ln, Richmond, VA'),
('Xena Edwards', 'xena.edwards@example.com', '3030 Elm Ave, Columbus, GA');



CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, order_date, total_amount, status) VALUES
(1, '2025-02-01', 249.99, 'Completed'),
(2, '2025-02-02', 129.99, 'Pending'),
(3, '2025-02-03', 399.99, 'Shipped'),
(4, '2025-02-04', 549.99, 'Completed'),
(5, '2025-02-05', 89.99, 'Cancelled'),
(6, '2025-02-06', 299.99, 'Completed'),
(7, '2025-02-07', 499.99, 'Pending'),
(8, '2025-02-08', 139.99, 'Completed'),
(9, '2025-02-09', 219.99, 'Shipped'),
(10, '2025-02-10', 329.99, 'Completed'),
(11, '2025-02-11', 189.99, 'Completed'),
(12, '2025-02-12', 259.99, 'Pending'),
(13, '2025-02-13', 319.99, 'Shipped'),
(14, '2025-02-14', 279.99, 'Completed'),
(15, '2025-02-15', 399.99, 'Completed'),
(16, '2025-02-16', 149.99, 'Pending'),
(17, '2025-02-17', 229.99, 'Shipped'),
(18, '2025-02-18', 309.99, 'Completed'),
(19, '2025-02-19', 199.99, 'Completed'),
(20, '2025-02-20', 269.99, 'Pending'),
(21, '2025-02-21', 159.99, 'Completed'),
(22, '2025-02-22', 179.99, 'Shipped'),
(23, '2025-02-23', 139.99, 'Completed'),
(24, '2025-02-24', 119.99, 'Cancelled'),
(25, '2025-02-25', 209.99, 'Completed'),
(26, '2025-02-26', 189.99, 'Pending'),
(27, '2025-02-27', 249.99, 'Completed'),
(28, '2025-02-28', 159.99, 'Shipped'),
(29, '2025-03-01', 279.99, 'Completed'),
(30, '2025-03-02', 349.99, 'Completed'),
(31, '2025-03-03', 419.99, 'Pending'),
(32, '2025-03-04', 489.99, 'Completed'),
(33, '2025-03-05', 559.99, 'Shipped'),
(34, '2025-03-06', 629.99, 'Completed'),
(35, '2025-03-07', 699.99, 'Completed'),
(36, '2025-03-08', 769.99, 'Pending'),
(37, '2025-03-09', 839.99, 'Completed'),
(38, '2025-03-10', 909.99, 'Shipped'),
(39, '2025-03-11', 979.99, 'Completed'),
(40, '2025-03-12', 1049.99, 'Completed'),
(41, '2025-03-13', 1119.99, 'Pending'),
(42, '2025-03-14', 1189.99, 'Completed'),
(43, '2025-03-15', 1259.99, 'Shipped'),
(44, '2025-03-16', 1329.99, 'Completed'),
(45, '2025-03-17', 1399.99, 'Completed'),
(46, '2025-03-18', 1469.99, 'Pending'),
(47, '2025-03-19', 1539.99, 'Completed'),
(48, '2025-03-20', 1609.99, 'Shipped'),
(49, '2025-03-21', 1679.99, 'Completed'),
(50, '2025-03-22', 1749.99, 'Completed');

CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO OrderItems (order_id, product_id, quantity, price) VALUES
(1, 1, 2, 59.99),
(2, 2, 1, 699.99),
(3, 3, 2, 49.99),
(4, 4, 1, 1299.99),
(5, 5, 1, 399.99),
(6, 6, 2, 199.99),
(7, 7, 1, 499.99),
(8, 8, 1, 549.99),
(9, 9, 1, 399.99),
(10, 10, 3, 29.99),
(11, 11, 2, 39.99),
(12, 12, 1, 299.99),
(13, 13, 1, 89.99),
(14, 14, 1, 349.99),
(15, 15, 1, 499.99),
(16, 16, 2, 19.99),
(17, 17, 1, 49.99),
(18, 18, 1, 229.99),
(19, 19, 2, 79.99),
(20, 20, 3, 14.99),
(21, 21, 1, 89.99),
(22, 22, 1, 129.99),
(23, 23, 1, 99.99),
(24, 24, 2, 39.99),
(25, 25, 1, 149.99),
(26, 26, 1, 899.99),
(27, 27, 1, 499.99),
(28, 28, 1, 399.99),
(29, 29, 1, 299.99),
(30, 30, 1, 199.99),
(31, 31, 2, 29.99),
(32, 32, 1, 149.99),
(33, 33, 1, 249.99),
(34, 34, 1, 119.99),
(35, 35, 1, 699.99),
(36, 36, 1, 499.99),
(37, 37, 1, 299.99),
(38, 38, 1, 399.99),
(39, 39, 1, 349.99),
(40, 40, 1, 199.99),
(41, 41, 1, 149.99),
(42, 42, 1, 129.99),
(43, 43, 1, 79.99),
(44, 44, 1, 89.99),
(45, 45, 1, 39.99),
(46, 46, 1, 49.99),
(47, 47, 1, 24.99),
(48, 48, 1, 34.99),
(49, 49, 1, 19.99),
(50, 50, 1, 59.99);

CREATE TABLE Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT,
    review_text TEXT,
    review_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Reviews (product_id, customer_id, rating, review_text, review_date) VALUES
(1, 1, 5, 'Amazing sound quality and battery life!', '2025-03-01'),
(2, 2, 4, 'The smartphone is very responsive and sleek.', '2025-03-02'),
(3, 3, 5, 'Great speaker for outdoor use.', '2025-03-03'),
(4, 4, 4, 'Powerful laptop, but a bit heavy.', '2025-03-04'),
(5, 5, 3, 'Tablet works well, but the screen could be brighter.', '2025-03-05'),
(6, 6, 5, 'Loving the smartwatch features and design.', '2025-03-06'),
(7, 7, 4, 'Console provides hours of fun.', '2025-03-07'),
(8, 8, 3, 'Camera quality is decent for its price.', '2025-03-08'),
(9, 9, 5, 'TV has vibrant colors and clear picture.', '2025-03-09'),
(10, 10, 4, 'Charger is compact and fast.', '2025-03-10'),
(11, 11, 4, 'Fitness tracker is accurate and easy to use.', '2025-03-11'),
(12, 12, 5, 'Action camera is perfect for adventures.', '2025-03-12'),
(13, 13, 4, 'E-reader is lightweight and user-friendly.', '2025-03-13'),
(14, 14, 3, 'VR headset is immersive, but could be more comfortable.', '2025-03-14'),
(15, 15, 5, 'Drone offers excellent stability and control.', '2025-03-15'),
(16, 16, 4, 'Mouse is responsive with a smooth design.', '2025-03-16'),
(17, 17, 4, 'Keyboard is very comfortable for long use.', '2025-03-17'),
(18, 18, 5, 'Monitor displays vibrant and sharp images.', '2025-03-18'),
(19, 19, 4, 'External drive is reliable and fast.', '2025-03-19'),
(20, 20, 4, 'Flash drive is quick and durable.', '2025-03-20'),
(21, 21, 5, 'Coffee maker brews a perfect cup every time.', '2025-03-21'),
(22, 22, 5, 'Air fryer is efficient and easy to clean.', '2025-03-22'),
(23, 23, 4, 'Blender works great for smoothies.', '2025-03-23'),
(24, 24, 3, 'Toaster could toast more evenly.', '2025-03-24'),
(25, 25, 4, 'Microwave heats food quickly.', '2025-03-25'),
(26, 26, 5, 'Refrigerator is spacious and quiet.', '2025-03-26'),
(27, 27, 4, 'Washing machine cleans clothes thoroughly.', '2025-03-27'),
(28, 28, 4, 'Dryer is energy-efficient and quiet.', '2025-03-28'),
(29, 29, 5, 'Robot vacuum does a great job on all surfaces.', '2025-03-29'),
(30, 30, 4, 'Air purifier significantly improves air quality.', '2025-03-30'),
(31, 31, 5, 'Desk lamp brightens up my workspace perfectly.', '2025-03-31'),
(32, 32, 4, 'Chair is very comfortable for long working hours.', '2025-04-01'),
(33, 33, 5, 'Desk has a modern look and is very functional.', '2025-04-02'),
(34, 34, 4, 'Bookshelf is sturdy and well-designed.', '2025-04-03'),
(35, 35, 5, 'Sofa is incredibly comfortable and stylish.', '2025-04-04'),
(36, 36, 4, 'Dining table set is perfect for family meals.', '2025-04-05'),
(37, 37, 4, 'Bed frame is solid and easy to assemble.', '2025-04-06'),
(38, 38, 5, 'Mattress offers great support and comfort.', '2025-04-07'),
(39, 39, 4, 'Wardrobe provides ample storage.', '2025-04-08'),
(40, 40, 5, 'Coffee table adds a modern touch to my living room.', '2025-04-09'),
(41, 41, 4, 'TV stand is both stylish and practical.', '2025-04-10'),
(42, 42, 5, 'Area rug has vibrant colors and soft texture.', '2025-04-11'),
(43, 43, 4, 'Curtains block out light effectively.', '2025-04-12'),
(44, 44, 4, 'Floor lamp provides excellent ambient lighting.', '2025-04-13'),
(45, 45, 5, 'Wall clock is a charming decorative piece.', '2025-04-14'),
(46, 46, 4, 'Picture frame set beautifully displays my photos.', '2025-04-15'),
(47, 47, 5, 'Indoor plant adds a refreshing touch to my home.', '2025-04-16'),
(48, 48, 4, 'Decorative vase is a lovely accent piece.', '2025-04-17'),
(49, 49, 5, 'Throw pillow is soft and adds color to the room.', '2025-04-18'),
(50, 50, 4, 'Bluetooth earbuds deliver great sound quality.', '2025-04-19');


SELECT
ord.order_id AS `Order ID`,
ord.customer_id AS `Customer ID`,
ord.order_date AS `Order date`,
ord.total_amount AS `Total Amount`,
ord.status AS `Order Status`,
itm.order_item_id AS `Order Item ID`,
itm.product_id AS `Product ID`,
itm.quantity AS `quantity`,
itm.price AS `Price`
FROM orderitems AS itm
JOIN orders AS ord
ON itm.order_id = ord.order_id;

CREATE Table `Sales Per Category` AS
SELECT 
  c.category_name AS 'Category Name', 
  SUM(oi.quantity * oi.price) AS 'Total Sales'
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY SUM(oi.quantity * oi.price) DESC;

CREATE TABLE `Top 5 product by sales` AS
SELECT 
  p.name AS 'Product Name', 
  SUM(oi.quantity * oi.price) AS 'Total Sales'
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_id, p.name
ORDER BY SUM(oi.quantity * oi.price) DESC
LIMIT 5;

CREATE TABLE `Order details` AS
SELECT 
  o.order_id AS 'Order ID',
  o.customer_id AS 'Customer ID',
  o.order_date AS 'Order Date',
  o.total_amount AS 'Total Amount',
  o.status AS 'Order Status',
  (SELECT SUM(oi.quantity) 
   FROM OrderItems oi 
   WHERE oi.order_id = o.order_id) AS 'Total Items'
FROM Orders o
ORDER BY o.order_date DESC;

CREATE TABLE `Customer Order Summary` AS
SELECT 
  c.customer_id AS 'Customer ID',
  c.name AS 'Customer Name',
  c.email AS 'Customer Email',
  COUNT(o.order_id) AS 'Total Orders',
  (SELECT MAX(o2.order_date) 
   FROM Orders o2 
   WHERE o2.customer_id = c.customer_id) AS 'Last Order Date'
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name, c.email
ORDER BY c.name;

CREATE TABLE `Product reviews` AS 
SELECT 
  p.product_id AS 'Product ID',
  p.name AS 'Product Name',
  AVG(r.rating) AS 'Average Rating',
  COUNT(r.review_id) AS 'Total Reviews'
FROM Reviews r
JOIN Products p ON r.product_id = p.product_id
GROUP BY p.product_id, p.name
ORDER BY AVG(r.rating) DESC;

CREATE TABLE `DB` AS
SELECT 
  o.order_id AS 'Order ID',
  o.order_date AS 'Order Date',
  cst.name AS 'Customer Name',
  p.name AS 'Product Name',
  cat.category_name AS 'Category',
  oi.quantity AS 'Quantity',
  oi.price AS 'Price',
  (oi.quantity * oi.price) AS 'Line Total'
FROM Orders o
JOIN Customers cst ON o.customer_id = cst.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories cat ON p.category_id = cat.category_id
ORDER BY o.order_date DESC;
