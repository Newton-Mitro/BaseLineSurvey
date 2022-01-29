/*
Table Name CooperativeInfos		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 23 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 23 January 2022
Script Description            : This procedure will create CooperativeInfos table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE [dbo].[CooperativeInfos] (
    [CooperativeInfoId] BIGINT NOT NULL PRIMARY KEY IDENTITY
    , [KhanaId] BIGINT NOT NULL
    , [MemberId] BIGINT NOT NULL
    , [CooperativeId] BIGINT NOT NULL
    , IsDefaulder BIT NOT NULL
    , IsLoanee BIT NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT [FK_CooperativeInfos_Khanas] FOREIGN KEY ([KhanaId]) REFERENCES Khanas([KhanaId])
    , CONSTRAINT [FK_CooperativeInfos_Members] FOREIGN KEY ([MemberId]) REFERENCES Members([MemberId])
    , CONSTRAINT [FK_CooperativeInfos_CooperativeList] FOREIGN KEY ([CooperativeId]) REFERENCES [CooperativeList]([CooperativeId])
    )
