INSERT INTO Roles (role_name) VALUES ('Admin');
INSERT INTO Roles (role_name) VALUES ('Regular User');
INSERT INTO Roles (role_name) VALUES ('Artist');

INSERT INTO Categories (category_name) VALUES ('Sculptures');

INSERT INTO Users (username, email, password_hash, role_id) 
VALUES ('Sarthak', 'Sarthak@okay.com', 'hashed_password', 2);

INSERT INTO Artists (artist_name, bio, contact_info) 
VALUES ('John Wick', 'A passionate artist specializing in abstract art.', 'contact@johnwick.com');

INSERT INTO Artifacts (name, description, price, auction_end_date, artist_id, category_id) 
VALUES ('Sculpture X', 'An elegant marble sculpture depicting human emotions.', 500.00, '2023-09-30 18:00:00', 1, 1);

INSERT INTO Auctions (start_date, end_date, artifact_id) 
VALUES ('2023-09-25 18:00:00', '2023-09-30 18:00:00', 1);

INSERT INTO Bids (bid_amount, bid_timestamp, bidder_id, artifact_id) 
VALUES (600.00, '2023-09-29 10:00:00', 1, 1);


UPDATE Artists SET bio = 'An accomplished sculptor with a passion for intricate designs.' WHERE artist_id = 1;

UPDATE Artifacts SET price = 600.00 WHERE artifact_id = 1;

UPDATE Bids SET bid_amount = 650.00 WHERE bid_id = 1;

SELECT * FROM Roles;
SELECT * FROM Categories;
SELECT * FROM Users;
SELECT * FROM Artists;
SELECT * FROM Artifacts;
SELECT * FROM Auctions;
SELECT * FROM Bids;


DELETE FROM Auctions WHERE auction_id = 1;

DELETE FROM Bids WHERE bid_id = 1;

