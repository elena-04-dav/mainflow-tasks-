use StudentManagement;
select * from Students;
select * from Studentscores;
create view Student_scores_view as select s.StudentID, s.Name, ss.MathScore, ss.ScienceScore, ss.TotalScore from Students s join StudentScores ss on s.StudentID = ss.StudentID;
select * from Student_scores_view;
create view passed_students as select s.StudentID, s.Name from Students s join StudentScores ss on s.StudentID = ss.StudentID where ss.MathScore >= 40 and ss.ScienceScore >= 40;
select * from passed_students; 
