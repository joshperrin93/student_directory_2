TRUNCATE TABLE cohorts, students RESTART IDENTITY; 

INSERT INTO cohorts (name, starting_date) VALUES 
('May', '2022-05-25'),
('July', '2022-07-25');

INSERT INTO students (name, cohort_id) VALUES ('David', '1');
INSERT INTO students (name, cohort_id) VALUES ('Tim', '1');
INSERT INTO students (name, cohort_id) VALUES ('Agatha', '2');
INSERT INTO students (name, cohort_id) VALUES ('Anna', '2');