use tables;
show tables;
CREATE TABLE stds(
	student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id int
);
CREATE TABLE cors(
	course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);
CREATE TABLE pyts(
	payment_id INT PRIMARY KEY,
    student_id INT,
    amount INT
);
-- Insert student records (student_id, name, course_id)
INSERT INTO stds VALUES
(1, 'Amit', 101),
(2, 'Neha', 102),
(3, 'Rahul', 101),
(4, 'Priya', NULL);

-- Insert course records (course_id, course_name)
INSERT INTO cors VALUES
(101, 'Data Science'),
(102, 'Web Development');
INSERT INTO cors VALUES
(103, 'Data Analytics');


-- Insert payment records (payment_id, student_id, amount)
INSERT INTO pyts VALUES
(1, 1, 5000),
(2,2, 6000),
(3, 3, 2000);
select*from stds;
select*from cors;
select*from pyts;
select s.name,c.course_name
from stds s
join cors c on c.course_id=s.course_id;
select s.name,c.course_name
from stds s
right join cors c on c.course_id=s.course_id;
select s.name,c.course_name
from stds s
left join cors c on c.course_id=s.course_id;
