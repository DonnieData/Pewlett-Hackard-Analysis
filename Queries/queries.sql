-- DROP TABLE retirement_info;


-- Retirement eligibility
SELECT emp_no, first_name, last_name
INTO retirement_info 
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- checking to make sure employees are still with the company 
SELECT ri.emp_no, ri.first_name, ri.last_name, de.to_date
	INTO current_emp
	FROM retirement_info as ri
	LEFT JOIN department_employee as de
	ON ri.emp_no = de.emp_no
	WHERE de.to_date = ('9999-01-01');

-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
	INTO retirement_by_dept
	FROM current_emp as ce
	LEFT JOIN department_employee as de
	ON ce.emp_no = de.emp_no
	GROUP BY de.dept_no
	ORDER BY de.dept_no;


-- Employee Information for retirement eligible employees 
SELECT e.emp_no, 
	   e.first_name, 
	   e.last_name,
	   e.gender,
	   s.salary, 
	   de.to_date
	INTO emp_info
	FROM employees as e
	INNER JOIN salaries as s
		ON (e.emp_no = s.emp_no)
	INNER JOIN department_employee as de
		ON (e.emp_no = de.emp_no)
	WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
    	AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- management from each department who are eligible for retirement 
-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
	INTO manager_info
	FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);


-- retirees by department 
SELECT ce.emp_no,
	   ce.first_name,
	   ce.last_name,
	   d.dept_name
	   -- INTO dept_info
	   FROM current_emp as ce
	   INNER JOIN department_employee AS de
			ON (ce.emp_no = de.emp_no)
	   INNER JOIN departments AS d
			ON (de.dept_no = d.dept_no);













