use StudentManagement;
create table Courses(CourseID int auto_increment primary key,CourseName varchar(50));
create table Enrollments(EnrollmentID int auto_increment primary key,StudentID int,CourseID int,EnrollmentDate date,foreign key (StudentID) references Students(StudentID),foreign key (CourseID) references Courses(CourseID));
insert into Courses (CourseName) values ('Math'), ('Science'), ('English'), ('History');
insert into Enrollments (StudentID, CourseID, EnrollmentDate) values (1, 1,'2025-01-10'), (2, 2,'2025-02-17'), (3, 3,'2025-03-15'), (4, 4,'2025-04-20');
select Students.Name as StudentName, Courses.CourseName as CourseEnrolled from Enrollments join Students on Enrollments.StudentID = Students.StudentID join Courses on Enrollments.CourseID = Courses.CourseID;
select Courses.CourseName, count(Enrollments.EnrollmentID) as NumberOfStudents from Courses left join Enrollments on Courses.CourseID = Enrollments.CourseID group by Courses.CourseName;
select Students.Name as StudentName, count(Enrollments.CourseID) as NumberOfCourses from Enrollments join Students on Enrollments.StudentID = Students.StudentID group by Students.StudentID having NumberOfCourses > 1;
select CourseName from Courses left join Enrollments on Courses.CourseID = Enrollments.CourseID where Enrollments.CourseID is null;