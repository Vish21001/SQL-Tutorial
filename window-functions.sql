SELECT name,
       downloads,
       RANK() OVER (ORDER BY downloads DESC) AS rank
FROM apps;
