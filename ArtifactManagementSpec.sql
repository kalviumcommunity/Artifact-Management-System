SELECT a.name AS artifact_name, ar.artist_name, c.category_name
FROM Artifacts a
JOIN Artists ar ON a.artist_id = ar.artist_id
JOIN Categories c ON a.category_id = c.category_id;

SELECT c.category_name, COUNT(a.artifact_id) AS artifact_count
FROM Artifacts a
JOIN Categories c ON a.category_id = c.category_id
GROUP BY c.category_name;

SELECT u.username, r.role_name
FROM Users u
JOIN Bids b ON u.user_id = b.bidder_id
JOIN Roles r ON u.role_id = r.role_id;

SELECT a.name AS artifact_name, ar.artist_name
FROM Artifacts a
JOIN Artists ar ON a.artist_id = ar.artist_id
WHERE a.artifact_id NOT IN (SELECT artifact_id FROM Bids);


SELECT a.name AS artifact_name, ar.artist_name
FROM Artifacts a
INNER JOIN Artists ar ON a.artist_id = ar.artist_id;

SELECT b.bid_id, u.username, a.name AS artifact_name, b.bid_amount
FROM Bids b
LEFT JOIN Users u ON b.bidder_id = u.user_id
JOIN Artifacts a ON b.artifact_id = a.artifact_id;

SELECT auc.auction_id, a.name AS artifact_name, c.category_name
FROM Auctions auc
INNER JOIN Artifacts a ON auc.artifact_id = a.artifact_id
RIGHT JOIN Categories c ON a.category_id = c.category_id;
