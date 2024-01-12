.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest HAVING COUNT(*) = 1;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color FROM students AS a, students AS b
    WHERE a.time < b.time AND a.pet = b.pet AND a.song = b.song;


CREATE TABLE sevens AS
  SELECT s.seven FROM students AS s, numbers AS n
    WHERE s.number = 7 AND n."7" = "True" AND s.time = n.time;


CREATE TABLE average_prices AS
  SELECT category, SUM(MSRP) / COUNT(category) AS average_price FROM products GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, MIN(price) AS price FROM inventory GROUP BY item;


CREATE TABLE best_deal AS
  SELECT name, MIN(MSRP / rating) AS deal FROM products GROUP BY category;


CREATE TABLE shopping_list AS
  SELECT name, store FROM best_deal, lowest_prices WHERE name = item;


CREATE TABLE total_bandwidth AS
  SELECT SUM(Mbs) FROM stores AS st, shopping_list AS sl WHERE st.store = sl.store;

