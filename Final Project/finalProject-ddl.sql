CREATE TABLE people
(
  id serial primary key,
  firstName varchar(15),
  lastName varchar(30),
  address varchar(100)
);

CREATE TABLE instruments
(
  id serial primary key,
  instrumentType varchar(40),
  pictureURL varchar(100),
  ownerID integer NOT NULL REFERENCES people(id)
);

CREATE TABLE reservedDates
(
  id serial primary key,
  reserved date,
  instrumentID integer NOT NULL REFERENCES instruments(id)
);