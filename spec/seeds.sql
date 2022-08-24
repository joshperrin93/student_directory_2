CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name text,
  starting_date date
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name text,
  cohort_id int,
  constraint fk_cohort foreign key(cohort_id) references cohorts(id) on delete cascade
);

INSERT INTO cohorts (name, starting_date) VALUES 
('July', '2022-07-25'),
('May', '2022-05-01'),
('March', '2022-03-15');


INSERT INTO students (name, cohort_id) VALUES 
('Nick', 1),
('Josh', 1),
('Ted', 2),
('Juliet', 2),
('Juniper', 3),
('Jupiter', 3);
