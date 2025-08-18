USE airbnb_ny;
 -- Average neighbourhood_group and room type:
SELECT 
    n.neighbourhood_group,
    a.room_type,
    ROUND(AVG(a.price), 2) AS avg_price
FROM Apartments a
JOIN Location l 
    ON a.airbnb_id = l.airbnb_id
JOIN neighbourhoods n 
    ON l.neighbourhood_id = n.combined_id
GROUP BY n.neighbourhood_group, a.room_type
ORDER BY n.neighbourhood_group, avg_price DESC;

-- Average price per neighbourhood_group:
SELECT 
    n.neighbourhood_group,
    ROUND(AVG(a.price), 2) AS avg_price
FROM Apartments a
JOIN Location l 
    ON a.airbnb_id = l.airbnb_id
JOIN neighbourhoods n 
    ON l.neighbourhood_id = n.combined_id
GROUP BY n.neighbourhood_group
ORDER BY avg_price DESC;
