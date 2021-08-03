-- STANDARD exam_time format('9-30 AM - 12-30 PM');

INSERT INTO Department(dept_name) VALUES ('Computer Science and Engineering');

INSERT INTO Student(name,USN,year,dept_id) VALUES('Akhil','01JST18CS001',3,1);

INSERT INTO Teacher(name,teacher_id,dept_id) VALUES ('Advik Mitter',1,1);

INSERT INTO Course(name,course_id,dept_id,year) VALUES ('Linear Algebra','CS510',1,3);  

INSERT INTO Exam(course_id,exam_date,exam_time,year,dept_id) VALUES ('CS510','2020-12-3','9-30 AM - 12-30 PM',3,1);

INSERT INTO Department(dept_name)
VALUES ('Electronics and Communications Engineering'),
	   ('Information Science and Engineering'),
       ('Civil Engineering'),
       ('Mechanical Engineering');
--
        
INSERT INTO Teacher(name,teacher_id,dept_id) 
VALUES ('Pradeep Kurian',2,1),
       ('Ravi Kashyap',3,1);

       
INSERT INTO Teacher(name,teacher_id,dept_id)
VALUES  ('Satish Kumar',1,2),
        ('H Ragavendra',2,2),
        ('Manjunath S',3,2);    
        
INSERT INTO Teacher(name,teacher_id,dept_id)
VALUES  ('Vishwanath D',1,3),
        ('Suresh G',2,3),
        ('Gopal C',3,3);     
        
INSERT INTO Teacher(name,teacher_id,dept_id)
VALUES  ('Sujay N',1,4),
        ('Kumar P',2,4),
        ('Chandru Kumar',3,4);   
        
INSERT INTO Teacher(name,teacher_id,dept_id)
VALUES  ('Naveen Rao',1,5),
        ('Praveen Krishna',2,5),
        ('Vikram J',3,5);

INSERT INTO course(name,course_id,dept_id,year) 
VALUES ('Software Engineering','CS520',1,3),
       ('Database Management System','CS530',1,3);

INSERT INTO Department(dept_name)
VALUES ('Mathematics'),
	   ('Chemistry');

INSERT INTO course(name,course_id,dept_id,year) 
VALUES ('Engineering Maths - 1','MA110',6,1),
       ('Engineering Chemistry','CH120',7,1),
       ('C Programming','CS110',1,1);

INSERT INTO course(name,course_id,dept_id,year) 
VALUES ('Digital System Design','CS310',1,2),
       ('Thoery Of Computation','CS320',1,2),
       ('OOP in Java','CS330',1,2);
       
INSERT INTO course(name,course_id,dept_id,year) 
VALUES ('Computer Architecture','CS710',1,4),
       ('Agile Software Engineering','CS720',1,4),
       ('Internet of Things','CS731',1,4);  
       
INSERT INTO course(name,course_id,dept_id,year) 
VALUES ('Electronic Instrumentation','EC310',2,2),
       ('Analog Electronics','EC320',2,2),
       ('Digital Eletronics','EC330',2,2);
       
INSERT INTO course(name,course_id,dept_id,year) 
VALUES ('Digital Signal Processing','EC510',2,3),
       ('Verilog Hdl','EC520',2,3),
       ('Information Theory and Coding','EC530',2,3),
       ('Microwave and Antennas','EC710',2,4),
       ('Digital Image Processing','EC720',2,4),
       ('Power Electronics','EC730',2,4);  
       
INSERT INTO course(name,course_id,dept_id,year) 
VALUES ('Computer Organisation and Architecture','IS310',3,2),
       ('Discrete Mathematics','IS320',3,2),
       ('Data Sturctures','IS330',3,2),
       ('Data Communication','IS510',3,3),
       ('Linear Algebra','IS520',3,3),
       ('Web Technology','IS530',3,3),
       ('Distrubuted Computing','IS710',3,4),
       ('Information and Network Security','IS720',3,4),
       ('Cloud Computing','IS730',3,4); 
       
