DROP DATABASE IF EXISTS bookClub;
CREATE DATABASE bookClub;

use bookclub;
create table readers
(
	id int NOT NULL AUTO_INCREMENT,
	reader_name varchar(50) NOT NULL,
	age int NOT NULL,
    gender varchar(50),
    email varchar(50),
	PRIMARY KEY (id)
);


INSERT INTO readers (reader_name, age, gender, email) VALUES ('Kristal Murphy', '33', 'female', 'Folsom' 'iknow@mystuff.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Tyler Niccols', '26', 'male', 'Davis' 'awesomecoder@youknowthis.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Vitaliy Feyster', '37', 'male', 'Sacramento' 'theukrainetrain@muzhik.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Alex NotTheTA', '39', 'male', 'Rancho Cordova' 'myfrontendisbetter@thanyours.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Patrick Thompson', '39', 'male', 'Sacramento' 'pt@alongfortheride.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Captain Marvel', '31', 'female', 'Roseville' 'cm@marvel.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Wonder Wonder', '37', 'female', 'Folsom' 'imawonder@dc.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Billy Gruff', '45', 'male', 'Davis' 'thegoat@gruff.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Joe Bob', '43', 'male', 'Folsom' 'jb@redneck.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Super Man', '37', 'male', 'Sacramento' 'imsuper@dc.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Aunt Sally', '43', 'female', 'Sacramento' 'icanhelp@withalgebra.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Bille Jean', '53', 'female', 'Sacramento' 'bj@notmylover.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Mark Morris', '53', 'male', 'Folsom' 'onehit@wonder.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Leo Qiu', '27', 'male', 'Davis' 'leo@goesgrr.com');
INSERT INTO readers (reader_name, age, gender, email) VALUES ('Mark Davis', '47', 'male', 'Sacramento' 'thehead@raider.com');

create table locations
(
	id int NOT NULL AUTO_INCREMENT,
    meetup_location varchar(50),
    PRIMARY KEY (id)
	
	
);

INSERT INTO locations (meetup_location) VALUES ('Roseville Starbucks');
INSERT INTO locations (meetup_location) VALUES ('Folsom Barnes n Noble');
INSERT INTO locations (meetup_location) VALUES ('Sacramento Temple Coffee');


create table books
(
	id int NOT NULL AUTO_INCREMENT,
    title varchar(50),
    author varchar(50),
    PRIMARY KEY (id)
	
	
);

INSERT INTO books (title, author) VALUES ('Lord of the Rings', 'J.R.R. Tolkien');
INSERT INTO books (title, author) VALUES ('The Wheel of Time', 'Brandon Sanderson');
INSERT INTO books (title, author) VALUES ('Moneyball', 'Michael Lewis');
