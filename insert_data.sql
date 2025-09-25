USE meeting_fiiles;

INSERT INTO Users (UserID, UserName, Email, Password, UserType)
	VALUES (1, 'Mohammed Al-Zoraiki', 'mama@gamil.com', 'hashed_password', 'Admin'),
	(2, 'Hamza', 'Hamza@gamil.com', 'hashed_password', 'Admin'),
	(3, 'Eliza', 'Eliza@gamil.com', 'hashed_password', 'Admin'),
	(4, 'Labar', 'Labar@gamil.com', 'hashed_password', 'Admin'),
	(5, 'Ali', 'Ali@gamil.com', 'hashed_password', 'Regular User'),
	(6, 'Ahmed', 'Ahmed@gamil.com', 'hashed_password', 'Regular User');
        
      
INSERT INTO Meetings (MeetingID, Title, Description, Date, Time, Location, OrganizerID, Status)
	VALUES (1, 'Project Kickoff', 'Meeting to discuss project goals', '2023-11-7', '20:00:00', 'Conference Room A', 1, 'Scheduled');
    
        
INSERT INTO Files (FileID, FileName, FilePath, MeetingID, UploadedByUserID, UploadDateTime)
VALUES (1, 'example_file.txt', 'somewhere/uploads/example_file.txt', 1, 1, '2023-11-10 15:00:00');


INSERT INTO Interactions (InteractionID, FileID, UserID, InteractionType, InteractionContent, InteractionDateTime)
	VALUES (1, 1, 3, 'Comment', 'Great discussion!', '2023-11-10 14:30:00'),
           (2, 1, 4, 'Vote', 'Agree', '2023-11-10 14:30:00');


INSERT INTO Votes (VoteID, MeetingID, UserID, VoteType, VoteDateTime)
	VALUES (1, 1, 1, 'Agree', '2023-11-10 14:45:00');