INSERT INTO course(name,course_id,dept_id,year) 
VALUES ('Materials of Construction','CV310',4,2),
       ('Fluid Mechanics','CV320',4,2),
       ('Concrete Technology','CV330',4,2),
       ('Highway Technology','CV510',4,3),
       ('Hydraulic Machinery','CV520',4,3),
       ('Geotechnical Engineering','CV530',4,3),
       ('Structural Design of Bridges','CV710',4,4),
       ('Advanced Concrete Technology','CV720',4,4),
       ('Architecture and Town Planning','CV730',4,4); 

INSERT INTO course(name,course_id,dept_id,year) 
VALUES ('Basic Thermodynamics','ME310',5,2),
       ('Kinematics of Machines','ME320',5,2),
       ('Manufacturing Process','ME330',5,2),
       ('Manufacturing Process - 3','ME510',5,3),
       ('Design of Machine Elements - 1','ME520',5,3),
       ('Mechatronics','ME530',5,3),
       ('Mechanical Vibrations','ME710',5,4),
       ('Operations Research','ME720',5,4),
       ('Hydraulics and Pneumatics','ME730',5,4);   
       
-- INSERT INTO Exam(course_id,exam_date,exam_time,year,dept_id) 
-- VALUES ('MA110','2020-12-3','9-30 AM - 12-30 PM',1,6);

--  
-- INSERT INTO Exam(course_id,exam_date,exam_time,year,dept_id) 
-- VALUES ('CS310','2020-12-3','9-30 AM - 12-30 PM',2,1),
--        ('CS710','2020-12-3','9-30 AM - 12-30 PM',4,1),
-- 	   
--        ('EC310','2020-12-3','9-30 AM - 12-30 PM',2,2),
--        ('EC510','2020-12-3','9-30 AM - 12-30 PM',3,2),
--        ('EC710','2020-12-3','9-30 AM - 12-30 PM',4,2),
--        
--        ('IS310','2020-12-3','9-30 AM - 12-30 PM',2,3),
--        ('IS510','2020-12-3','9-30 AM - 12-30 PM',3,3),
--        ('IS710','2020-12-3','9-30 AM - 12-30 PM',4,3),
-- 	   
--        ('CV310','2020-12-3','9-30 AM - 12-30 PM',2,4),
--        ('CV510','2020-12-3','9-30 AM - 12-30 PM',3,4),
--        ('CV710','2020-12-3','9-30 AM - 12-30 PM',4,4),
--        
--        ('ME310','2020-12-3','9-30 AM - 12-30 PM',2,5),
--        ('ME510','2020-12-3','9-30 AM - 12-30 PM',3,5),
--        ('ME710','2020-12-3','9-30 AM - 12-30 PM',4,5);
--        
-- INSERT INTO Exam(course_id,exam_date,exam_time,year,dept_id) 
-- VALUES ('CH120','2020-12-5','9-30 AM - 12-30 PM',1,7),  -- Common exams
--        
--        ('CS320','2020-12-5','9-30 AM - 12-30 PM',2,1),
--        ('CS520','2020-12-5','9-30 AM - 12-30 PM',3,1),
--        ('CS720','2020-12-5','9-30 AM - 12-30 PM',4,1),
-- 	   
--        ('EC320','2020-12-5','9-30 AM - 12-30 PM',2,2),
--        ('EC520','2020-12-5','9-30 AM - 12-30 PM',3,2),
--        ('EC720','2020-12-5','9-30 AM - 12-30 PM',4,2),
--        
--        ('IS320','2020-12-5','9-30 AM - 12-30 PM',2,3),
--        ('IS520','2020-12-5','9-30 AM - 12-30 PM',3,3),
--        ('IS720','2020-12-5','9-30 AM - 12-30 PM',4,3),
-- 	   
--        ('CV320','2020-12-5','9-30 AM - 12-30 PM',2,4),
--        ('CV520','2020-12-5','9-30 AM - 12-30 PM',3,4),
--        ('CV720','2020-12-5','9-30 AM - 12-30 PM',4,4),
--        
--        ('ME320','2020-12-5','9-30 AM - 12-30 PM',2,5),
--        ('ME520','2020-12-5','9-30 AM - 12-30 PM',3,5),
--        ('ME720','2020-12-5','9-30 AM - 12-30 PM',4,5);

