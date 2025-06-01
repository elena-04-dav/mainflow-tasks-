use StudentManagement;
create table Students(StudentID int auto_increment primary key,Name varchar(50),Gender varchar(1),Age int,Grade varchar(10),MathScore int,ScienceScore int,EnglishScore int);
insert into Students(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) values ('Alice', 'F', 18, 'A', 88, 90, 95),
																							 ('Tina', 'F', 20, 'A', 85, 90, 80),
                                                                                             ('Jack', 'M', 19, 'B', 75, 80, 95),
                                                                                             ('Luke', 'M', 21, 'A', 70, 65, 95),
																							 ('Rina', 'F', 25, 'A', 75, 85, 95),
																							 ('David', 'M', 27, 'B', 80, 75, 85),
																							 ('Jacob', 'M', 26, 'A', 75, 85, 90),
																							 ('Hannah', 'F', 21, 'B', 80, 95, 75),
																							 ('Ayra', 'F', 17, 'A', 90, 85, 75),
      																						 ('Bob', 'M', 22, 'B', 80, 75, 90);
select* from Students;
select Avg(MathScore) as AvgMathScore, Avg(ScienceScore) as AvgScienceScore, Avg(EnglishScore) as AvgEnglishScore from Students;
select Name,(MathScore + ScienceScore + EnglishScore) as TotalScore from Students order by TotalScore desc limit 1;
select Grade, count(*) as StudentCount from Students group by Grade;
select Gender, Avg(MathScore) as AvgMathScore, Avg(ScienceScore) as AvgScienceScore, Avg(EnglishScore) as AvgEnglishScore from Students group by Gender;
select Name, MathScore from Students where MathScore > 80;
update Students set Grade = 'A' where StudentID = 3;
select* from Students where StudentID = 3; 
select* from Students; 