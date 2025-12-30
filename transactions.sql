BEGIN;

INSERT INTO apps VALUES
(5, 'NotePro', 'Productivity', 90000, 4.3, 0.99);

UPDATE apps
SET downloads = downloads + 10000
WHERE name = 'ChatMaster';

COMMIT;
