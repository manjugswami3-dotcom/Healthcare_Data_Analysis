# Healthcare Data Analysis (SQL Project)

## Project Overview

This project analyzes hospital patient data using SQL. The analysis compares patient records from **Max Hospital** and **AIIMS Hospital** to identify trends in treatment costs, patient outcomes, hospital stay duration, and satisfaction levels.

The goal is to demonstrate SQL skills for data analysis including filtering, aggregation, grouping, and healthcare data insights.

## Database Structure

Two tables were created to store patient data:

### PatientData_MaxHospital

### PatientData_AIIMSHospital

Each table contains the following columns:

| Column         | Description                    |
| -------------- | ------------------------------ |
| Patient_ID     | Unique patient identifier      |
| Age            | Patient age                    |
| Gender         | Male / Female                  |
| Condition      | Medical condition              |
| ProcedureType  | Type of treatment or procedure |
| Cost           | Treatment cost                 |
| Length_of_Stay | Number of days admitted        |
| Readmission    | Whether patient was readmitted |
| Outcome        | Recovery status                |
| Satisfaction   | Patient satisfaction score     |

## SQL Concepts Used

* Table Creation
* Data Retrieval (SELECT)
* Filtering (WHERE)
* Aggregate Functions
* Group By Analysis
* Basic Healthcare Data Insights

## Key SQL Analysis Performed

### Basic Data Retrieval

* Display all patient records from both hospitals
* Retrieve specific patient attributes such as age and gender

### Filtering Analysis

* Patients older than 50
* High treatment cost patients
* Patients staying more than 5 days
* Recovered patients
* High satisfaction patients

### Aggregate Analysis

* Average treatment cost
* Minimum and maximum treatment cost
* Average hospital stay duration
* Patient count

### Group Analysis

* Patient distribution by gender
* Patient count by medical condition
* Average treatment cost by procedure type
* Satisfaction score by gender
* Patient outcomes distribution

## Example SQL Query

```sql
SELECT ProcedureType, AVG(Cost)
FROM PatientData_MaxHospital
GROUP BY ProcedureType;

Purpose of the Project
This project demonstrates the use of SQL for real-world healthcare data analysis and showcases data querying, aggregation, and analytical thinking skills useful for Data Analyst roles.

## Insights That Can B

