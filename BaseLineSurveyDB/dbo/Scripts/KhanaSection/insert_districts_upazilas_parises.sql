/*
Script InsertDistrictUpazilaParises
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 13 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 24 January 2022
Script Description            : This Script will Insert District Upazila Parises.
--------------------------------------------------------------------------------------
*/
DECLARE @DistrictId AS BIGINT;
DECLARE @UpazilaId AS BIGINT;
DECLARE @ParisId AS BIGINT;

IF NOT EXISTS (
        SELECT *
        FROM Districts
        )
BEGIN
    EXEC InsertDistrict 'Dhaka' --@DistrictsName NVARCHAR(250)
        , @DistrictId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertUpazila 'Savar' --@UpazilaName NVARCHAR(250)
        , @DistrictId --@DistrictsId BIGINT
        , @UpazilaId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Dhorenda Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParish 'Zirani Church' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertUpazila 'Nawabgonj' --@UpazilaName NVARCHAR(250)
        , @DistrictId --@DistrictsId BIGINT
        , @UpazilaId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Hashnabad Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Golla Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Bakshnagar Church' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParish 'Tuital Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParish 'Sunabaju Church' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertUpazila 'DSCC' --@UpazilaName NVARCHAR(250)
        , @DistrictId --@DistrictsId BIGINT
        , @UpazilaId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Ramna Cathedral' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Luxmibazar' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertUpazila 'DNCC' --@UpazilaName NVARCHAR(250)
        , @DistrictId --@DistrictsId BIGINT
        , @UpazilaId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Tejgaon Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Banai Seminar (Pastoral Center)' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParish 'Mohakhali Church' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParish 'Uttara Church' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParish 'Kafrul Quasi Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParish 'Naynagar' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParish 'Vatara' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParish 'Mohammadpur Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Mirpur Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertUpazila 'Dhaka' --@UpazilaName NVARCHAR(250)
        , @DistrictId --@DistrictsId BIGINT
        , @UpazilaId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Other Church' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertDistrict 'Gazipur' --@DistrictsName NVARCHAR(250)
        , @DistrictId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertUpazila 'Kaligonj' --@UpazilaName NVARCHAR(250)
        , @DistrictId --@DistrictsId BIGINT
        , @UpazilaId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Nagari Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Tumilia Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Rangamatia Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Mathbari Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Doripara Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertUpazila 'GCC' --@UpazilaName NVARCHAR(250)
        , @DistrictId --@DistrictsId BIGINT
        , @UpazilaId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Bhadun Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Faucal Church Centre' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Kewachala Church Centre' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Pagar Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Mausaid Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertDistrict 'Munshigonj' --@DistrictsName NVARCHAR(250)
        , @DistrictId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertUpazila 'Shirajdi khan' --@UpazilaName NVARCHAR(250)
        , @DistrictId --@DistrictsId BIGINT
        , @UpazilaId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Solepur Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertDistrict 'Narayangonj' --@DistrictsName NVARCHAR(250)
        , @DistrictId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertUpazila 'Narayangonj City Corporation' --@UpazilaName NVARCHAR(250)
        , @DistrictId --@DistrictsId BIGINT
        , @UpazilaId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParish 'Narayanganj Parish' --@PariseName NVARCHAR(250)
        , @UpazilaId --@UpazilaId BIGINT
        , @ParisId OUTPUT --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 
END
