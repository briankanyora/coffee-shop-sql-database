-- SELECT statement

-- select all (*) columns from table
SELECT * FROM shop_location
SELECT * FROM shops
SELECT * FROM locations
SELECT * FROM countries



SELECT 
	s.shopname, l.city, c.country_name
FROM 
	shop_location sl
	INNER JOIN countries c ON sl.country_id = c.country_id
	INNER JOIN shops s ON sl.shop_id = s.shop_id
	INNER JOIN locations l ON sl.location_id = l.location_id