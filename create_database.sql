CREATE DATABASE IF NOT EXISTS meeting_fiiles;
USE meeting_fiiles;


CREATE TABLE Users  (
    UserID INT PRIMARY KEY,
    UserName VARCHAR(50),
    Email VARCHAR(100),
    Password VARCHAR(255),
    UserType ENUM('Admin', 'Regular User')
);


CREATE TABLE Meetings (
    MeetingID INT PRIMARY KEY,
    Title VARCHAR(100),
    Description TEXT,
    Date DATE,
    Time TIME,
    Location VARCHAR(255),
    OrganizerID INT,
    Status ENUM('Scheduled', 'In Progress', 'Completed', 'Canceled'),
    FOREIGN KEY (OrganizerID) REFERENCES Users(UserID)
);


CREATE TABLE Files (
    FileID INT PRIMARY KEY,
    FileName VARCHAR(255),
    FilePath VARCHAR(255),
    MeetingID INT,
    UploadedByUserID INT,
    UploadDateTime TIMESTAMP,
    FOREIGN KEY (MeetingID) REFERENCES Meetings(MeetingID),
    FOREIGN KEY (UploadedByUserID) REFERENCES Users(UserID)
);


CREATE TABLE Interactions (
    InteractionID INT PRIMARY KEY,
    MeetingID INT,
    UserID INT,
    FileID INt,        
    InteractionType VARCHAR(50),
    InteractionContent TEXT,
    InteractionDateTime TIMESTAMP,
    FOREIGN KEY (MeetingID) REFERENCES Meetings(MeetingID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
     FOREIGN KEY (FileID) REFERENCES Files(FileID)
);


CREATE TABLE Votes (
    VoteID INT PRIMARY KEY,
    MeetingID INT,
    UserID INT,
    VoteType VARCHAR(50),
    VoteDateTime TIMESTAMP,
    FOREIGN KEY (MeetingID) REFERENCES Meetings(MeetingID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
); 
