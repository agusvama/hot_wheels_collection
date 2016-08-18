set search_path to hot_wheels
select * from cars
where color LIKE '%blue%'
order by number

COPY cars
FROM '/home/maldad/hot_wheels_collection/cars'
DELIMITER ','
CSV;

COPY (select * from cars)
TO '/home/maldad/hot_wheels_collection/cars'
DELIMITER ','
CSV HEADER

DELETE FROM cars