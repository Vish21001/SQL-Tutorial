WITH popular_apps AS (
    SELECT * FROM apps WHERE downloads > 300000
)
SELECT name, downloads FROM popular_apps;
