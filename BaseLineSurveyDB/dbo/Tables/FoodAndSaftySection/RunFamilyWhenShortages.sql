/*
Table Name RunFamilyWhenShortages		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Run Family When Shortages table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.RunFamilyWhenShortages (
    RunFamilyWhenShortId BIGINT NOT NULL PRIMARY KEY
    , KhanaId BIGINT NOT NULL
    , ShortageSolutionId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_RunFamilyWhenShortages_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_RunFamilyWhenShortages_ShortageSolutions FOREIGN KEY (ShortageSolutionId) REFERENCES ShortageSolutions(ShortageSolutionId)
    , CONSTRAINT FK_RunFamilyWhenShortages_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
