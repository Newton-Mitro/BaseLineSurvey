/*
Table Name DropOutReasonsList		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Drop Out Reasons List table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.SchoolDropouts (
    SchoolDropoutId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , MemberId BIGINT NOT NULL
    , DropOutReasonCode BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_DropOutReasonsList_Members FOREIGN KEY (MemberId) REFERENCES Members(MemberId)
    , CONSTRAINT FK_DropOutReasonsList_DropOutReasonCodes FOREIGN KEY (DropOutReasonCode) REFERENCES DropOutReasons(DropOutReasonCode)
    , CONSTRAINT FK_DropOutReasonsList_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
