SELECT category, COUNT(*) AS total_apps
FROM apps
GROUP BY category;
