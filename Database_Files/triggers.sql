DELIMITER $$

CREATE TRIGGER building_check
     BEFORE INSERT ON Room FOR EACH ROW 
     BEGIN
          IF NEW.building != 'Polymer Science Block'
          THEN
              SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Choose correct building';
          END IF;
     END;
$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER capacity_check
     BEFORE INSERT ON exam_scheduling_db.Student_allotment FOR EACH ROW 
     BEGIN
     
     DECLARE room_strength INT;
     DECLARE room_capacity INT;
     
     SET room_strength = (SELECT COUNT(*) FROM exam_scheduling_db.Student_allotment WHERE room_no = NEW.room_no);
     SET room_capacity = (SELECT capacity FROM exam_scheduling_db.Room WHERE room_no = NEW.room_no);
     
     IF  room_strength = room_capacity
          THEN
              SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Room Full!';
          END IF;
     END;
$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER single_slot_time_table
     BEFORE INSERT ON exam_scheduling_db.Exam FOR EACH ROW 
     BEGIN
     
     DECLARE first_validity VARCHAR(10);
     DECLARE other_validity VARCHAR(10);
     
     IF NEW.year = 1
			THEN
				 SET first_validity = (SELECT course_id FROM exam_scheduling_db.Exam WHERE exam_date = NEW.exam_date AND year = NEW.year);
                  
                  IF first_validity IS NOT NULL THEN
			           SIGNAL SQLSTATE '45000'
                          SET MESSAGE_TEXT = 'Single Exam Only (First Year)!';
	              END IF;
      END IF;  
      
	  IF NEW.year != 1 	THEN
           SET other_validity = (SELECT course_id FROM exam_scheduling_db.Exam WHERE NEW.exam_date = exam_date AND NEW.year = year AND NEW.dept_id = dept_id);
		      
              IF other_validity IS NOT NULL THEN
			       SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = 'Single Exam Only (Others)!';
	          END IF;
     END IF;
  END;
$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER date_time_check
     BEFORE INSERT ON exam_scheduling_db.Teacher_allotment FOR EACH ROW 
     BEGIN
     
     DECLARE slot_validity VARCHAR(10);
     SET slot_validity = (SELECT course_id FROM exam_scheduling_db.Exam WHERE NEW.exam_date = exam_date LIMIT 1);
     
     IF slot_validity IS NULL
			THEN
				SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = 'No Exams on this day!';
	 END IF;
     
	 IF NEW.exam_time != '9-30 AM - 12-30 PM' AND NEW.exam_time != '2-00 PM - 5-00 PM'
			THEN
				SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = 'Enter Standard Time!';
	 END IF;
  END;
$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER single_slot_teacher
     BEFORE INSERT ON exam_scheduling_db.Teacher_allotment FOR EACH ROW 
     BEGIN
     
     DECLARE day_validity INT;
     DECLARE room_validity INT;
     SET day_validity = (SELECT teacher_id FROM exam_scheduling_db.Teacher_allotment WHERE NEW.exam_date = exam_date AND NEW.teacher_id = teacher_id AND NEW.dept_id = dept_id);
     SET room_validity = (SELECT teacher_id FROM exam_scheduling_db.Teacher_allotment WHERE NEW.exam_date = exam_date AND NEW.room_no = room_no);
     
     IF day_validity IS NOT NULL OR room_validity IS NOT NULL
			THEN
				SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = 'Single Slot Only!';
	 END IF;
  END;
$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER room_check
     BEFORE INSERT ON exam_scheduling_db.Teacher_allotment FOR EACH ROW 
     BEGIN
     
     DECLARE room_validity INT;
     SET room_validity = (SELECT room_no FROM exam_scheduling_db.Student_allotment WHERE NEW.room_no = room_no LIMIT 1);
     
     IF room_validity IS NULL
			THEN
				SIGNAL SQLSTATE '45000'
                       SET MESSAGE_TEXT = 'This room is not alloted!';
	 END IF;
  END;
$$

DELIMITER ;

