CREATE TABLE PatientData_MaxHospital (Patient_ID INT PRIMARY KEY,Age INT,Gender VARCHAR(10),Condition VARCHAR(50),
ProcedureType VARCHAR(50),Cost INT,Length_of_Stay INT,Readmission VARCHAR(5),Outcome VARCHAR(20),Satisfaction INT)


CREATE TABLE PatientData_AIIMSHospital (Patient_ID INT PRIMARY KEY,Age INT,Gender VARCHAR(10),Condition VARCHAR(50),
ProcedureType VARCHAR(50),Cost INT,Length_of_Stay INT,Readmission VARCHAR(5),Outcome VARCHAR(20),Satisfaction INT)

--Write a query to display all records from PatientData_MaxHospital.
SELECT *FROM PatientData_MaxHospital
--Write a query to display all records from PatientData_AIIMSHospital.
SELECT * FROM PatientData_AIIMSHospital
--Write a query to show only Patient_ID, Age, and Gender from Max Hospital.
Select Patient_ID, Age,Gender from PatientData_MaxHospital
--Write a query to count total patients in Max Hospital.
Select count(*) as patients from PatientData_MaxHospital
--Write a query to count total patients in AIIMS Hospital
Select count(*) as patients from PatientData_AIIMSHospital

--Filtering Queries
--Write a query to show patients whose age is greater than 50 in Max Hospital.
Select * from PatientData_MaxHospital where Age>50
--Write a query to show patients whose cost is greater than 15000.
Select * from PatientData_MaxHospital where Cost>15000
--Write a query to show patients whose length of stay is more than 5 days.
Select * from PatientData_MaxHospital where Length_of_Stay>5
--Write a query to display patients whose outcome is 'Recovered'.
Select * from PatientData_MaxHospital where Outcome='Recovered'
--Write a query to display patients with satisfaction greater than 8.
Select * from PatientData_MaxHospital where Satisfaction>8

--Aggregate Functions
--Write a query to find the average treatment cost in Max Hospital.
Select avg(Cost) as avgCost from PatientData_MaxHospital
--Write a query to find the minimum treatment cost in AIIMS Hospital.
select min(Cost) as mincost from PatientData_AIIMSHospital
--Write a query to find the maximum treatment cost in Max Hospital.
select max(Cost) as maxcost from PatientData_MaxHospital
--Write a query to find the average length of stay in AIIMS Hospital.
Select avg(Length_of_Stay) as lenofstay from PatientData_AIIMSHospital
--Write a query to count patients where readmission = 'Yes'.

--GROUP BY Analysis
--Write a query to count number of patients by gender in Max Hospital.
Select count(Gender) as gender from PatientData_MaxHospital group by Gender
--Write a query to count number of patients by condition.
Select Condition, count(*) as patients from PatientData_MaxHospital group by Condition
--Write a query to find average cost by procedure type.
SELECT ProcedureType, AVG(Cost) FROM PatientData_MaxHospital GROUP BY ProcedureType
--Write a query to find average satisfaction score by gender.
SELECT Gender, AVG(Satisfaction) FROM PatientData_MaxHospital GROUP BY Gender
--Write a query to count number of patients for each outcome.
SELECT Outcome, COUNT(*) FROM PatientData_MaxHospital GROUP BY Outcome

