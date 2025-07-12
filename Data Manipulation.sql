use StudentManagement;
Create Table Employees(EmployeeID INT PRIMARY KEY,Name VARCHAR(100),Department VARCHAR(50),JoiningDate DATE);
INSERT INTO Employees (EmployeeID, Name, Department, JoiningDate) VALUES (1, 'James', 'HR', '2022-03-15'),
																	     (2, 'John', 'IT', '2021-11-20'),
																		 (3, 'Sara', 'Finance', '2023-05-10');
ALTER TABLE Employees ADD COLUMN LastUpdated DATE,ADD COLUMN Status VARCHAR(10) DEFAULT 'Active';  
Describe Employees;
use StudentManagement;
Update Employees SET Status = 'Active' where EmployeeID > 0;
Update Employees SET LastUpdated = '2025-07-11' where EmployeeID > 0;
Select * from Employees; 
Delete from Employees where Status = 'Inactive' and EmployeeID > 0;
Select * from Employees;
Delete from Employees where LastUpdated < '2024-01-01' and EmployeeID > 0;
Select * from Employees where Status = 'Inactive' and EmployeeID > 0;
INSERT INTO Employees (EmployeeID, Name, Department, JoiningDate, LastUpdated, Status) VALUES (4, 'Sana', 'HR', '2023-04-15','2025-07-11','Inactive'),
                                                                                              (5, 'Roshni', 'Finance', '2023-08-19','2022-08-11','Inactive'),
																							  (6, 'Priya', 'IT', '2025-08-22','2023-06-21','Inactive'),
                                                                                              (7, 'Derick', 'Finance', '2024-07-03','2025-07-11','Active');
Select * from Employees where Status = 'Inactive' and EmployeeID > 0;
Delete from Employees where Status = 'Inactive' and EmployeeID > 0;
Select * from Employees where Status = 'Inactive' and EmployeeID > 0;
Select * from Employees where LastUpdated < '2025-07-11' and EmployeeID > 0;
Select * from Employees;
Delete from Employees where Name = 'Derick' and EmployeeID = 7;
Select * from Employees;





                                                                          
                                                                          

                                                                         