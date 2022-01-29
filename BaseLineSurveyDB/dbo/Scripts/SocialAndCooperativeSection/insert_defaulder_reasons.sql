/*
Script InsertDisableType
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 13 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 23 January 2022
Script Description            : This Script will Insert Disable Type.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM DefaulderReasons
        )
BEGIN
    EXEC InsertDefaulderReason N'অল্প আয়' -- @DefaulderReasonText NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertDefaulderReason N'রোগ/অসুখজনিত/কোভিড-১৯' -- @DefaulderReasonText NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertDefaulderReason N'ছেলেমেয়েদের স্কুলের ফি প্রদান করা হেতু' -- @DefaulderReasonText NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertDefaulderReason N'অভ্যেসগত কারণ' -- @DefaulderReasonText NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertDefaulderReason N'ব্যবসায় লোকসানের কারণ' -- @DefaulderReasonText NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertDefaulderReason N'অণ্যান্য' -- @DefaulderReasonText NVARCHAR(250)
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
