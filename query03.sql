/*
    What is the average duration of a trip for 2021?

    Your results should have a single record with a single field named
    `avg_duration`. Round to two decimal places.
*/

SELECT 
    ROUND(AVG(duration)::numeric, 2) AS avg_duration
FROM 
    indego.trips_2021_q3;
