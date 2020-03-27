CREATE TABLE subjects(
  id SERIAL PRIMARY KEY,
  subject_name varchar(50),
  stem boolean
);

INSERT INTO subjects(
  subject_name,
  stem
)
VALUES('math', 't'),
('computer science', 't'),
('apush', 'f'),
('econ', 'f'),
('chem', 't'),
('art', 'f');

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name varchar(50) NOT NULL,
  favorite_subject varchar(50),
  grade int NOT NULL
);

INSERT INTO students (
  name,
  favorite_subject,
  grade
)
VALUES('paul', 'computer science', '12'),
('steph', 'art', '11'),
('laish', 'math', '11'),
('cielo', 'chem', '9'),
('carms', 'apush','11'),
('maya', 'art', '12');

ALTER TABLE students
ALTER COLUMN name, grade
SET NOT NULL;

SELECT max(count)
FROM students;

SELECT count(stem) AS "are stem classes"
FROM subjects
WHERE stem = 'f';

SELECT count(stem) AS "are stem classes"
FROM subjects
WHERE stem = 't';

ALTER TABLE students
ADD COLUMN  email varchar(10) ;

UPDATE students SET email = '@edu.com';

SELECT email AS "senior student emails"
FROM students
WHERE grade = 12;

SELECT max(length(name))
FROM students;
