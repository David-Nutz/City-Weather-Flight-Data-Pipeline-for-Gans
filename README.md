# City-Weather-Flight-Data-Pipeline-for-Gans
This project was developed as part of the Data Analytics course at WBS Coding School. It focuses on building an ETL pipeline for the fictional startup Gans, which is developing an e-scooter-sharing system.

Gans aims to operate in the world's most populous cities, providing users with e-scooters that can be rented by the minute. The company's operational success depends on having scooters available where users need them.

To improve its ability to anticipate scooter movements, Gans first needs to collect, transform, and store relevant data. Predictive modelling is planned as a future step, while this project focuses on establishing the data foundation required for such analyses.

The pipeline collects city, population, weather, airport, and flight data from web sources and external APIs. The data is processed and transformed using Python and Pandas before being loaded into a relational MySQL database.

Reusable Python functions automate the extraction, transformation, and loading process, allowing new data to be added to the database with minimal manual intervention.

## Data

**Sources:**

- **City and population data:** Wikipedia
- **Weather data:** OpenWeather → https://openweathermap.org/api
- **Airport and flight data:** AeroDataBox → https://rapidapi.com/aedbx-aedbx/api/aerodatabox

## Technologies Used

- **Data extraction and processing:** Python, Pandas
- **Development environment:** VS Code
- **Data storage:** MySQL
- **Database management:** SQL

## Project Structure

- **README:** Project documentation
- **Gans_ETL:** Database and table construction
- **ETL Pipeline:** Construction of four Python functions for collecting, processing, and storing data in the SQL database

## Database Structure

The MySQL database consists of five relational tables:

- `cities` – basic information and coordinates of the cities
- `populations` – population data and retrieval timestamps
- `weathers` – weather forecasts and related measurements
- `airports` – airports associated with the selected cities
- `flights` – incoming flight information for the selected airports

Foreign keys connect the tables and allow the data to be queried across the different entities.

## Method

The project follows an ETL (Extract, Transform, Load) approach implemented in Python. City and population data is extracted from Wikipedia, while weather, airport, and flight data is retrieved through external APIs.

The extracted data is processed and transformed using Python and Pandas. This includes cleaning and restructuring API responses, converting data types, extracting relevant attributes, handling timestamps, and preparing the data for database insertion.

The processed data is then loaded into a relational MySQL database. The database is structured into separate tables for cities, populations, weather data, airports, and flights. Foreign keys are used to establish relationships between the tables and maintain the relational structure of the dataset.

The individual ETL steps are implemented as reusable Python functions, allowing new city, weather, airport, and flight data to be extracted and inserted into the database with minimal manual intervention.

The ETL pipeline is designed to reduce manual data collection and database insertion. Once the database and API credentials are configured, the Python functions can be used to retrieve and insert new data with minimal manual intervention.

## Further Potential

The existing functions can be further improved.

So far, the `add_city()` function has only been tested with German cities. To support cities outside Germany, further refinement may be necessary, particularly regarding the extraction and processing of population and location data.

The `get_weather()` function could also be refined. Currently, it retrieves and processes weather data for all cities stored in the database. In the future, it could be modified to allow users to select specific cities for which weather data should be retrieved and inserted into the SQL database.
