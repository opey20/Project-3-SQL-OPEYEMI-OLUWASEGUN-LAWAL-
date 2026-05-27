SELECT *
FROM Sales_Data;

SELECT Product, TotalPrice
FROM Sales_Data;

SELECT Product, TotalPrice
FROM Sales_Data
ORDER BY TotalPrice DESC;

SELECT Product,
COUNT(OrderID) AS Number_of_Orders
FROM Sales_Data
GROUP BY Product
ORDER BY Number_of_Orders DESC;

SELECT Product,
SUM(TotalPrice) AS Total_Revenue
FROM Sales_Data
GROUP BY Product
ORDER BY Total_Revenue DESC;

SELECT Product,
AVG(TotalPrice) AS Average_Order_Value
FROM Sales_Data
GROUP BY Product
ORDER BY Average_Order_Value DESC;

SELECT CouponCode,
COUNT(OrderID) AS Total_Orders
FROM Sales_Data
GROUP BY CouponCode
ORDER BY Total_Orders DESC;

SELECT CouponCode,
SUM(TotalPrice) AS Coupon_Revenue
FROM Sales_Data
GROUP BY CouponCode
ORDER BY Coupon_Revenue DESC;

SELECT PaymentMethod,
SUM(TotalPrice) AS Payment_Revenue
FROM Sales_Data
GROUP BY PaymentMethod
ORDER BY Payment_Revenue DESC;

SELECT PaymentMethod,
COUNT(OrderID) AS Delivered_Orders
FROM Sales_Data
WHERE OrderStatus = 'Delivered'
GROUP BY PaymentMethod
ORDER BY Delivered_Orders DESC;