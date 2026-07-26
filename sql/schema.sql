/*==============================================================
Project : Customer Journey & Conversion Analytics
Author  : Siddharth Sinha

Description:
This schema creates the database and table used for analyzing
online shopper purchasing behaviour. The dataset is sourced
from the UCI Machine Learning Repository.

Target Variable:
Revenue
    TRUE  = Customer made a purchase
    FALSE = Customer did not make a purchase
==============================================================*/

-- Create Database
CREATE DATABASE IF NOT EXISTS customer_conversion;

-- Select Database
USE customer_conversion;

-- Drop table if it already exists
DROP TABLE IF EXISTS online_shoppers;

-- Create Table
CREATE TABLE online_shoppers (

    Administrative INT,
    Administrative_Duration DECIMAL(10,2),

    Informational INT,
    Informational_Duration DECIMAL(10,2),

    ProductRelated INT,
    ProductRelated_Duration DECIMAL(10,2),

    BounceRates DECIMAL(10,5),
    ExitRates DECIMAL(10,5),
    PageValues DECIMAL(10,2),
    SpecialDay DECIMAL(4,2),

    Month VARCHAR(10),

    OperatingSystems INT,
    Browser INT,
    Region INT,
    TrafficType INT,

    VisitorType VARCHAR(30),

    Weekend BOOLEAN,
    Revenue BOOLEAN
);

-- Verify Schema
DESCRIBE online_shoppers;
/*
NOTE:
The project workflow was implemented using Python for data loading,
cleaning, and preprocessing. This schema is included to demonstrate
how the dataset can be represented in a relational database and to
support the SQL analysis included in this repository.
*/
