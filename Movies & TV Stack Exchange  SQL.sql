/*A*/

/*1. How many posts were made each year ?*/

SELECT YEAR(Creationdate) AS 'Year' ,COUNT(ID) AS 'Posts Count'
FROM posts
GROUP BY YEAR(Creationdate)



/*2. How many votes were made in each day of the week (Sunday, Monday, Tuesday, etc.) ?*/

SELECT DATENAME(WEEKDAY,CreationDate) AS 'Weekday' ,COUNT(ID)AS 'Votes Count'
FROM Votes
GROUP BY DATENAME(WEEKDAY,CreationDate) 
ORDER BY  DATENAME(WEEKDAY,CreationDate)

/*3. List all comments created on September 19th, 2012*/

SELECT *
FROM Comments
WHERE CAST(CreationDate AS DATE) ='9.19.2012'

/*4. List all users under the age of 33, living in London*/

SELECT *
FROM Users
WHERE AGE< 33 AND Location='London'


 