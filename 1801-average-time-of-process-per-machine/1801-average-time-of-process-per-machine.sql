# Write your MySQL query statement below
SELECT
  START.machine_id,
  round(AVG(END.timestamp - START.timestamp),
  3
) AS processing_time
FROM
  Activity START
  INNER JOIN Activity
END ON START.machine_id =
END.machine_id
WHERE
  START.activity_type = "start"
  AND
END.activity_type = "end"
GROUP BY
  START.machine_id;