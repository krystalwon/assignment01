/*
    Using the station status dataset, find the distance in meters of each
    station from Meyerson Hall. Use latitude 39.952415 and longitude -75.192584
    as the coordinates for Meyerson Hall.

    Your results should have three columns: station_id, station_geog, and
    distance. Round to the nearest fifty meters.
*/
SELECT 
    id,
    name,
    ST_DISTANCE(geog, ST_SETSRID(ST_MAKEPOINT(-75.192584, 39.952415), 4326)::geography) AS distance_meters
FROM 
    indego.station_statuses
WHERE
    geog IS NOT NULL
ORDER BY 
    id;
