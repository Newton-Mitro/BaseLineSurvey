/*
Table Name ToiletAndWaterInfos		
--------------------------------------------------------------------------------------
Script By                     : Reza-E-Rabbi
Created At                    : 17 January 2022
Script Altered By             : Reza-E-Rabbi
Altered At                    : 17 January 2022
Script Description            : This procedure will create Toilet And Water Infos table.
--------------------------------------------------------------------------------------
*/
CREATE TABLE dbo.ToiletAndWaterInfos (
    ToiletAndWaterInfoId BIGINT NOT NULL PRIMARY KEY IDENTITY
    , KhanaId BIGINT NOT NULL
    , QustionId BIGINT NOT NULL
    , OptionId BIGINT NOT NULL
    , InformationStatusCode BIGINT NULL
    , CreatedBy BIGINT NULL
    , UpdatedBy BIGINT NULL
    , CreatedAt DATETIME2 NULL
    , UpdatedAt DATETIME2 NULL
    , CONSTRAINT FK_ToiletAndWaterInfos_Khanas FOREIGN KEY (KhanaId) REFERENCES Khanas(KhanaId)
    , CONSTRAINT FK_ToiletAndWaterInfos_ToiletAndWaterOptions FOREIGN KEY (OptionId) REFERENCES ToiletAndWaterOptions(ToiletAndWaterOptionsId)
    , CONSTRAINT FK_ToiletAndWaterInfos_ToiletAndWaterQuestions FOREIGN KEY (QustionId) REFERENCES ToiletAndWaterQuestions(ToiletAndWaterQuestionId)
    , CONSTRAINT FK_ToiletAndWaterInfos_InformationStatuses FOREIGN KEY (InformationStatusCode) REFERENCES InformationStatuses(InformationStatusCode)
    )