-- INSERT INTO Exam(course_id,exam_date,exam_time,year,dept_id) 
-- VALUES ('CS110','2020-12-07','9-30 AM - 12-30 PM',1,1);

-- INSERT INTO Exam(course_id,exam_date,exam_time,year,dept_id) 
-- VALUES ('CS330','2020-12-07','9-30 AM - 12-30 PM',2,1);

-- INSERT INTO Exam(course_id,exam_date,exam_time,year,dept_id) 
-- VALUES ('CS530','2020-12-07','9-30 AM - 12-30 PM',3,1);

-- INSERT INTO Exam(course_id,exam_date,exam_time,year,dept_id) 
-- VALUES ('CS731','2020-12-07','9-30 AM - 12-30 PM',4,1);

-- INSERT INTO Exam(course_id,exam_date,exam_time,year,dept_id)
-- VALUES ('EC330','2020-12-7','9-30 AM - 12-30 PM',2,2),
--        ('EC530','2020-12-7','9-30 AM - 12-30 PM',3,2),
--        ('EC730','2020-12-7','9-30 AM - 12-30 PM',4,2),
--        
--        ('IS330','2020-12-7','9-30 AM - 12-30 PM',2,3),
--        ('IS530','2020-12-7','9-30 AM - 12-30 PM',3,3),
--        ('IS730','2020-12-7','9-30 AM - 12-30 PM',4,3),
-- 	   
--        ('CV330','2020-12-7','9-30 AM - 12-30 PM',2,4),
--        ('CV530','2020-12-7','9-30 AM - 12-30 PM',3,4),
--        ('CV730','2020-12-7','9-30 AM - 12-30 PM',4,4),
--        
--        ('ME330','2020-12-7','9-30 AM - 12-30 PM',2,5),
--        ('ME530','2020-12-7','9-30 AM - 12-30 PM',3,5),
--        ('ME730','2020-12-7','9-30 AM - 12-30 PM',4,5);

INSERT INTO Room(room_no,capacity,building) 
VALUES (1,20,'Polymer Science Block'), -- 1
       (2,25,'Polymer Science Block'),
       (3,20,'Polymer Science Block'), -- 2
       (4,20,'Polymer Science Block'), -- 3 
       (5,20,'Polymer Science Block'), -- 4
       (6,20,'Polymer Science Block'), -- 5
       (7,50,'Polymer Science Block'),
       (8,20,'Polymer Science Block'),
       (9,20,'Polymer Science Block'),
       (10,25,'Polymer Science Block');
      
INSERT INTO Student_allotment(USN,room_no) VALUES('01JST18CS001',1);

-- INSERT INTO Teacher_allotment(room_no,teacher_id,dept_id,exam_date,exam_time) 
-- VALUES (1,1,1,'2020-12-3','9-30 AM - 12-30 PM'),
--        (3,2,1,'2020-12-3','9-30 AM - 12-30 PM'),
--        (4,3,1,'2020-12-3','9-30 AM - 12-30 PM'),
--        (5,1,2,'2020-12-3','9-30 AM - 12-30 PM'),
--        (6,2,2,'2020-12-3','9-30 AM - 12-30 PM'),
--        
--        (1,3,2,'2020-12-5','9-30 AM - 12-30 PM'),
--        (3,1,3,'2020-12-5','9-30 AM - 12-30 PM'),
--        (4,2,3,'2020-12-5','9-30 AM - 12-30 PM'),
--        (5,3,3,'2020-12-5','9-30 AM - 12-30 PM'),
--        (6,1,4,'2020-12-5','9-30 AM - 12-30 PM'),
--        
--        (1,2,4,'2020-12-7','9-30 AM - 12-30 PM'),
--        (3,3,4,'2020-12-7','9-30 AM - 12-30 PM'),
--        (4,1,5,'2020-12-7','9-30 AM - 12-30 PM'),
--        (5,2,5,'2020-12-7','9-30 AM - 12-30 PM'),
--        (6,3,5,'2020-12-7','9-30 AM - 12-30 PM');

