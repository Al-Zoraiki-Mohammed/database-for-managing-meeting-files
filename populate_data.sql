-- Population tables with some data samples.
INSERT INTO Users (UserID, UserName, Email, Password, UserType)
VALUES 
    (1, 'Mohammed', 'mama@gmail.com', '1234', 'Admin'),
    (2, 'Ali', 'ali@gmail.com', '1234', 'Admin');

-- ----------------------------------------
INSERT INTO Meetings (Title, Description, Date, Time, Location, OrganizerID, Status)
VALUES 
    ('Project Kickoff', 'Meeting to discuss project goals', '2023-11-07', '20:00:00', 'Conference Room A', 1, 'Scheduled');

-- ----------------------------------------
INSERT INTO Files (FileName, FilePath, MeetingID, UploadedByUserID, UploadDateTime)
VALUES 
    ('example_file.txt', 'somewhere/uploads/example_file.txt', 1, 1, '2023-11-10 15:00:00');

-- ----------------------------------------
INSERT INTO Interactions (MeetingID, UserID, FileID, InteractionType, InteractionContent, InteractionDateTime)
VALUES 
    (1, 1, 1, 'Comment', 'Great discussion!', '2023-11-10 14:30:00');

-- ----------------------------------------
INSERT INTO Votes (MeetingID, UserID, VoteType, VoteDateTime)
VALUES 
    (1, 1, 'Agree', '2023-11-10 14:45:00');
