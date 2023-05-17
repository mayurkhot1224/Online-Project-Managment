
CREATE TABLE User (
  UserID INT PRIMARY KEY,
  Username VARCHAR(20),
  Password VARCHAR(20),
  Email VARCHAR(20),
  Role VARCHAR(20) NOT NULL
);



CREATE TABLE Project (
  ProjectID INT PRIMARY KEY,
  ProjectName VARCHAR(20) ,
  Description VARCHAR(100),
  StartDate DATE,
  EndDate DATE,
  Priority INT,
  ProjectManagerID INT,
  FOREIGN KEY (ProjectManagerID) REFERENCES User(UserID)
);



CREATE TABLE Task (
  TaskID INT PRIMARY KEY,
  TaskName VARCHAR(20) ,
  Description VARCHAR(100),
  DueDate DATE,
  Priority INT,
  Status VARCHAR(20),
  AssigneeID INT,
  ProjectID INT,
  FOREIGN KEY (AssigneeID) REFERENCES User(UserID),
  FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
);


CREATE TABLE Team (
  TeamID INT PRIMARY KEY,
  TeamName VARCHAR(100) NOT NULL
);

CREATE TABLE User_Team (
  UserID INT,
  TeamID INT,
  PRIMARY KEY (UserID, TeamID),
  FOREIGN KEY (UserID) REFERENCES User(UserID),
  FOREIGN KEY (TeamID) REFERENCES Team(TeamID)
);