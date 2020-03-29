CREATE DATABASE IF NOT EXISTS join_example;

use join_example;

CREATE TABLE IF NOT EXISTS PrimeNumbers(
	Id INTEGER AUTO_INCREMENT PRIMARY KEY,
	PrimeValue INTEGER
);

CREATE TABLE IF NOT EXISTS FibbNumbers(
	Id INTEGER AUTO_INCREMENT PRIMARY KEY,
	FibbValue INTEGER
);

INSERT INTO PrimeNumbers VALUES (NULL, 2);
INSERT INTO PrimeNumbers VALUES (NULL, 3);
INSERT INTO PrimeNumbers VALUES (NULL, 5);
INSERT INTO PrimeNumbers VALUES (NULL, 7);
INSERT INTO PrimeNumbers VALUES (NULL, 11);
INSERT INTO PrimeNumbers VALUES (NULL, 13);
INSERT INTO PrimeNumbers VALUES (NULL, 17);
INSERT INTO PrimeNumbers VALUES (NULL, 19);

INSERT INTO FibbNumbers VALUES (NULL, 1);
INSERT INTO FibbNumbers VALUES (NULL, 1);
INSERT INTO FibbNumbers VALUES (NULL, 2);
INSERT INTO FibbNumbers VALUES (NULL, 3);
INSERT INTO FibbNumbers VALUES (NULL, 5);
INSERT INTO FibbNumbers VALUES (NULL, 8);
INSERT INTO FibbNumbers VALUES (NULL, 13);
INSERT INTO FibbNumbers VALUES (NULL, 21);

SELECT * FROM PrimeNumbers;
SELECT * FROM FibbNumbers;

SELECT * FROM PrimeNumbers pN
INNER JOIN FibbNumbers fN
ON pN.PrimeValue = fN.FibbValue;

-- примера от презентацията дава друг резултат
SELECT * FROM PrimeNumbers pN
LEFT JOIN FibbNumbers fN
ON pN.PrimeValue = fN.FibbValue;

-- примера от презентацията дава друг резултат
SELECT * FROM PrimeNumbers pN
RIGHT JOIN FibbNumbers fN
ON pN.PrimeValue = fN.FibbValue;

-- ---------------------------------------------

CREATE TABLE IF NOT EXISTS Students(
	Id INTEGER AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(150) NOT NULL,
    Class VARCHAR(3) NOT NULL
);

CREATE TABLE IF NOT EXISTS Subjects(
	Id INTEGER AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS StudentSubjects(
	StudentID INTEGER NOT NULL,
    SubjectID INTEGER NOT NULL,
    PRIMARY KEY (StudentID, SubjectID),
    FOREIGN KEY (StudentID) REFERENCES Students(Id) ON DELETE CASCADE,
    FOREIGN KEY (SubjectID) REFERENCES Subjects(Id)
);

INSERT INTO Students VALUES (NULL, 'Alexander Stoichkov', '11b');
INSERT INTO Students VALUES (NULL, 'Alexander Peshov', '11a');
INSERT INTO Students VALUES (NULL, 'Pesho Stoichkov', '11v');

INSERT INTO Subjects VALUES (NULL, 'SUBD');
INSERT INTO Subjects VALUES (NULL, 'TP');
INSERT INTO Subjects VALUES (NULL, 'OOP');

INSERT INTO StudentSubjects VALUES (1, 2);
INSERT INTO StudentSubjects VALUES (2, 3);
INSERT INTO StudentSubjects VALUES (3, 1);

SELECT * from StudentSubjects;

DELETE FROM Students WHERE Id = 1;

SELECT * from StudentSubjects;