INSERT INTO Student(name,USN,year,dept_id) 
VALUES ('Kishore','01JST18CS002',3,1),
       ('Praveen','01JST18CS003',3,1),
	      ('Santhosh','01JST18CS004',3,1),
	      ('Vinay','01JST18CS005',3,1),
       
		('Abhi','01JST20CS001',1,1),
	 	('Chandan','01JST20CS002',1,1),
		('Hithesh','01JST20CS003',1,1),
		('Shreyas','01JST20CS004',1,1),
		('Vinod','01JST20CS005',1,1),
        
	   ('Avinash','01JST18CV001',3,4),
	   ('Dinesh','01JST18CV002',3,4),
    ('Ram','01JST18CV003',3,4),
	   ('Suresh','01JST18CV004',3,4),
	   ('Vishwas','01JST18CV005',3,4),
       
     ('Abhisekh','01JST20CV001',1,4),
		('Govind','01JST20CV002',1,4),
		('Pradeep','01JST20CV003',1,4),
		('Ravi','01JST20CV004',1,4),
		('Sampath','01JST20CV005',1,4);

INSERT INTO Student_allotment(USN,room_no) 
VALUES ('01JST18CS002',1),
       ('01JST18CS003',1),
       ('01JST18CS004',1);

INSERT INTO Student_allotment(USN,room_no) 
VALUES ('01JST18CS005',1),
       
          ('01JST18CV001',1),
          ('01JST18CV002',1),
          ('01JST18CV003',1),
          ('01JST18CV004',1),
          ('01JST18CV005',1),
       
          ('01JST20CS001',1),
          ('01JST20CS002',1),
          ('01JST20CS003',1),
		  ('01JST20CS004',1),
          ('01JST20CS005',1),
       
		  ('01JST20CV001',1),
          ('01JST20CV002',1),
          ('01JST20CV003',1),
          ('01JST20CV004',1),
          ('01JST20CV005',1);

INSERT INTO Student(name,USN,year,dept_id) 
VALUES ('Arushi Pratik','01JST17CS001',4,1),
	   ('Kartik Tamanna','01JST17CS002',4,1),
       ('Pran Pitambar','01JST17CS003',4,1),   
	   ('Namrata','01JST17CS004',4,1),
	   ('Sumit Minali','01JST17CS005',4,1),
       
		('Abhiram','01JST19CS001',2,1),
	 	('Chandana','01JST19CS002',2,1),
		('Mahendra','01JST19CS003',2,1),
		('Ranjit','01JST19CS004',2,1),
		('Vinod Krishna','01JST19CS005',2,1),
        
	   ('Damodar','01JST17CV001',4,4),
	   ('Kailash','01JST17CV002',4,4),
       ('Murali','01JST17CV003',4,4),
	   ('Shyam','01JST17CV004',4,4),
	   ('Suman','01JST17CV005',4,4),
       
        ('Apoorva','01JST19CV001',2,4),
		('Jaya Aravinda','01JST19CV002',2,4),
		('Pradeep Verma','01JST19CV003',2,4),
		('Rajeev Sandeep','01JST19CV004',2,4),
		('Sunder','01JST19CV005',2,4);
                
INSERT INTO Student_allotment(USN,room_no) 
VALUES ('01JST17CS001',3);
--        ('01JST17CS002',3),
--        ('01JST17CS003',3),
--        ('01JST17CS004',3),
--        ('01JST17CS005',3),
--        
--        ('01JST17CV001',3),
--        ('01JST17CV002',3),
--        ('01JST17CV003',3),
--        ('01JST17CV004',3),
--        ('01JST17CV005',3),
--        
--        ('01JST19CS001',3),
--        ('01JST19CS002',3),
--        ('01JST19CS003',3),
--        ('01JST19CS004',3),
--        ('01JST19CS005',3),
--        
--        ('01JST19CV001',3),
--        ('01JST19CV002',3),
--        ('01JST19CV003',3),
--        ('01JST19CV004',3),
--        ('01JST19CV005',3);

