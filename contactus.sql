CREATE DATABASE IF NOT EXISTS contact;
USE contact;
CREATE TABLE contacts(
UserName VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
Message VARCHAR(500) );
INSERT INTO contact(UserName,Email,Message)
VALUES("abc","ab@c","awsome"); 
INSERT INTO contact(UserName,Email,Message)
VALUES("xyz","xy@c","delecious"); 
INSERT INTO contact(UserName,Email,Message)
VALUES("pqr","pq@c","superb"); 
INSERT INTO contact(UserName,Email,Message)
VALUES("lmn","lm@c","awsome"); 
SELECT * FROM contact;
select UserName from contacts;