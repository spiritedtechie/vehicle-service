DROP TABLE VEHICLE IF EXISTS;

DROP TABLE REGISTEREDKEEPER IF EXISTS;

CREATE TABLE REGISTEREDKEEPER(
	ID BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1) NOT NULL PRIMARY KEY,
	AREA VARCHAR(255),
	CITY VARCHAR(255),
	FIRSTNAME VARCHAR(255),
	HOUSENUMBER VARCHAR(255),
	LASTNAME VARCHAR(255),
	POSTCODE VARCHAR(255),
	REGISTEREDFROM TIMESTAMP,
	REGISTEREDTO TIMESTAMP,
	STREET VARCHAR(255));

CREATE TABLE VEHICLE(
	REGISTRATIONNUMBER VARCHAR(255) NOT NULL PRIMARY KEY,
	ENGINESIZE VARCHAR(255),
	MAKE VARCHAR(255),
	MODEL VARCHAR(255),
	MOTDUEDATE TIMESTAMP,
	YEAROFMANUFACTURE TIMESTAMP,
	REGISTEREDKEEPER_ID BIGINT,
	CONSTRAINT REGISTERED_KEEPER_FK FOREIGN KEY(REGISTEREDKEEPER_ID) REFERENCES REGISTEREDKEEPER(ID));