INSERT INTO Student(name,USN,year,dept_id) 
VALUES ('Dinesh N','01JST20IS001',1,3),
	   ('Pravin','01JST20IS002',1,3),
       ('Roshan ','01JST20IS003',1,3),   
	   ('Sudarshan','01JST20IS004',1,3),
	   ('Yash','01JST20IS005',1,3),
       
		('Abhiram','01JST19EC001',2,2),
	 	('Chandana','01JST19EC002',2,2),
		('Mahendra','01JST19EC003',2,2),
		('Ranjit','01JST19EC004',2,2),
		('Vinod Krishna','01JST19EC005',2,2),
        
	   ('Dyan','01JST18ME001',3,5),
	   ('Kalidas','01JST18ME002',3,5),
       ('Muralidar','01JST18ME003',3,5),
	   ('Sachin','01JST18ME004',3,5),
	   ('Sujay H','01JST18ME005',3,5),
       
        ('Anish U','01JST17IS001',4,3),
		('Deeraj','01JST17IS002',4,3),
		('Pavan','01JST17IS003',4,3),
		('Randeep','01JST17IS004',4,3),
		('Shivraj','01JST17IS005',4,3);
        
-- INSERT INTO Student_allotment(USN,room_no) 
-- VALUES ('01JST20IS001',4),
--        ('01JST20IS002',4),
--        ('01JST20IS003',4),
--        ('01JST20IS004',4),
--        ('01JST20IS005',4),
--        
--        ('01JST19EC001',4),
--        ('01JST19EC002',4),
--        ('01JST19EC003',4),
--        ('01JST19EC004',4),
--        ('01JST19EC005',4),
--        
--        ('01JST18ME001',4),
--        ('01JST18ME002',4),
--        ('01JST18ME003',4),
--        ('01JST18ME004',4),
--        ('01JST18ME005',4),
--        
--        ('01JST17IS001',4),
--        ('01JST17IS002',4),
--        ('01JST17IS003',4),
--        ('01JST17IS004',4),
--        ('01JST17IS005',4);

INSERT INTO Student(name,USN,year,dept_id) 
VALUES ('Abhay','01JST20EC001',1,2),
	   ('Ajit','01JST20EC002',1,2),
       ('Kishor Bharat','01JST20EC003',1,2),   
	   ('Nithin','01JST20EC004',1,2),
	   ('Saral Vijaya','01JST20EC005',1,2),
       
		('Akhil J','01JST19ME001',2,5),
	 	('Bhaskar','01JST19ME002',2,5),
		('Mani','01JST19ME003',2,5),
		('Ranjit N','01JST19ME004',2,5),
		('Sarvesh','01JST19ME005',2,5),
        
	   ('Chandrakant','01JST18IS001',3,3),
	   ('Devraj','01JST18IS002',3,3),
       ('Harsha','01JST18IS003',3,3),
	   ('Prashant','01JST18IS004',3,3),
	   ('Satish','01JST18IS005',3,3),
       
        ('Arun','01JST17EC001',4,2),
		('Gautam','01JST17EC002',4,2),
		('Narayan','01JST17EC003',4,2),
		('Ramesh K','01JST17EC004',4,2),
		('Vijay','01JST17EC005',4,2);
        
-- INSERT INTO Student_allotment(USN,room_no) 
-- VALUES ('01JST20EC001',5),
--        ('01JST20EC002',5),
--        ('01JST20EC003',5),
--        ('01JST20EC004',5),
--        ('01JST20EC005',5),
--        
--        ('01JST19ME001',5),
--        ('01JST19ME002',5),
--        ('01JST19ME003',5),
--        ('01JST19ME004',5),
--        ('01JST19ME005',5),
--        
--        ('01JST18IS001',5),
--        ('01JST18IS002',5),
--        ('01JST18IS003',5),
--        ('01JST18IS004',5),
--        ('01JST18IS005',5),
--        
--        ('01JST17EC001',5),
--        ('01JST17EC002',5),
--        ('01JST17EC003',5),
--        ('01JST17EC004',5),
--        ('01JST17EC005',5);


