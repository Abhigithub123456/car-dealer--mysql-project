create schema cars;
use cars;
 -- Read Data --
select * from car_dekho;
-- Total cars: To get a count of total records --
select count(*) from car_dekho; # 7927

-- The manager asked the employee How many cars will be available in 2023?--
select count(*) from car_dekho  where year = 2023; # 6
-- The manager asked the employee How many cars will be available in 2020,2021,2022?--
select count(*) from car_dekho  where year = 2020; # 74
select count(*) from car_dekho  where year = 2021; # 7
select count(*) from car_dekho  where year = 2022; # 7
-- using Group by --
select count(*) from car_dekho  where year in (2020,2021,2022) group by year;
-- Client asked to print the total number of cars by year --
select year,count(*) from car_dekho group by year ;
-- Client asked the car agent about number of diesel cars in year 2020--
select count(*) from car_dekho where year= 2020 and fuel= "Diesel"; #20
-- Client requested  the car agent about number of petrol cars in year 2020--
select count(*) from car_dekho where year= 2020 and fuel= "petrol"; #51
-- The manager told the employee to give a print of all the fuel cars (petrol,diesel and cng) by year --
select year ,count(*) from car_dekho where fuel ="petrol" group by year ;
select year ,count(*) from car_dekho where fuel ="diesel" group by year ;
select year ,count(*) from car_dekho where fuel ="cng" group by year ;
-- Manager asked to print the given year which has more than 100 cars--
select year,count(*) from car_dekho group by year having count(*) >100;
-- Manager asked about the total count of cars in the year between 2015 and 2023--
select count(*) from car_dekho where year between 2015 and 2023;
-- Manager asked about the deatils of  cars in the year between 2015 and 2023--
select * from car_dekho where year between 2015 and 2023;

-- END--