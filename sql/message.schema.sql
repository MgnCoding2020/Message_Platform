-- Start up for Database

DROP DATABASE IF EXISTS message;
CREATE DATABASE message;
USE message;

CREATE TABLE messages_signup (
name_id INT AUTO_INCREMENT NOT NULL,
first_name VARCHAR(200),
last_name VARCHAR(200),
email_id VARCHAR(200) NOT NULL,
password VARCHAR(200),
INDEX fk_group (email_id) VISIBLE,
PRIMARY KEY (name_id, email_id)
);

CREATE TABLE messages_login (
login_id INT NOT NULL PRIMARY KEY,
password  VARCHAR(200) NOT NULL,
email_id VARCHAR(200) NOT NULL,
CONSTRAINT  fk_group FOREIGN KEY (email_id)
REFERENCES messages_signup (email_id)
);