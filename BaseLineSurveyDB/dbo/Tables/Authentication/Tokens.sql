CREATE TABLE [dbo].[Tokens]
(
	[TokenId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [TokenKey] VARCHAR(MAX) NULL, 
    [IssueDate] DATETIME2 NULL, 
    [ExpireDate] DATETIME2 NULL, 
    [UserId] BIGINT NULL, 
    [CreatedAt] DATETIME2 NULL, 
    [UpdatedAt] DATETIME2 NULL
)
