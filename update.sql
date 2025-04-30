CREATE DATABASE air;
use air;
CREATE TABLE airlines_info (
    id INT,
    name VARCHAR(50),
    code VARCHAR(10),
    head_office VARCHAR(100),
    rating FLOAT
);
CREATE TABLE country_info (
    id INT,
    country_name VARCHAR(50),
    continent VARCHAR(50),
    population BIGINT,
    language VARCHAR(50)
);

CREATE TABLE state_info (
    id INT,
    state_name VARCHAR(50),
    country_id INT,
    capital VARCHAR(50),
    area FLOAT
);
ALTER TABLE airlines_info 
ADD founded_year INT, 
ADD ceo VARCHAR(50), 
ADD fleet_size INT;

ALTER TABLE country_info 
ADD currency VARCHAR(50), 
ADD gdp BIGINT, 
ADD calling_code VARCHAR(10);

ALTER TABLE state_info 
ADD population BIGINT, 
ADD density FLOAT, 
ADD governor VARCHAR(50);

ALTER TABLE airlines_info 
RENAME COLUMN name TO airline_name;
ALTER TABLE airlines_info 
RENAME COLUMN id TO origin_country_id;
ALTER TABLE airlines_info 
RENAME COLUMN ceo TO annual_passengers;

ALTER TABLE country_info 
RENAME COLUMN population TO total_population;
ALTER TABLE country_info 
RENAME COLUMN currency TO currency_name;
ALTER TABLE country_info
RENAME COLUMN country_name TO country;

ALTER TABLE state_info 
RENAME COLUMN land_area TO area;
ALTER TABLE state_info 
RENAME COLUMN population TO total_population;
ALTER TABLE state_info 
RENAME COLUMN density TO population_density;


ALTER TABLE airlines_info 
MODIFY rating DOUBLE;
ALTER TABLE airlines_info 
MODIFY airline_name VARCHAR(100);
ALTER TABLE airlines_info 
MODIFY origin_country_id INT;

ALTER TABLE country_info 
MODIFY gdp DOUBLE;
ALTER TABLE country_info 
MODIFY total_population BIGINT UNSIGNED;
ALTER TABLE country_info 
MODIFY currency_name VARCHAR(50);

ALTER TABLE state_info 
MODIFY density DOUBLE;
ALTER TABLE state_info 
MODIFY total_population BIGINT;
ALTER TABLE state_info 
MODIFY population_density DOUBLE(10,2);

INSERT INTO airlines_info 
VALUES 
(1, 'Indigo', '6E', 'Delhi', 4.5, 2006, 'Pieter Elbers', 85),
(2, 'Air India', 'AI', 'Delhi', 4.0, 1932, 'Campbell Wilson', 100),
(3, 'SpiceJet', 'SG', 'Gurgaon', 3.8, 2005, 'Ajay Singh', 50),
(4, 'Vistara', 'UK', 'Gurgaon', 4.3, 2013, 'Vinod Kannan', 49),
(5, 'Go First', 'G8', 'Mumbai', 3.5, 2005, 'Kaushik Khona', 40),
(6, 'Akasa Air', 'QP', 'Mumbai', 4.2, 2021, 'Vinay Dube', 60),
(7, 'Alliance Air', '9I', 'Delhi', 3.9, 1996, 'Vineet Sood', 35),
(8, 'AirAsia India', 'I5', 'Bangalore', 4.1, 2013, 'Sunil Bhaskaran', 45),
(9, 'Jet Airways', '9W', 'Mumbai', 3.0, 1993, 'Sanjiv Kapoor', 65),
(10, 'Blue Dart Aviation', 'BZ', 'Chennai', 3.7, 1995, 'Tulsi Mirchandaney', 55),
(11, 'Zoom Air', 'ZO', 'Delhi', 3.2, 2017, 'Koustav Dhar', 30),
(12, 'TruJet', '2T', 'Hyderabad', 3.4, 2013, 'V Umesh', 25),
(13, 'Air Deccan', 'DN', 'Mumbai', 2.9, 2003, 'Capt. G. R. Gopinath', 20),
(14, 'Paramount Airways', 'I7', 'Chennai', 3.1, 2005, 'Thiagarajan', 22),
(15, 'Kingfisher Airlines', 'IT', 'Bangalore', 2.8, 2005, 'Vijay Mallya', 0),
(16, 'Indian Airlines', 'IC', 'Delhi', 3.5, 1953, 'Ashok Sharma', 95),
(17, 'Bharat Airways', 'BA', 'Mumbai', 2.7, 1990, 'Rajesh Mehta', 15),
(18, 'Sahara Airlines', 'S2', 'Lucknow', 3.3, 1991, 'R.K. Singh', 10),
(19, 'Deccan Charters', 'DD', 'Bangalore', 3.6, 1997, 'Capt. Nair', 12),
(20, 'Pawan Hans', 'PH', 'Delhi', 4.0, 1985, 'Sanjeev Razdan', 75);


