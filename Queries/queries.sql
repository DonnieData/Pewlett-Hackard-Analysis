-- Retirement eligibility
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- 


-- Joining departments, employees and department employees 
SELECT r.emp_no, d.dept_no,e.dept_name, r.first_name, r.last_name
	FROM retirement_info as r
	LEFT JOIN department_employee as d 
	ON r.emp_no = d.emp_no
	LEFT JOIN departments as e
	ON d.dept_no = e.dept_no
	;

-- Joining departments and dept_manager tables
SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;

-- checking to make sure employees are still with the company 
SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
	de.to_date
	INTO current_emp
	FROM retirement_info as ri
	LEFT JOIN department_employee as de
	ON ri.emp_no = de.emp_no
	WHERE de.to_date = ('9999-01-01');