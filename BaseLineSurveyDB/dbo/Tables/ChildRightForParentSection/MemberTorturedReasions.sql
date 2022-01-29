CREATE TABLE [dbo].[MemberTorturedReasions] (
    [MemberTorturedReasionId] BIGINT NOT NULL PRIMARY KEY IDENTITY
    , [MemberId] BIGINT NOT NULL
    , [TorturedReasonCode] BIGINT NOT NULL
    , [InformationStatusCode] BIGINT NULL
    , CONSTRAINT [FK_MemberTorturedReasions_TorturedReasions] FOREIGN KEY (TorturedReasonCode) REFERENCES TorturedReasions(TorturedRessonCode)
    , CONSTRAINT [FK_MemberTorturedReasions_Members] FOREIGN KEY (MemberId) REFERENCES Members(MemberId)
    , CONSTRAINT [FK_MemberTorturedReasions_InformationStatuses] FOREIGN KEY (InformationStatusCode) REFERENCES [InformationStatuses](InformationStatusCode)
    )
