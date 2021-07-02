CREATE database project2;
USE project2;
SHOW tables;

-- selecting table for analysis round 1
SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings;

-- looking for top companies according to amount who got funded in 2015
SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE date LIKE '%2015'
ORDER BY Amount_in_USD DESC
LIMIT 5;

-- looking for top companies according to amount who got funded in 2016
SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE date LIKE '%2016'
ORDER BY Amount_in_USD DESC
LIMIT 5;

-- looking for top companies according to amount who got funded in 2017
SELECT Date, Startup_Name, Amount_in_USD 
FROM startup_fundings
WHERE date LIKE '%2017'
ORDER BY Amount_in_USD DESC
LIMIT 5;

-- looking for top companies according to amount who got funded in 2018
SELECT Date, Startup_Name, Amount_in_USD 
FROM startup_fundings
WHERE date LIKE '%2018'
ORDER BY Amount_in_USD DESC
LIMIT 5;

-- looking for top companies according to amount who got funded in 2019
SELECT Date, Startup_Name, Amount_in_USD 
FROM startup_fundings
WHERE date LIKE '%2019'
ORDER BY Amount_in_USD DESC
LIMIT 5;

-- looking for top companies according to amount who got funded in 2020
SELECT Date, Startup_Name, Amount_in_USD 
FROM startup_fundings
WHERE date LIKE '%2020'
ORDER BY Amount_in_USD DESC
LIMIT 5;

-- looking for number of times top companies of 2015 got funder in last 6 years
-- Paytm, Flipkart, Snapdeal, Ola funded more than once
SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Flipkart"; -- (Got funded twice, 2015 and 2017)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Paytm"; -- (Got funded five time, 2015,2016,2017,2018 and 2019)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Snapdeal"; -- (Got funded twice, 2015 and 2016)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Ola"; -- (Got funded twice, 2015 and 2017)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Olacabs"; -- (Got funded once in 2015)


-- looking for number of times top companies of 2016 got funder in last 6 years
-- Bigbasket, Cartrade, MakeMyTrip and Snapdeal funded more than once
SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Snapdeal"; -- (Got funded twice, 2015 and 2016)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="MakeMyTrip"; -- (Got funded twice, 2016 and 2018)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Hike"; -- (Got funded once in 2016)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="BigBasket"; -- (Got funded four time, in 2015,2016,2017 and 2018)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="CarTrade"; -- (Got funded twice, 2016 and 2017)


-- looking for number of times top companies of 2017 got funder in last 6 years
-- Ola and Oyo funded more than once
SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Ola"; -- (Got funded twice, 2015 and 2017)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Edelweiss"; -- (Got funded once in 2017)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Ola Cabs"; -- (Got funded thrice, in 2015,2017 and 2019)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Oyo Rooms"; -- (Got funded twice, 2015 and 2017)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="OYO Rooms"; -- (Got funded twice, 2015 and 2017)


-- looking for number of times top companies of 2018 got funder in last 6 years
-- BIg Basket and Udaan got funded more than once
SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="True North"; -- (Got funded once in 2018)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Automation Anywhere"; -- (Got funded once in 2018)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="BigBasket"; -- (Got funded four times, in 2015,2016,2017 and 2018)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Udaan"; -- (Got funded thrice, in 2016, 2018 and in 2019)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Zomato"; -- (Got funded thrice, in 2015,2018 and 2020)


-- looking for number of times top companies of 2019 got funder in last 6 years
-- Lenskart, Udaan, GOQii and Zilingo got funded more than once
SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Udaan"; -- (Got funded thrice, in 2016, 2018 and 2019)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="GOQii"; -- (Got funded thrice, in 2015, 2016 and 2019)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Vogo Automotive";  -- (Got funded once in 2019)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Lenskart"; -- (Got funded four times, in 2015,2016,2017 and 2018)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Zilingo"; -- (Got funded thrice, in 2015,2016 and 2019)


-- looking for number of times top companies of 2020 got funder in last 6 years
-- Byjus, Shuttl, Zomato and Mamaearth funded more than once
SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Byjus"; -- (Got funded four times, in 2016,2017,2018 and 2019)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Zomato"; -- (Got funded thrice in 2015,2018 and 2020)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Mamaearth"; -- (Got funded thrice in 2016,2017,2018 and 2020)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Pando"; -- (Got funded once in 2018)

