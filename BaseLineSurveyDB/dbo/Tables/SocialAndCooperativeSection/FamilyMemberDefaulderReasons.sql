CREATE TABLE [dbo].FamilyMemberDefaulderReasons (
    FamilyMemberDefaulderReasonId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , DefaulderReasonId BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT [FK_FMDefaulderReasons_Khanas] FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT [FK_FMDefaulderReasons_DefaulderReasons] FOREIGN KEY ([DefaulderReasonId]) REFERENCES [DefaulderReasons]([DefaulderReasonId])
    )
