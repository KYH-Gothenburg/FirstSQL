USE MyDB;

CREATE TABLE users(
	user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL,
    email VARCHAR(250),
    phone VARCHAR(50)
);

CREATE TABLE dogs(
	dog_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_name VARCHAR(150) NOT NULL,
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES users(user_id)
);


INSERT INTO users(first_name, last_name, email, phone)
VALUES
('Jane', 'Smith', 'jane@email.com', '123123123'),
('Pete', 'Jones', 'pete@email.com', '321321321'),
('Bob', 'Anderson', 'bob@email.com', '43242432');


INSERT INTO dogs(dog_name, owner_id)
VALUES
('Kiwi', 1),
('Plutten', 1),
('Barker', 2),
('Flash', null);



SELECT * FROM dogs;

SELECT u.first_name, u.last_name, d.dog_name FROM users u
JOIN dogs d ON d.owner_id=u.user_id;


DROP TABLE dogs;