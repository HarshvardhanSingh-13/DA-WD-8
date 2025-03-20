-- Create the 'gfg' database if not exists
drop database if exists gfg;
CREATE DATABASE IF NOT EXISTS gfg;

CREATE TABLE IF NOT EXISTS gfg.users (
    user_id INT ,
    username VARCHAR(255),
    email VARCHAR(255) default 'abc@gmail.com',
    age INT,
    city VARCHAR(255));
    
use gfg;
   
INSERT INTO users (user_id, username, email, age, city) VALUES
    (1, 'user1', 'user1@example.com', 25, 'City1');
    
INSERT INTO users (user_id, username, email, age, city) VALUES
    (2, 'user2', 'user2@example.com', 26, 'City2');

INSERT INTO users (user_id, username, age, city) VALUES
    (3, 'user2', 27, 'City2');
    
SELECT * from users;

INSERT INTO users (user_id, username, email, age, city) VALUES
    (1, 'user1', 'user1@example.com', 25, 'City1'),
    (2, 'user2', 'user2@example.com', 30, 'City2'),
    (3, 'user3', 'user3@example.com', 22, 'City3'),
    (4, 'user4', 'user4@example.com', 28, 'City4'),
    (5, 'user5', 'user5@example.com', 35, 'City5');
    
SELECT * FROM gfg.users;