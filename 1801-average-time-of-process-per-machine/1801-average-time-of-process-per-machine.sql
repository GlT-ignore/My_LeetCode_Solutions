# Write your MySQL query statement below
SELECT  start.machine_id,
        round(AVG(end.timestamp-start.timestamp),3) AS processing_time
FROM    Activity start inner join Activity end 
        ON start.machine_id = end.machine_id
WHERE   start.activity_type = "start" AND 
        end.activity_type = "end"
GROUP BY
        start.machine_id;