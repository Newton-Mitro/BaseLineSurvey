/*
Table Name DefaultFromCooperativeInfos		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 23 January 2022
Script Altered By             : Newton Mitro
Altered At                    : 24 February 2022
Script Description            : This procedure will create DefaultFromCooperativeInfos table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.DefaultFromCooperativeInfos (
    CooperativeInfoId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , MemberId BIGINT NULL
    , CooperativeId BIGINT NOT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT [FK_CooperativeInfos_Khanas] FOREIGN KEY ([KhanaId]) REFERENCES Khanas([KhanaId])
    , CONSTRAINT [FK_CooperativeInfos_CooperativeList] FOREIGN KEY ([CooperativeId]) REFERENCES [CooperativeList]([CooperativeId])
    )
