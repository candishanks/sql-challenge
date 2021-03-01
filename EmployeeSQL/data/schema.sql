-- Create tables, create columns, and import CSV files
CREATE TABLE titles (
  title_id character NOT NULL,
  title character NOT NULL, 
  PRIMARY KEY (title_id)
);

CREATE TABLE departments (
  dept_no character NOT NULL,
  dept_name character NOT NULL, 
  PRIMARY KEY (dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL, 
  PRIMARY KEY (emp_no)
);

CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id character NOT NULL,
  birth_date date,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  sex character,
  hire_date date, 
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_manager (
  dept_no character NOT NULL,
  emp_no INT NOT NULL, 
  PRIMARY KEY (dept_no), 
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no character NOT NULL, 
  PRIMARY KEY (emp_no), 
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
