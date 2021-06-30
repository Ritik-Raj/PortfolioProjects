CREATE database Project1;
USE Project1;
select * from indiadeath;

-- selecting the data for use
SELECT date, total_cases, new_cases, total_deaths, population
FROM indiadeath;

-- looking at total cases vs total deaths
-- shows likelihood of dying if you contract covid
SELECT date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS death_percentage
FROM indiadeath;

-- looking at total cases vs population
-- shows what percentage of population got covid
SELECT location, date, population, total_cases, (total_cases/population)*100 AS positivity_rate
FROM indiadeath;

-- looking at highest new cases
SELECT date, population, new_cases, (new_cases/population)*100 AS new_cases_percentage
FROM indiadeath
ORDER BY new_cases_percentage DESC;

-- looking at highest death count
SELECT date, population, total_deaths ,new_deaths, (new_deaths/population)*100 AS new_death_percentage
FROM indiadeath
ORDER BY new_death_percentage DESC;

-- highest cases date
SELECT date, population, new_cases, (new_cases/population)*100 AS new_cases_percentage
FROM indiadeath 
ORDER BY new_cases_percentage DESC
LIMIT 1;

-- highest death date 
SELECT date, population, total_deaths ,new_deaths, (new_deaths/population)*100 AS new_death_percentage
FROM indiadeath
ORDER BY new_death_percentage DESC
LIMIT 1;

-- breaking down to months
SELECT date, population, new_cases, (new_cases/population)*100 AS new_cases_percentage
FROM indiadeath;

-- joining table of vaccination
-- looking at population vs vaccination
SELECT d.date, d.population, v.new_vaccinations, (v.new_vaccinations/population) AS vaccination_rate
FROM indiadeath d
JOIN indiavaccination v
ON d.date=v.date
ORDER BY vaccination_rate DESC;






