-- Create tables, create columns, and import CSV files
DROP TABLE IF EXISTS departments CASCADE; 
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE; 
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS employees CASCADE; 

CREATE TABLE titles (
  title_id varchar NOT NULL,
  title varchar NOT NULL, 
  PRIMARY KEY (title_id)
);

CREATE TABLE departments (
  dept_no varchar NOT NULL,
  dept_name varchar NOT NULL, 
  PRIMARY KEY (dept_no)
);

CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL, 
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE employees (
  emp_no INT NOT NULL,
  emp_title_id varchar NOT NULL,
  birth_date date,
  first_name varchar NOT NULL,
  last_name varchar NOT NULL,
  sex varchar,
  hire_date date, 
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_manager (
  dept_no varchar NOT NULL,
  emp_no INT NOT NULL, 
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no), 
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no varchar NOT NULL, 
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no), 
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
