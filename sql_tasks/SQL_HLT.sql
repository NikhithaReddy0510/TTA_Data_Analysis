---- following command to check if table exits or not

DROP table employer_details


---- command to create the table and the schema

CREATE TABLE employer_details(
    Emp_ID int                  NOT NULL,
    Emp_FirstName VARCHAR(20)   NOT NULL,
    Emp_LastName VARCHAR(20)    NOT NULL,
    Emp_Age int                 NOT NULL,
    Emp_Salary DECIMAL(18,5)    NOT NULL,
    Emp_Address CHAR(25),
    PRIMARY KEY (Emp_ID)
);


---- command to insert one value in the table for testing

INSERT INTO employer_details(Emp_ID, Emp_FirstName, Emp_LastName, Emp_Age, Emp_Salary, Emp_Address)
VALUES(1, 'Gopika', 'Krishna', 32, 30000.00, 'Cambridge')


--- command to insert multiple values in the table 

INSERT INTO employer_details (
    Emp_ID,
    Emp_FirstName,
    Emp_LastName,
    Emp_Age,
    Emp_Salary,
    Emp_Address
)
VALUES
(
    2, 'Sai','Ram',30, 45000.00,'Peterborough'), 
    (3, 'Sita', 'Ram', 24, 40000.00, 'London'),
    (4, 'Latha', 'Shiva', 36, 50000.00, 'Manchester'),
    (5, 'Alfa', 'Beta', 28, 25000.00, 'Luton'),
    (6, 'Gama', 'Delta', 25, 32000.00, 'Milton'),
    (7, 'Sara', 'Patel', 34, 36000.00, 'Wales'),
    (8, 'Mith', 'Smile', 40, 42000.00, 'Stamford'),
    (9, 'Joe', 'Laton', 32, 41000.00, 'Manchester'),
    (10, 'James', 'Pande', 23, 27000.00, 'Bristol');


-- command to select the sample data from the table

select * from employer_details


-- command to filter the table using where condition

SELECT * FROM employer_details WHERE Emp_Address='London'