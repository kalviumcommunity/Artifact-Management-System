CREATE ROLE Admin;
CREATE ROLE RegularUser;
CREATE ROLE Artist;


GRANT ALL PRIVILEGES ON  ArtifactManagement TO Admin;


GRANT SELECT ON Artifacts TO RegularUser;

GRANT SELECT, INSERT ON Bids TO RegularUser;



GRANT SELECT, INSERT, DELETE ON Artifacts TO Artist;


REVOKE SELECT, INSERT ON Bids FROM RegularUser;

REVOKE SELECT, INSERT, DELETE ON Artifacts FROM Artist;












