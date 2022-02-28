CREATE TABLE [dbo].[MemberTorturedReasons] (
    MemberTorturedReasonId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , MemberId BIGINT NOT NULL
    , TorturedReasonCode BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT [FK_MemberTorturedReasons_TorturedReasons] FOREIGN KEY (TorturedReasonCode) REFERENCES TorturedReasons(TorturedReasonCode)
    , CONSTRAINT [FK_MemberTorturedReasons_Members] FOREIGN KEY (MemberId) REFERENCES Members(MemberId)
    , CONSTRAINT [FK_MemberTorturedReasons_InformationStatuses] FOREIGN KEY (InformationStatusCode) REFERENCES [InformationStatuses](InformationStatusCode)
    )
