
CREATE USER 'developer' IDENTIFIED BY 'password123';

GRANT SELECT, INSERT ON company_db.employees TO 'developer';

REVOKE INSERT ON company_db.employees FROM 'developer';

