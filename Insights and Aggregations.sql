use StudentManagement;
select StudentID, Name,(MathScore + ScienceScore + EnglishScore) as TotalScore from Students order by TotalScore desc limit 3;
select avg(MathScore) as AvgMathScore, avg(ScienceScore) as AvgScienceScore from Students where MathScore > (select avg(MathScore) from Students);
select max(MathScore) as SecondHighestMathScore from Students where MathScore < (select max(MathScore) from Students);