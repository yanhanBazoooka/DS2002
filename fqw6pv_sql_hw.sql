-- Q1
SELECT Name
FROM country
WHERE Continent = 'South America';
-- Q2
SELECT Population
FROM country
WHERE Name = 'Germany';
-- Q3
SELECT city.Name
FROM city
JOIN country ON city.CountryCode = country.Code
WHERE country.Name = 'Japan';
-- Q4
SELECT Name, Population
FROM country
WHERE Continent = 'Africa'
ORDER BY Population DESC
LIMIT 3;
-- Q5
SELECT Name, LifeExpectancy
FROM country
WHERE Population BETWEEN 1000000 AND 5000000;
-- Q6
SELECT country.Name
FROM country
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Language = 'French' AND countrylanguage.IsOfficial = 'T';
-- Q7
SELECT Album.Title
FROM Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId
WHERE Artist.Name = 'AC/DC';
-- Q8
SELECT FirstName, LastName, Email
FROM Customer
WHERE Country = 'Brazil';
-- Q9
SELECT Name
FROM Playlist;
-- Q10
SELECT COUNT(*)
FROM Track
JOIN Genre ON Track.GenreId = Genre.GenreId
WHERE Genre.Name = 'Rock';
-- Q11
SELECT e.FirstName, e.LastName
FROM Employee e
JOIN Employee manager ON e.ReportsTo = manager.EmployeeId
WHERE manager.FirstName = 'Nancy' AND manager.LastName = 'Edwards';
-- Q12
SELECT Customer.FirstName, Customer.LastName, SUM(Invoice.Total) AS TotalSales
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Customer.CustomerId;

