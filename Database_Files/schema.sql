DROP DATABASE exam_scheduling_db;

CREATE DATABASE exam_scheduling_db;
USE exam_scheduling_db;

CREATE TABLE Department(
	dept_name VARCHAR(100),
    dept_id INT AUTO_INCREMENT PRIMARY KEY
  );  
 
 CREATE TABLE Student(
    name VARCHAR(100),
    USN CHAR(12) PRIMARY KEY,
    year INT NOT NULL,
    dept_id INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

CREATE TABLE Teacher(
      name VARCHAR(100),
      teacher_id INT,
      dept_id INT  NOT NULL,
      FOREIGN KEY (dept_id) REFERENCES Department(dept_id), 
      PRIMARY KEY(teacher_id,dept_id)   
);   

CREATE TABLE Course(
        name VARCHAR(100),
        course_id CHAR(5) PRIMARY KEY,
		dept_id INT  NOT NULL,
		FOREIGN KEY (dept_id) REFERENCES Department(dept_id), 
        year INT NOT NULL
);   

CREATE TABLE Exam(
     course_id CHAR(5) PRIMARY KEY,
     exam_date DATE NOT NULL,
     exam_time VARCHAR(25) NOT NULL,
     -- STANDARD exam_time format('9-30 AM - 12-30 PM');
     year INT NOT NULL,
     FOREIGN KEY(course_id) REFERENCES Course(course_id),
	 dept_id INT  NOT NULL,
	 FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);     

CREATE TABLE Room(
      room_no INT PRIMARY KEY,
      capacity INT,
      building VARCHAR(100)
);      

CREATE TABLE Student_allotment(
     USN CHAR(12) NOT NULL PRIMARY KEY,
     room_no INT NOT NULL,
     FOREIGN KEY(USN) REFERENCES Student(USN),
     FOREIGN KEY(room_no) REFERENCES Room(room_no)
);

CREATE TABLE Teacher_allotment(
    room_no INT NOT NULL,
    teacher_id INT  NOT NULL,
    dept_id INT  NOT NULL,
    exam_date DATE NOT NULL,
    exam_time VARCHAR(25) NOT NULL,
    -- STANDARD exam_time format('9-30 AM - 12-30 PM');
    FOREIGN KEY(room_no) REFERENCES Room(room_no),
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id),
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id),
    PRIMARY KEY(room_no,teacher_id,dept_id)
);    
