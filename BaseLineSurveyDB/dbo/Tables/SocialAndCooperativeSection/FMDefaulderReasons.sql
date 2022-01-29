CREATE TABLE [dbo].[FMDefaulderReasons] (
    [FMDefaulderReasonId] BIGINT NOT NULL PRIMARY KEY IDENTITY
    , [MemberId] BIGINT NULL
    , [DefaulderReasonId] BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT [FK_FMDefaulderReasons_Members] FOREIGN KEY ([MemberId]) REFERENCES Members([MemberId])
    , CONSTRAINT [FK_FMDefaulderReasons_DefaulderReasons] FOREIGN KEY ([DefaulderReasonId]) REFERENCES [DefaulderReasons]([DefaulderReasonId])
    )
