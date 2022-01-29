/*
Script insert_child_parent_assest_types
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 20 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 20 January 2022
Script Description            : This Script will insert_child_parent_assest_types.
--------------------------------------------------------------------------------------
*/
DECLARE @ParentAssetId AS BIGINT;

IF NOT EXISTS (
        SELECT *
        FROM ParentAssetTypes
        )
BEGIN
    EXEC InsertParentAssetType N'জমি/ ভূমির ধরণ' --@ParentAssetName NVARCHAR(250)
        , @ParentAssetId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildAssetType N'বসত ভিটার পরিমান' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'চাষযোগ্য জমির পরিমান' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildAssetType N'পুকুর' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentAssetType N'অন্যান্য অস্থাবর সম্পদ' --@ParentAssetName NVARCHAR(250)
        , @ParentAssetId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildAssetType N'ঘর' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'টিভি' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'খাট/ চৌকি' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'আলমারি' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'বৈদ্যুতিক পাখা' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'সেলাই মেশিন' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'রিক্সা/ ভ্যান' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'স্যালো মেশিন' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'গভীর নলকূপ' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'পাওয়ার টিলার' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'ফ্রিজ' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'বাই সাইকেল' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'মটর সাইকেল' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'অন্যান্য' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentAssetType N'প্রাণী সম্পদ' --@ParentAssetName NVARCHAR(250)
        , @ParentAssetId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildAssetType N'হাঁস-মুরগী' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'ছাগল' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'গরু' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'মহিষ' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'ঘোড়া' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'খরগোস' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'শুকর' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'অন্যান্য' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParentAssetType N'ব্যক্তিগত সম্পদ' --@ParentAssetName NVARCHAR(250)
        , @ParentAssetId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertChildAssetType N'রূপার গহণা (ভরি)' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'সোনার গহণা (ভরি)' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertChildAssetType N'অন্যান্য' --@ChildAssetName NVARCHAR(250)
        , @ParentAssetId --@ParentAssetId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
