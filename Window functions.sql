use StudentManagement;
select StudentID, Name, MathScore + ScienceScore + EnglishScore as TotalScore, Rank() over (order by (MathScore + ScienceScore + EnglishScore) desc) as 'Rank' from Students;
select StudentID, Name, MathScore, sum(MathScore) over (order by StudentID) as RunningTotal from Students;
select StudentID, Name, MathScore + ScienceScore + EnglishScore as TotalScore, Dense_Rank() over (order by (MathScore + ScienceScore + EnglishScore) desc) as 'DenseRank' from Students;
select StudentID, Name, MathScore + ScienceScore + EnglishScore as TotalScore, avg( MathScore + ScienceScore + EnglishScore) over() as ClassAverage, ( MathScore + ScienceScore + EnglishScore) - avg( MathScore + ScienceScore + EnglishScore) over() as DifferenceFromAverage from Students;
select StudentID, Name, MathScore + ScienceScore + EnglishScore as TotalScore, MAX(MathScore + ScienceScore + EnglishScore) over () as HighestScoreInClass from Students;