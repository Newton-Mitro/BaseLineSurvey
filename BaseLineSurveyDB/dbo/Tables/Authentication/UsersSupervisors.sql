CREATE TABLE dbo.UsersSupervisors (
    UsersSupervisorsId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , SupervisorId BIGINT NOT NULL
    , UserId BIGINT NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_SupervisorsEmployees_Users FOREIGN KEY (SupervisorId) REFERENCES Users(UserId)
    , CONSTRAINT FK_SupervisorsEmployees_Users2 FOREIGN KEY (UserId) REFERENCES Users(UserId)
    )
