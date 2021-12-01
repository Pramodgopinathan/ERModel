# Database Design for an Organization

# Abstract 
An entity relationship diagram (ERD), also known as an entity relationship model, is a graphical representation that depicts relationships among people, objects, places, concepts or events within an information technology (IT) system. We have to design database design for an Organization as per the requirement.

# Problem
The Company database keeps track of a company's employee, departments and projects
The Company is organized into departments. Each department has a unqiue name, a unique number and a particular employee who manages the departments. We keep track of the start date when that empployee began managing the department. A department may have serveral locations.
A department controls a number of projects, each of which has a unique name, a unique number and a single locations
We store each employee name, social security number, address, salary, sex(gender) and birth date. An employee is assigned to one departements, but may work on several projects, which are not necessarily controlled by the same department. We keep track of the current number of hours per week that an employee works on each projects
We want to keep track of the dependents of each employee for insurance purposes. We keep each dependents first name, sex, birth date and relationship to the employee

# ER Diagram

![](https://github.com/Pramodgopinathan/ERModel/blob/e234217509165f238a64791efc520de4efb4f33f/ER%20D.jpg)

# ER Diagram Elements

![](https://github.com/Pramodgopinathan/ERModel/blob/9881994bf72f25169f7d07436e229b1581a44d87/ER-Diagram-Elements.jpeg)

# ER Representation

![](https://github.com/Pramodgopinathan/ERModel/blob/256f9d40d7b84faa403ce133ed54d4edffeb62c2/ER%20Diagram.PNG)

# CREATE TABLE

``` SQL

DROP TABLE IF EXISTS dbo.employee
DROP TABLE IF EXISTS dbo.dependent
DROP TABLE IF EXISTS dbo.department
DROP TABLE IF EXISTS dbo.project
DROP TABLE IF EXISTS dbo.name

CREATE TABLE name (
	name varchar (244) NOT NULL PRIMARY KEY,
	fname varchar (244),
	mname varchar (244),
	lname varchar (244)
);
CREATE TABLE employee (
	SSn INT NOT NUll PRIMARY KEY,
	sdate DATE,
	name varchar (244),
	address varchar (244),
	salary INT NOT NULL,
	sex varchar (244)
	FOREIGN KEY(name) REFERENCES dbo.name(name)
);
CREATE TABLE dependent (
	name varchar (244) NOT NULL PRIMARY KEY,
	sex varchar (244),
	b_date DATE,
	relationship varchar (244),
	FOREIGN KEY(name) REFERENCES dbo.name(name)
);

CREATE TABLE department (
	num INT NOT NUll PRIMARY KEY,
	name varchar (244),
	location varchar (244)
	FOREIGN KEY(name) REFERENCES dbo.name(name)
);

CREATE TABLE project (
	Pnumb INT NOT NUll PRIMARY KEY,
	Pname varchar (244), 
	Plocation varchar (244),
	FOREIGN KEY(Pnumb) REFERENCES dbo.department(num),
	FOREIGN KEY(Pnumb) REFERENCES dbo.employee(SSn)

);

```
# Conclusion

Above is the way to design database design for an Organization as per the requirement.
