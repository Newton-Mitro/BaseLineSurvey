/*
Script InsertPariseServicCenters
--------------------------------------------------------------------------------------
Script By                     : REZA E RABBI
Created At                    : 24 January 2022
Script Altered By             : REZA E RABBI
Altered At                    : 24 January 2022
Script Description            : This Script will Insert Parise Servic Centers.
--------------------------------------------------------------------------------------
*/
--service Center
DECLARE @SavarServiceCenter BIGINT = 1
DECLARE @HashnabadServiceCenter BIGINT = 2
DECLARE @SadhanParaServiceCenter BIGINT = 3
DECLARE @MonipuriParaServiceCenter BIGINT = 4
DECLARE @MohakhaliServiceCenter BIGINT = 5
DECLARE @NaddaServiceCenter BIGINT = 6
DECLARE @LaxmibazarServiceCenter BIGINT = 7
DECLARE @MirpurServiceCenter BIGINT = 8
DECLARE @NagariServiceCenter BIGINT = 9
DECLARE @TumiliaServiceCenter BIGINT = 10
DECLARE @PagarServiceCenter BIGINT = 11
DECLARE @SolpurServiceCenter BIGINT = 12
DECLARE @HeadOfficeServiceCenter BIGINT = 13
--parises
DECLARE @DhorendaParish1 BIGINT = 1
DECLARE @ZiraniChurch1 BIGINT = 2
DECLARE @HashnabadParish1 BIGINT = 3
DECLARE @GollaParish1 BIGINT = 4
DECLARE @BakshnagarChurch1 BIGINT = 5
DECLARE @TuitalParish1 BIGINT = 6
DECLARE @SunabajuChurch1 BIGINT = 7
DECLARE @RamnaCathedral1 BIGINT = 8
DECLARE @LuxmibazarParish1 BIGINT = 9
DECLARE @TejgaonParish1 BIGINT = 10
DECLARE @BanaiSeminarPastoralCenter1 BIGINT = 11
DECLARE @MohakhaliChurch1 BIGINT = 12
DECLARE @UttaraChurch1 BIGINT = 13
DECLARE @KafrulQuasiParish1 BIGINT = 14
DECLARE @NaynagarParish1 BIGINT = 15
DECLARE @VataraParish1 BIGINT = 16
DECLARE @MohammadpurParish1 BIGINT = 17
DECLARE @MirpurParish1 BIGINT = 18
DECLARE @OtherChurch1 BIGINT = 19
DECLARE @NagariParish1 BIGINT = 20
DECLARE @TumiliaParish1 BIGINT = 21
DECLARE @RangamatiaParish1 BIGINT = 22
DECLARE @MathbariParish1 BIGINT = 23
DECLARE @DoriparaParish1 BIGINT = 24
DECLARE @BhadunParish1 BIGINT = 25
DECLARE @FaucalChurchCentre1 BIGINT = 26
DECLARE @KewachalaChurchCentre1 BIGINT = 27
DECLARE @PagarParish1 BIGINT = 28
DECLARE @MausaidParish1 BIGINT = 29
DECLARE @SolepurParish1 BIGINT = 30
DECLARE @NarayanganjParish1 BIGINT = 31

IF NOT EXISTS (
        SELECT *
        FROM [ParishesServicenters]
        )
BEGIN
    EXEC InsertParishesServicenter @DhorendaParish1 --@ParisId BIGINT
        , @SavarServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishesServicenter @ZiraniChurch1 --@ParisId BIGINT
        , @SavarServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishesServicenter @HashnabadParish1 --@ParisId BIGINT
        , @HashnabadServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishesServicenter @GollaParish1 --@ParisId BIGINT
        , @HashnabadServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @BakshnagarChurch1 --@ParisId BIGINT
        , @HashnabadServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @TuitalParish1 --@ParisId BIGINT
        , @HashnabadServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @SunabajuChurch1 --@ParisId BIGINT
        , @HashnabadServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @RamnaCathedral1 --@ParisId BIGINT
        , @HeadOfficeServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @TejgaonParish1 --@ParisId BIGINT
        , @SadhanParaServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @TejgaonParish1 --@ParisId BIGINT
        , @MonipuriParaServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @BanaiSeminarPastoralCenter1 --@ParisId BIGINT
        , @MohakhaliServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @MohakhaliChurch1 --@ParisId BIGINT
        , @MohakhaliServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @UttaraChurch1 --@ParisId BIGINT
        , @MohakhaliServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @KafrulQuasiParish1 --@ParisId BIGINT
        , @MohakhaliServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @NaynagarParish1 --@ParisId BIGINT
        , @NaddaServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @VataraParish1 --@ParisId BIGINT
        , @NaddaServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @LuxmibazarParish1 --@ParisId BIGINT
        , @LaxmibazarServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @MohammadpurParish1 --@ParisId BIGINT
        , @HeadOfficeServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @MirpurParish1 --@ParisId BIGINT
        , @MirpurServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @NagariParish1 --@ParisId BIGINT
        , @NagariServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @TumiliaParish1 --@ParisId BIGINT
        , @TumiliaServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @RangamatiaParish1 --@ParisId BIGINT
        , @TumiliaServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @DoriparaParish1 --@ParisId BIGINT
        , @TumiliaServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @MathbariParish1 --@ParisId BIGINT
        , @NagariServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @BhadunParish1 --@ParisId BIGINT
        , @PagarServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @FaucalChurchCentre1 --@ParisId BIGINT
        , @PagarServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @KewachalaChurchCentre1 --@ParisId BIGINT
        , @PagarServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @PagarParish1 --@ParisId BIGINT
        , @PagarServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @MausaidParish1 --@ParisId BIGINT
        , @PagarServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @SolepurParish1 --@ParisId BIGINT
        , @SolpurServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishesServicenter @NarayanganjParish1 --@ParisId BIGINT
        , @LaxmibazarServiceCenter --@ServiceCenterId BIGINT
        , NULL -- @ScopeId BIGINT = NULL OUTPUT
        , NULL -- @ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