INSERT INTO Student(name,USN,year,dept_id) 
VALUES ('Anoop','01JST20ME001',1,5),
	   ('Nirmal Parth','01JST20ME002',1,5),
       ('Rajender','01JST20ME003',1,5),   
	   ('Saral Jyothi','01JST20ME004',1,5),
	   ('Shyam Dhaval','01JST20ME005',1,5),
       
		('Aswathi Kailash','01JST19IS001',2,3),
	 	('Jagannath','01JST19IS002',2,3),
		('Mahavir','01JST19IS003',2,3),
		('Naveen','01JST19IS004',2,3),
		('Ravi Rishi','01JST19IS005',2,3),
        
	   ('Anupam','01JST18EC001',3,2),
	   ('Hari','01JST18EC002',3,2),
       ('Inderjeet','01JST18EC003',3,2),
	   ('Rishi','01JST18EC004',3,2),
	   ('Vardhan','01JST18EC005',3,2),
       
        ('Balakrishna','01JST17ME001',4,5),
		('Chandra','01JST17ME002',4,5),
		('Mohan','01JST17ME003',4,5),
		('Nikhil','01JST17ME004',4,5),
		('Swarna','01JST17ME005',4,5);
        
-- INSERT INTO Student_allotment(USN,room_no) 
-- VALUES ('01JST20ME001',6),
--        ('01JST20ME002',6),
--        ('01JST20ME003',6),
--        ('01JST20ME004',6),
--        ('01JST20ME005',6),
--        
--        ('01JST19IS001',6),
--        ('01JST19IS002',6),
--        ('01JST19IS003',6),
--        ('01JST19IS004',6),
--        ('01JST19IS005',6),
--        
--        ('01JST18EC001',6),
--        ('01JST18EC002',6),
--        ('01JST18EC003',6),
--        ('01JST18EC004',6),
--        ('01JST18EC005',6),
--        
--        ('01JST17ME001',6),
--        ('01JST17ME002',6),
--        ('01JST17ME003',6),
--        ('01JST17ME004',6),
--        ('01JST17ME005',6);
       
INSERT INTO Teacher_allotment(room_no,teacher_id,dept_id,exam_date,exam_time) 
VALUES (1,1,1,'2020-12-3','9-30 AM - 12-30 PM');
--        (3,2,1,'2020-12-3','9-30 AM - 12-30 PM'),
--        (4,3,1,'2020-12-3','9-30 AM - 12-30 PM'),
--        (5,1,2,'2020-12-3','9-30 AM - 12-30 PM'),
--        (6,2,2,'2020-12-3','9-30 AM - 12-30 PM'),
--        
--        (1,3,2,'2020-12-5','9-30 AM - 12-30 PM'),
--        (3,1,3,'2020-12-5','9-30 AM - 12-30 PM'),
--        (4,2,3,'2020-12-5','9-30 AM - 12-30 PM'),
--        (5,3,3,'2020-12-5','9-30 AM - 12-30 PM'),
--        (6,1,4,'2020-12-5','9-30 AM - 12-30 PM'),
--        
--        (1,2,4,'2020-12-7','9-30 AM - 12-30 PM'),
--        (3,3,4,'2020-12-7','9-30 AM - 12-30 PM'),
--        (4,1,5,'2020-12-7','9-30 AM - 12-30 PM'),
--        (5,2,5,'2020-12-7','9-30 AM - 12-30 PM'),
--        (6,3,5,'2020-12-7','9-30 AM - 12-30 PM');

INSERT INTO Teacher(name,teacher_id,dept_id)
VALUES  ('Nataraj S',1,6);

INSERT INTO Teacher(name,teacher_id,dept_id)
VALUES  ('Shivkumar M',1,7);
