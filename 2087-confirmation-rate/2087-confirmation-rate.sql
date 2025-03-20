SELECT user_id, round(ifnull(avg(action='confirmed'), 0), 2) AS confirmation_rate
FROM Signups S LEFT JOIN Confirmations C USING (user_id)
GROUP BY 1
