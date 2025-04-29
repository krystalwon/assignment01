/*
    Which station is furthest from Meyerson Hall?

    Your query should return only one line, and only give the station id
    (station_id), station name (station_name), and distance (distance) from
    Meyerson Hall, rounded to the nearest 50 meters.
*/

SELECT 
    id,
    name,
    ST_Distance(geog, ST_SetSRID(ST_MakePoint(-75.192584, 39.952415), 4326)::geography) AS distance_meters
FROM 
    indego.station_statuses
WHERE
    geog IS NOT NULL
ORDER BY 
    distance_meters DESC
LIMIT 1;
