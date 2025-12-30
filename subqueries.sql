SELECT name
FROM apps
WHERE downloads > (
    SELECT AVG(downloads) FROM apps
);
