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
