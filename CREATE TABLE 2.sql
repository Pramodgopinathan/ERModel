
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