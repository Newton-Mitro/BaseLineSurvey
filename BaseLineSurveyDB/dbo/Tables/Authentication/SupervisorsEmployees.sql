CREATE TABLE dbo.SupervisorsEmployees (
    SupervisorEmployeeId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , SupervisorId BIGINT NOT NULL
    , EmployeeId BIGINT NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_SupervisorsEmployees_Users FOREIGN KEY (SupervisorId) REFERENCES Users(UserId)
    , CONSTRAINT FK_SupervisorsEmployees_Users2 FOREIGN KEY (EmployeeId) REFERENCES Users(UserId)
    )