INSERT INTO country_info 
VALUES 
(1, 'India', 'Asia', 1400000000, 'Hindi', 'INR', 3.73, '+91'),
(2, 'USA', 'North America', 331000000, 'English', 'USD', 23.32, '+1'),
(3, 'China', 'Asia', 1440000000, 'Mandarin', 'CNY', 17.73, '+86'),
(4, 'Japan', 'Asia', 125000000, 'Japanese', 'JPY', 4.94, '+81'),
(5, 'Germany', 'Europe', 83000000, 'German', 'EUR', 4.22, '+49'),
(6, 'France', 'Europe', 67000000, 'French', 'EUR', 3.29, '+33'),
(7, 'UK', 'Europe', 66000000, 'English', 'GBP', 3.13, '+44'),
(8, 'Brazil', 'South America', 212000000, 'Portuguese', 'BRL', 2.06, '+55'),
(9, 'Canada', 'North America', 38000000, 'English/French', 'CAD', 2.23, '+1'),
(10, 'Russia', 'Europe/Asia', 145000000, 'Russian', 'RUB', 1.78, '+7'),
(11, 'Australia', 'Oceania', 25000000, 'English', 'AUD', 1.60, '+61'),
(12, 'South Korea', 'Asia', 52000000, 'Korean', 'KRW', 1.79, '+82'),
(13, 'Mexico', 'North America', 126000000, 'Spanish', 'MXN', 1.32, '+52'),
(14, 'Italy', 'Europe', 60000000, 'Italian', 'EUR', 2.00, '+39'),
(15, 'Spain', 'Europe', 47000000, 'Spanish', 'EUR', 1.55, '+34'),
(16, 'Saudi Arabia', 'Asia', 35000000, 'Arabic', 'SAR', 1.03, '+966'),
(17, 'Indonesia', 'Asia', 276000000, 'Indonesian', 'IDR', 1.20, '+62'),
(18, 'South Africa', 'Africa', 60000000, 'Zulu/English', 'ZAR', 0.40, '+27'),
(19, 'Turkey', 'Europe/Asia', 84000000, 'Turkish', 'TRY', 0.82, '+90'),
(20, 'Nigeria', 'Africa', 200000000, 'English', 'NGN', 0.48, '+234');

INSERT INTO state_info (
    id, state_name, country_id, capital, land_area,
    population, density, governor
) VALUES
(1, 'Karnataka', 1, 'Bengaluru', 191791, 61130704, 319.0, 'Thawar Chand Gehlot'),
(2, 'Maharashtra', 1, 'Mumbai', 307713, 123144223, 400.2, 'Ramesh Bais'),
(3, 'Tamil Nadu', 1, 'Chennai', 130058, 77841267, 598.3, 'R. N. Ravi'),
(4, 'Uttar Pradesh', 1, 'Lucknow', 243286, 231502578, 951.2, 'Anandiben Patel'),
(5, 'Gujarat', 1, 'Gandhinagar', 196024, 63872399, 325.7, 'Acharya Devvrat'),
(6, 'Kerala', 1, 'Thiruvananthapuram', 38863, 35699443, 918.7, 'Arif Mohammad Khan'),
(7, 'Punjab', 1, 'Chandigarh', 50362, 30141373, 598.3, 'Banwarilal Purohit'),
(8, 'Rajasthan', 1, 'Jaipur', 342239, 81032689, 236.7, 'Kalraj Mishra'),
(9, 'Bihar', 1, 'Patna', 94163, 124799926, 1324.8, 'Rajendra Arlekar'),
(10, 'Haryana', 1, 'Chandigarh', 44212, 28672000, 648.7, 'Bandaru Dattatreya'),
(11, 'Madhya Pradesh', 1, 'Bhopal', 308252, 85358965, 276.9, 'Mangubhai C. Patel'),
(12, 'Andhra Pradesh', 1, 'Amaravati', 162968, 53903393, 330.8, 'S. Abdul Nazeer'),
(13, 'West Bengal', 1, 'Kolkata', 88752, 91276115, 1028.4, 'C. V. Ananda Bose'),
(14, 'Odisha', 1, 'Bhubaneswar', 155707, 46356334, 297.6, 'Raghubar Das'),
(15, 'Chhattisgarh', 1, 'Raipur', 135191, 29436231, 217.8, 'Biswabhusan Harichandan'),
(16, 'Jharkhand', 1, 'Ranchi', 79716, 38593948, 484.1, 'C. P. Radhakrishnan'),
(17, 'Assam', 1, 'Dispur', 78438, 35607039, 454.1, 'Gulab Chand Kataria'),
(18, 'Himachal Pradesh', 1, 'Shimla', 55673, 7300000, 131.1, 'Shiv Pratap Shukla'),
(19, 'Goa', 1, 'Panaji', 3702, 1542750, 416.9, 'P. S. Sreedharan Pillai'),
(20, 'Delhi', 1, 'New Delhi', 1483, 19814000, 13363.3, 'Vinai Kumar Saxena');

