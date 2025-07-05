use StudentManagement;
create table StudentScores(StudentID int, TotalScore int, MathScore int, ScienceScore int);
insert into StudentScores(StudentID, TotalScore, MathScore, ScienceScore) values (1, 95, 45, 50), 
																				  (2, 85, 35, 60), 
																				  (3, 75, 40, 30), 
                                                                                  (4, 65, 25, 20); 
select StudentID, TotalScore, case when TotalScore >= 90 then 'A' when TotalScore >= 80 then 'B' when TotalScore >= 70 then 'C' else 'D - Fail' end as Grade from StudentScores;
select StudentID, MathScore, ScienceScore, case when MathScore >= 40 then 'Pass' else 'Fail' end as Math_Status, case when ScienceScore >= 40 then 'Pass' else 'Fail' end as Science_Status from StudentScores;
                                                                                  
