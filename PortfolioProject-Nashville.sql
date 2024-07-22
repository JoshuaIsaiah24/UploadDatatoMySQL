-- GOAL: Import a CSV file to MySQL Workbench and perform data cleaning

-- 1. Selecting the correct database for the project
USE PortfolioProject;

-- 2. Create a table to load the CSV file
-- Ensure that the columns match exactly with the CSV file

CREATE TABLE NashvilleHousing (
    UniqueID INT,
    ParcelID VARCHAR(255),
    LandUse VARCHAR(255),
    PropertyAddress VARCHAR(255),
    SaleDate VARCHAR(255),
    SalePrice DECIMAL(15, 2),
    LegalReference VARCHAR(255),
    SoldAsVacant BOOLEAN,
    OwnerName VARCHAR(255),
    OwnerAddress VARCHAR(255),
    Acreage DECIMAL(10, 2),
    TaxDistrict VARCHAR(255),
    LandValue DECIMAL(15, 2),
    BuildingValue DECIMAL(15, 2),
    TotalValue DECIMAL(15, 2),
    YearBuilt INT,
    Bedrooms INT,
    FullBath INT,
    HalfBath INT
);

-- 3. Ensure 'local infile' is enabled
-- You can also enable this by including 'local_infile=1' in the connection tab on the Workbench home menu

SET GLOBAL local_infile = TRUE;

SHOW VARIABLES LIKE 'local_infile';

-- 4. Check for secure-file-priv
-- If you encounter error 2068, this may indicate restrictions on the local infile process

SHOW VARIABLES LIKE 'secure_file_priv';

-- 5. Load data from the CSV file into the table
-- Adjust the file path as necessary

LOAD DATA LOCAL INFILE 'C:/Users/joshu/Desktop/Nashville Housing Data for Data Cleaning.csv'
INTO TABLE NashvilleHousing
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(UniqueID, ParcelID, LandUse, PropertyAddress, SaleDate, SalePrice, LegalReference, SoldAsVacant, OwnerName, OwnerAddress, Acreage, TaxDistrict, LandValue, BuildingValue, TotalValue, YearBuilt, Bedrooms, FullBath, HalfBath);

-- 6. Verify the data was loaded correctly

SELECT *
FROM NashvilleHousing;

-- 7. Disable strict mode for the session if needed
SET SESSION sql_mode = '';
