/*
Script InsertShortageSolutiones
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 20 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 20 January 2022
Script Description            : This Script will Insert Shortage Solutiones.
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (
        SELECT *
        FROM ShortageSolutions
        )
BEGIN
    EXEC InsertShortageSolution N'ঋণ (ব্যাংক/ এনজিও/ অন্যান্য প্রতিষ্ঠান থেকে)' -- @SolutionName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertShortageSolution N'আত্মীয়/ প্রতিবেশীর নিকট থেকে ধার' -- @SolutionName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertShortageSolution N'রিলিফ' -- @SolutionName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertShortageSolution N'ঘরের ছোট খাটো সম্পদ বিক্রি (রেডিও, টিভি ইত্যাদি)' -- @SolutionName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertShortageSolution N'গৃহপালিত পশু ও পাখি (হাস, মুরগী, গরু ছাগল ইত্যাদি) বিক্রি' -- @SolutionName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertShortageSolution N'জমি বিক্রি/ বন্ধক' -- @SolutionName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertShortageSolution N'শিক্ষা খরচ হ্রাস' -- @SolutionName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertShortageSolution N'অগ্রিম শ্রম বিক্রি' -- @SolutionName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertShortageSolution N'অন্যান্য' -- @SolutionName NVARCHAR(250)
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 -- @AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
