

CREATE DATABASE Gans_cities_ETL;

USE Gans_cities_ETL;

-- 1. Cities
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT,
    city VARCHAR(255) NOT NULL,
    Latitude FLOAT,
    Longitude FLOAT,
    PRIMARY KEY (city_id)
);


-- 2. Populations
CREATE TABLE populations (
    city_id INT,
    Country VARCHAR(255),
    Population INT,
    Timestamp_Population DATE,
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);


-- 3. Weathers
CREATE TABLE weathers (
    weather_id INT AUTO_INCREMENT,
    city_id INT,
    forecast_time DATETIME,
    temperature FLOAT,
    humidity INT,
    forecast VARCHAR(255),
    weather_info VARCHAR(255),
    rain_in_last_3h FLOAT,
    rain_propability FLOAT,
    wind_speed FLOAT,
    data_retrieved_at DATETIME,
    PRIMARY KEY (weather_id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);


-- 4. Airports
CREATE TABLE airports (
    airport_icao VARCHAR(10),
    iata VARCHAR(10),
    name VARCHAR(255),
    shortName VARCHAR(255),
    City VARCHAR(255),
    countryCode VARCHAR(10),
    timeZone VARCHAR(100),
    location_lat FLOAT,
    location_lon FLOAT,
    city_id INT,
    PRIMARY KEY (airport_icao),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);


-- 5. Flights
CREATE TABLE flights (
    flight_id INT AUTO_INCREMENT,
    number VARCHAR(50),
    status VARCHAR(50),
    departure_airport_icao VARCHAR(10),
    departure_airport_countryCode VARCHAR(10),
    airport_icao VARCHAR(10),
    arrival_scheduled DATETIME,
    arrival_revised DATETIME,
    PRIMARY KEY (flight_id),
    FOREIGN KEY (airport_icao) REFERENCES airports(airport_icao)
);


SELECT * FROM flights;