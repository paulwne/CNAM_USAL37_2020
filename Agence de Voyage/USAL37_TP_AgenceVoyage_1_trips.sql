USE usal37_agence;

/*
 



- Sélectionnez tous les voyages déjà passés.

- Sélectionnez tous les voyages 
	(nom de la ville, code pays et nom du pays inclus)

*/

SELECT * FROM cities;
/*
- Insérez les 5 voyages du PDF dans la table "trips"
*/
INSERT INTO trips
(
trip_title, 
trip_available, 
trip_start, 
trip_end, 
trip_price, 
trip_overview, 
trip_description, 
city_code
)
VALUES
('Séjour touristique',          100, '2020-05-20 09:00:30', '2020-05-27 09:01:50', '899', 'T1 overview', 'Trip1 description', 9),
('Séjour Gastronomique',        50, '2020-05-10 10:02:27', '2020-05-15 10:03:35', '399', 'T1 overview', NULL, 2),
('Voyage Aventure',             35, '2020-05-07 08:20:51', '2020-05-10 08:23:40', '1299', 'T1 overview', NULL, 7),
('Destination Vert-Bouteille',  18, '2020-05-17 06:30:12', '2020-05-23 06:33:17', '849', 'T1 overview', NULL, 8),
('Europa Park',                 568, '2020-05-02 07:40:29', '2020-05-04 07:45:46', '99', 'T1 overview', NULL, 3);

/*
- Sélectionnez tout les voyages déjà passés.
*/
SELECT trip_code, trip_title, trip_available, trip_start, trip_end, trip_price, trip_overview, trip_description, city_code
FROM trips
WHERE trip_end < NOW()
;

SELECT NOW(); -- date + heure courante
SELECT CURDATE(); -- date d'aujourd'hui
SELECT CURTIME(); -- heure courante

/*
- Sélectionnez le nombre de voyages déjà passés.
*/
SELECT 
COUNT(*)
FROM trips
WHERE trip_end < CURDATE()
;

/*
- Sélectionnez les voyages au départ de Mulhouse.
*/
SELECT 
trip_code, trip_title, trip_available, trip_start, trip_end, trip_price, trip_overview, trip_description, 
trips.city_code, city_name
FROM trips
JOIN cities ON trips.city_code = cities.city_code
WHERE cities.cities_name='Mulhouse';



