# Nashville Housing Data Cleaning Project

## Overview

This project imports a CSV file containing Nashville housing data into MySQL Workbench and performs initial data cleaning. The process includes creating a table, loading data from the CSV file, and ensuring necessary settings are enabled in MySQL.

## Prerequisites

- MySQL Workbench installed
- A CSV file named `Nashville Housing Data for Data Cleaning.csv` located at `C:/Users/joshu/Desktop/`

## Instructions

1. **Selecting the Database**
    - Use the `PortfolioProject` database.

2. **Creating the Table**
    - Create a table named `NashvilleHousing` with columns matching those in the CSV file.

3. **Enabling Local Infile**
    - Enable the `local_infile` setting in MySQL.

4. **Checking Secure File Privileges**
    - Verify there are no restrictions on loading local files.

5. **Loading Data**
    - Load the data from the CSV file into the `NashvilleHousing` table.

6. **Verifying Data Load**
    - Query the `NashvilleHousing` table to verify the data load.

7. **Disabling Strict Mode (Optional)**
    - Disable strict mode for the session if needed.

## Detailed Steps

For detailed SQL commands and steps, refer to the SQL file of this project.

## Notes

- Adjust the file path in the `LOAD DATA LOCAL INFILE` statement as necessary.
- Ensure MySQL Workbench has the required permissions to access the file path specified.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
