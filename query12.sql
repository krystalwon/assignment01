/*
    How many stations are within 1km of Meyerson Hall?

    Your query should have a single record with a single attribute, the number
    of stations (num_stations).
*/
SELECT 
    COUNT(*) AS stations_within_1km
FROM 
    indego.station_statuses
WHERE
    geog IS NOT NULL
    AND ST_Distance(geog, ST_SetSRID(ST_MakePoint(-75.192584, 39.952415), 4326)::geography) <= 1000;
