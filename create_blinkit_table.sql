-- ============================================================================
-- BLINKIT SALES TABLE CREATION - POSTGRESQL VERSION
-- =================================================================

-- Make sure you're connected to your PostgreSQL DB
-- Example: CREATE DATABASE blinkit_db;

DROP TABLE IF EXISTS blinkit_sales;

CREATE TABLE blinkit_sales (
    item_identifier VARCHAR(20),
    item_type VARCHAR(50),
    item_fat_content VARCHAR(20),
    outlet_identifier VARCHAR(20),
    outlet_type VARCHAR(30),
    outlet_location_type VARCHAR(20),
    outlet_size VARCHAR(20),
    establishment_year INT,
    item_visibility FLOAT,
    item_weight FLOAT,
    sales FLOAT,
    rating FLOAT,
    total_sales FLOAT,
    gross_margin FLOAT,
    net_sales FLOAT
);

-- Data Import Command (PostgreSQL CLI only)
-- Run this from terminal using psql (not inside this script)
-- \COPY blinkit_sales FROM 'Cleaned_BlinkIT_Data.csv' DELIMITER ',' CSV HEADER;


-- ========================================================================================
-- BLINKIT SALES TABLE CREATION - MYSQL VERSION
-- ====================================================================================================

-- Make sure you're using the right MySQL database
-- Example: CREATE DATABASE blinkit_db; USE blinkit_db;

DROP TABLE IF EXISTS blinkit_sales;

CREATE TABLE blinkit_sales (
    item_identifier VARCHAR(20),
    item_type VARCHAR(50),
    item_fat_content VARCHAR(20),
    outlet_identifier VARCHAR(20),
    outlet_type VARCHAR(30),
    outlet_location_type VARCHAR(20),
    outlet_size VARCHAR(20),
    establishment_year INT,
    item_visibility FLOAT,
    item_weight FLOAT,
    sales FLOAT,
    rating FLOAT,
    total_sales FLOAT,
    gross_margin FLOAT,
    net_sales FLOAT
);

-- Data Import Command (MySQL CLI or Workbench)
-- Replace '/full/path/to/your/file.csv' with the actual full file path

-- LOAD DATA INFILE '/full/path/to/Cleaned_BlinkIT_Data.csv'
-- INTO TABLE blinkit_sales
-- FIELDS TERMINATED BY ',' 
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;
