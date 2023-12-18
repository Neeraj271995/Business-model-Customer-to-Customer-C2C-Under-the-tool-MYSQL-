-- PROJECT 1-- 

-- Question No 1
create database ecommerce;
use ecommerce;
desc users_data;

-- Question No 3
USE ecommerce;
DESC users_data;
SELECT*FROM
users_data;

-- Question 4
SELECT
*
FROM
users_data
LIMIT 100;

-- Question No 5
SELECT
COUNT(DISTINCT country) Country,
count(DISTINCT language) Language
FROM USERS_data;

-- Question No 6
SELECT
gender, MAX(socialNbFollowers) Max_Followers
FROM
users_data
GROUP BY gender;

-- Question No 7
SELECT count(hasProfilePicture) FROM users_data WHERE hasProfilePicture = 'True';
SELECT count(*) FROM users_data WHERE hasAnyApp = 'True';
SELECT count(hasAndroidApp) FROM users_data WHERE hasAndroidApp = 'True';
SELECT count(hasiosApp) FROM users_data WHERE hasiosApp = 'True';

-- Question No 8
SELECT country, count(productsBought)
FROM users_data WHERE productsBought!=0
GROUP BY Country
ORDER BY COUNT(productsBought) DESC;

-- Question No 9
SELECT DISTINCT country, count(productsSold)
FROM users_data WHERE productsSold!=0
GROUP BY Country
ORDER BY COUNT(productsSold) DESC;

-- Question No 10
SELECT DISTINCT country, MAX(productsPassRate)
FROM users_data WHERE productsPassRate!=0
GROUP BY Country
ORDER BY MAX(productsPassRate) DESC
LIMIT 10;

-- Question No 11
SELECT COUNT(language),language
FROM users_data 
GROUP BY language;

-- Question No 12
SELECT COUNT(productsWished)
FROM users_data 
WHERE (gender = 'F' AND productsWished > 0)
UNION SELECT 
COUNT(SocialproductsLiked)
FROM users_data
WHERE (gender = 'F' AND productsWished > 0);

-- Question No 13
SELECT COUNT(productsBought)
FROM users_data
WHERE (gender = 'M' AND productsBought > 0)
UNION SELECT 
COUNT(productsSold)
FROM users_data
WHERE (gender = 'M' AND productsSold > 0);

-- Question No 14
SELECT country,COUNT(productsBought)
FROM users_data
GROUP BY country
ORDER BY COUNT(productsBought) DESC;

-- Question No 15
SELECT country, SUM(productsSold) Sellers
FROM users_data
GROUP BY country
ORDER BY SUM(productsSold) 
LIMIT 10;

-- Question No 16
SELECT * FROM users_data
ORDER BY daysSinceLastLogin
LIMIT 110;

-- Question No 17
SELECT COUNT(gender) Female
FROM users_data
WHERE gender = 'F'
AND daysSinceLastLogin > 100;

-- Question No 18
SELECT country, COUNT(gender) Female
FROM users_data
WHERE gender = 'F' AND hasAnyApp = 'True'
GROUP BY country;

-- Question No 19
SELECT country, COUNT(gender) male
FROM users_data
WHERE gender = 'M' AND hasAnyApp = 'True'
GROUP BY country;

-- Question No 20
SELECT
AVG(productsSold) Products_Sold,
AVG(productsBought) Products_Bought
FROM
users_data
WHERE
gender = 'M'
GROUP BY country;