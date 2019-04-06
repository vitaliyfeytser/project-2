DROP DATABASE IF EXISTS bookClub;
CREATE DATABASE bookClub;

use bookClub;
create table readers
(
	id int NOT NULL AUTO_INCREMENT,
	firstName varchar(50) NOT NULL,
    lastName varchar(50) NOT NULL,
	birthdate date NOT NULL,
    gender varchar(50),
    email varchar(50),
    current
	PRIMARY KEY (id),
    PRIMARY KEY (user_name)
);


INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Kristal', 'Murphy','1985/01/01', 'female', 'iknow@mystuff.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Tyler', 'Niccols','1979/02/02', 'male', 'awesomecoder@youknowthis.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Vitaliy', 'Feyster', '1982/03/03', 'male','theukrainetrain@muzhik.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Alex', 'Tardif', '1979/04/04', 'male', 'myfrontendisbetter@thanyours.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Patrick', 'Thompson','1980/03/18', 'male', 'pt@alongfortheride.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Captain', 'Marvel', '1988/06/06', 'female', 'badmamajama@marvel.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Wonder', 'Wonder', '1984/07/07', 'female','imawonder@dc.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Billy', 'Gruff', '1960/04/04', 'male', 'thegoat@gruff.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Joe', 'Bob', '1973/02/02', 'male', 'jb@redneck.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Super', 'Man', '1965/02/02', 'male', 'imsuper@dc.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Aunt', 'Sally', '1959/03/03', 'female', 'icanhelp@withalgebra.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Bille', 'Jean', '1969/04/04', 'female','bj@notmylover.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Mark', 'Morris', '1970/01/01', 'male','onehit@wonder.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Leo', 'Qiu', 'leogoesger', '1992/04/15', 'male', 'leo@goesger.com');
INSERT INTO readers (firstName, lastName, birthdate, gender, email) VALUES ('Mark', 'Davis', '1963/02/02', 'male', 'thehead@raider.com');

create table locations
(
	id int NOT NULL AUTO_INCREMENT,
    placeName varchar(50),
    placeAddress varchar(50,)
    meetingTimes varchar(50),
    PRIMARY KEY (id)
	
	
);

INSERT INTO locations (placeName, placeAddress, meetingTimes) VALUES ('Starbucks', '1401 Alhambra Blvd. Sacramento, CA' ,'Friday Night');
INSERT INTO locations (placeName, placeAddress, meetingTimes) VALUES ('Starbucks', '1020 16th St. Sacramento, CA','Saturday Night');
INSERT INTO locations (placeName, placeAddress, meetingTimes) VALUES ('Starbucks', '5300 Folsom Blvd. Sacramento, CA','Sunday Night');


create table promotedBooks
(
	id int NOT NULL AUTO_INCREMENT,
    title varchar(50),
    author varchar(50),
    monthAndYearPromoted date,
    PRIMARY KEY (id)
	
	
);

INSERT INTO books (title, author, monthAndYearPromoted) VALUES ('Action Bible', 'God', '2019/04/01');
INSERT INTO books (title, author, monthAndYearPromoted) VALUES ('Kama Sutra for Beginner', 'Joshua Matthew', '2019/04/01');
INSERT INTO books (title, author, monthAndYearPromoted) VALUES ('Yellow Pages', 'Yellow Pages', '2019/04/01');
INSERT INTO books (title, author, monthAndYearPromoted) VALUES ('Lord of the Rings', 'J.R.R. Tolkien', '2019/05/01');
INSERT INTO books (title, author, monthAndYearPromoted) VALUES ('The Wheel of Time', 'Brandon Sanderson', '2019/05/01');
INSERT INTO books (title, author, monthAndYearPromoted) VALUES ('1984', 'George Orwell', '2019/05/01');
INSERT INTO books (title, author, monthAndYearPromoted) VALUES ('The Space Trilogy', 'C.S. Lewis', '2019/06/01');
INSERT INTO books (title, author, monthAndYearPromoted) VALUES ('Enders Game', 'Orson Scott Card', '2019/06/01');
INSERT INTO books (title, author, monthAndYearPromoted) VALUES ('Brave New World', 'Aldous Huxley', '2019/06/01');

create table favoriteBooks
(
	bookId int NOT NULL,
    userId int NOT NULL
	
	
);
