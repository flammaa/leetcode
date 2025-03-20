SELECT P.product_id, ifnull(ROUND(sum(P.price*U.units)/sum(U.units), 2), 0) AS average_price
FROM Prices P LEFT JOIN UnitsSold U 
ON p.product_id = u.product_id 
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY 1