SELECT Date, Startup_Name, Amount_in_USD
FROM startup_fundings
WHERE Startup_Name="Shuttl"; -- (Got funded four times, in 2015,2018,2019 and 2020)

-- selecting table for analysis round2
-- to analyze companies on the basis of different kind of investments
SELECT f.Date, f.Startup_Name, f.Amount_in_USD, i.investors_Name, i.Investment_Type
FROM startup_fundings f
JOIN startup_investors i
ON f.date=i.date
ORDER BY Amount_in_USD DESC;

-- Copying all this data into new table called masterdata for convinience
CREATE TABLE masterdata(
SELECT f.Date, f.Startup_Name, f.Amount_in_USD, i.investors_Name, i.Investment_Type
FROM startup_fundings f
JOIN startup_investors i
ON f.date=i.date
ORDER BY Amount_in_USD DESC
);

-- we will analyse the companies on the basis of Seed Round, Series A, Series B, Private Equity and Debt Funding
-- Seed Round: Flipkart
SELECT date, startup_name, amount_in_USD, investment_type
from masterdata
where Investment_Type='Seed Round'
order by Amount_in_USD DESC
LIMIT 1;

-- Series A: GOQii
SELECT date, startup_name, amount_in_USD, investment_type
from masterdata
where Investment_Type='Series A'
order by Amount_in_USD DESC
LIMIT 1;

-- Series B: Automtion Anywhere
SELECT date, startup_name, amount_in_USD, investment_type
from masterdata
where Investment_Type='Series B'
order by Amount_in_USD DESC
LIMIT 1;

-- Private Equity: Flipkart
SELECT date, startup_name, amount_in_USD, investment_type
from masterdata
where Investment_Type='Private Equity'
order by Amount_in_USD DESC
LIMIT 1;

-- Debt Funding: Vogo Automotive
SELECT date, startup_name, amount_in_USD, investment_type
from masterdata
where Investment_Type='Debt Funding'
order by Amount_in_USD DESC
LIMIT 1;


-- analysis round3
-- Here we look for the investors of top companies on the basis of funding(that we got in analysis round1 )
-- Paytm
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Paytm';

-- Snapdeal
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Snapdeal';

-- OLA
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Ola' Or Startup_Name='Ola cabs';

-- Flipkart
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Flipkart';

-- BigBasket
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='BIgBasket';

-- Cartrade
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='CarTrade';

-- makeMyTrip
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='MakeMyTrip';

-- OYO
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Oyo Rooms' Or Startup_Name='OYO Rooms';

-- Udaan
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Udaan';

-- Lenskart
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Lenskart';

-- GOQii
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='GOQii';

-- Zilingo
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Zilingo';

-- Byjus
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Byjus';

-- Shuttl
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Shuttl';

-- Zomato
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Zomato';

-- Mamaearth
select DISTINCT Investors_Name from masterdata
WHERE Startup_Name='Mamaearth'  Or Startup_Name='Mamaearth';

-- Here we look for the investments of top companies on the basis of funding(that we got in analysis round1 ) in different years.
-- Paytm
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2020';

-- Snapdeal
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Paytm' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Snapdeal' and 
Date LIKE '%2020';

-- Ola
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Ola' and 
Date LIKE '%2020';

-- Fipkart
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Flipkart' and 
Date LIKE '%2020';

-- BigBasket
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='BigBasket' and 
Date LIKE '%2020';

-- Cartrade
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='CarTrade' and 
Date LIKE '%2020';

-- MakeMyTrip
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MakeMyTrip' and 
Date LIKE '%2020';

-- OYO
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Oyo Rooms' and 
Date LIKE '%2020';

-- Udaan
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Udaan' and 
Date LIKE '%2020';

-- Lenskart
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Lenskart' and 
Date LIKE '%2020';

-- GOQii
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='GOQii' and 
Date LIKE '%2020';

-- Zilingo
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zilingo' and 
Date LIKE '%2020';

-- Byjus
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Byjus' and 
Date LIKE '%2020';

-- Shuttl
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Shuttl' and 
Date LIKE '%2020';

-- Zomato
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='Zomato' and 
Date LIKE '%2020';

-- MamaEarth
select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2015';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2016';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2017';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2018';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2019';

select Amount_in_USD, Investors_Name, Investment_Type 
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2020';

-- Sums of each year
select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2015';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2016';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2017';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2018';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2019';

select sum(Amount_in_USD)
from masterdata 
where Startup_Name='MamaEarth' and 
Date LIKE '%2020';

-------- END of analysis






















