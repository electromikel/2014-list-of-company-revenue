 ---looking for the file information
 SELECT * 
 FROM `2014 list company`.companylist_2014
  
 --looking for all the information from Alabama sorting from the first column
SELECT * 
FROM `2014 list company`.companylist_2014
WHERE state_l like '%Alabama%'
ORDER BY 1,2,3

-- looking for the revenue by state
SELECT company, state_l, city, revenue, industry, growth 
 FROM `2014 list company`.companylist_2014
 GROUP BY revenue
 ORDER BY 2,3

----find the max revenue by state
 SELECT company, state_l, city, MAX(revenue) as total_revenue, industry
 FROM `2014 list company`.companylist_2014
 GROUP BY state_l
 ORDER BY   MAX(revenue) DESC

--find the sum of  revenue by each state
 SELECT company, state_l, industry, SUM(revenue) AS 'totalrevenue'
 FROM `2014 list company`.companylist_2014
 GROUP BY state_l
 ORDER BY 2,3
 
-find the sum of  revenue by each city
 SELECT company, city, SUM(revenue) AS 'total_revenue'
 FROM `2014 list company`.companylist_2014
 GROUP BY city
 ORDER BY 2,3

--find the total revenue by alabama
 SELECT company, state_l, city, SUM(revenue), industry
 FROM `2014 list company`.companylist_2014
 WHERE  state_l = 'Alabama'
 ORDER BY 2,3

 --find the total revenue by compnay
 SELECT company, city, SUM(revenue) AS 'total_revenue'
 FROM `2014 list company`.companylist_2014
 GROUP BY company
 ORDER BY 2,3
 
 --- finding the total revenue of each company by state with the industry.
  SELECT company, growth, SUM(revenue) AS 'total_revenue'
 FROM `2014 list company`.companylist_2014
 GROUP BY company
 ORDER BY 2,3
 
 --findin the total revenue in the year 2014 by all the company
 SELECT   SUM(revenue) 
 FROM `2014 list company`.companylist_2014
  
 
