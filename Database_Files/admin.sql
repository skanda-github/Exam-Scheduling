CREATE TABLE Admin (
   id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
   username varchar(50) NOT NULL,
   password varchar(255) NOT NULL,
   email varchar(100) NOT NULL
);

INSERT INTO Admin (id, username, password, email) VALUES (1, 'test', 'test', 'test@test.com');