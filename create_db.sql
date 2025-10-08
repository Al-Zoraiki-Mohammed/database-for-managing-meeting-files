-- Table: Users
CREATE TABLE Users (
    UserID SERIAL PRIMARY KEY,
    UserName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    UserType VARCHAR(20) NOT NULL,
    CONSTRAINT chk_user_type CHECK (UserType IN ('Admin', 'Regular User'))
);

--------------------------------------------------------------------------------

-- Table: Meetings
CREATE TABLE Meetings (
    MeetingID SERIAL PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Description TEXT,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Location VARCHAR(255),
    OrganizerID INT NOT NULL,
    Status VARCHAR(20) NOT NULL,
    CONSTRAINT chk_meeting_status CHECK (Status IN ('Scheduled', 'In Progress', 'Completed', 'Canceled')),
    
    FOREIGN KEY (OrganizerID) REFERENCES Users(UserID)
);

--------------------------------------------------------------------------------

-- Table: Files
CREATE TABLE Files (
    FileID SERIAL PRIMARY KEY,
    FileName VARCHAR(255) NOT NULL,
    FilePath VARCHAR(255) NOT NULL,
    MeetingID INT NOT NULL,
    UploadedByUserID INT NOT NULL,
    UploadDateTime TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (MeetingID) REFERENCES Meetings(MeetingID),
    FOREIGN KEY (UploadedByUserID) REFERENCES Users(UserID)
);

--------------------------------------------------------------------------------

-- Table: Interactions
CREATE TABLE Interactions (
    InteractionID SERIAL PRIMARY KEY,
    MeetingID INT NOT NULL,
    UserID INT NOT NULL,
    FileID INT,        
    InteractionType VARCHAR(50) NOT NULL,
    InteractionContent TEXT,
    InteractionDateTime TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (MeetingID) REFERENCES Meetings(MeetingID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (FileID) REFERENCES Files(FileID)
);

--------------------------------------------------------------------------------

-- Table: Votes
CREATE TABLE Votes (
    VoteID SERIAL PRIMARY KEY,
    MeetingID INT NOT NULL,
    UserID INT NOT NULL,
    VoteType VARCHAR(50) NOT NULL,
    VoteDateTime TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (MeetingID) REFERENCES Meetings(MeetingID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
