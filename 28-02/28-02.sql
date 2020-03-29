USE subd;

CREATE TABLE IF NOT EXISTS Students (
    Id INTEGER AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(128) NOT NULL,
    Class VARCHAR(3) NOT NULL,
    Status CHAR(1) DEFAULT 'A',
    EntranceExamResult NUMERIC(3,2),
    Birthday DATE,
    EGN CHAR(10)
);