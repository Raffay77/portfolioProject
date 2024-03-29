﻿
-- query to get the product and QuantityPerUnit

Select ProductName, QuantityPerUNit
from products


-- query to get current product list

Select ProductId, ProductName
from products

-- query to discontinued product list

Select ProductId, ProductName, DIscontinued
from products

--query to get most expense Product list

Select ProductId, ProductName, UnitPrice
from products
order by Unitprice desc

--query to get least expense Product list

Select ProductId, ProductName, UnitPrice
from products
order by Unitprice asc

--query to get product list less than 20$

Select ProductId, PRoductName, UnitPrice
from products
where UnitPrice < 20

--query to get product list between 15$ and 25$

Select ProductId, PRoductName, UnitPrice
from products
where UnitPrice between 15 and 25

-- query to get product list above average price

SELECT PRODUCTID, Productname, unitprice
FROM Products 
WHERE unitprice > (SELECT AVG(unitprice) FROM Products)


--query to get product list of the top ten most expensive products

SELECT DISTINCT ProductName as ten_Most_Expensive_Products, UnitPrice
FROM Products AS a
WHERE 10 >= (SELECT COUNT(DISTINCT UnitPrice)
                    FROM Products AS b
                    WHERE b.UnitPrice >= a.UnitPrice)
ORDER BY UnitPrice desc;

-- query to count current and discountinued items
SELECT Count(ProductName)
FROM Products
GROUP BY Discontinued;

