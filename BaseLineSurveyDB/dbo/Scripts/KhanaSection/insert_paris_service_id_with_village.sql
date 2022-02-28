--paris_junction_service center primary ID
DECLARE @DhorendaParishSavarServiceCenter BIGINT = 1
DECLARE @ZiraniChurchSavarServiceCenter BIGINT = 2
DECLARE @HashnabadParishHashnabad BIGINT = 3
DECLARE @GollaParishHashnabad BIGINT = 4
DECLARE @BakshnagarChurchHashnabad BIGINT = 5
DECLARE @TuitalParishHashnabad BIGINT = 6
DECLARE @SunabajuChurchHashnabad BIGINT = 7
DECLARE @RamnaCathedralHeadOffice BIGINT = 8
DECLARE @TejgaonParishSadhanPara BIGINT = 9
DECLARE @TejgaonParishMonipuriPara BIGINT = 10
DECLARE @BanaiSeminarPastoralCenterMohakhali BIGINT = 11
DECLARE @MohakhaliChurchMohakhali BIGINT = 12
DECLARE @UttaraChurchMohakhali BIGINT = 13
DECLARE @KafrulQuasiParishMohakhali BIGINT = 14
DECLARE @NaynagarNandda BIGINT = 15
DECLARE @VataraNandda BIGINT = 16
DECLARE @LuxmibazarLaxmibazar BIGINT = 17
DECLARE @MohammadpurParishHeadOffice BIGINT = 18
DECLARE @MirpurParishMirpurServiceCenter BIGINT = 19
DECLARE @NagariParishNagariServiceCenter BIGINT = 20
DECLARE @TumiliaParishTumiliaServiceCenter BIGINT = 21
DECLARE @RangamatiaParishTumiliaServiceCenter BIGINT = 22
DECLARE @DoriparaParishTumiliaServiceCenter BIGINT = 23
DECLARE @MathbariParishNagariServiceCenter BIGINT = 24
DECLARE @BhadunParishPagarServiceCenter BIGINT = 25
DECLARE @FaucalChurchCentrePagarServiceCenter BIGINT = 26
DECLARE @KewachalaChurchCentrePagarServiceCenter BIGINT = 27
DECLARE @PagarParishPagarServiceCenter BIGINT = 28
DECLARE @MausaidParishPagarServiceCenter BIGINT = 29
DECLARE @SolepurParishSolpurServiceCenter BIGINT = 30
DECLARE @NarayanganjParishLaxmibazar BIGINT = 31
DECLARE @OtherChurchHeadOffice BIGINT = 32
--villages
DECLARE @Dharenda1 BIGINT = 1
DECLARE @Kamalapur1 BIGINT = 2
DECLARE @Deogaon1 BIGINT = 3
DECLARE @Zirani1 BIGINT = 4
DECLARE @Hashnabad1 BIGINT = 5
DECLARE @Molashikanda1 BIGINT = 6
DECLARE @Shikaripara1 BIGINT = 7
DECLARE @Nayanshree1 BIGINT = 8
DECLARE @Bandura1 BIGINT = 9
DECLARE @Ikrashi1 BIGINT = 10
DECLARE @ChottaGolla1 BIGINT = 11
DECLARE @BaraGolla1 BIGINT = 12
DECLARE @Balidiar1 BIGINT = 13
DECLARE @Deotala1 BIGINT = 14
DECLARE @Mahabbatpur1 BIGINT = 15
DECLARE @Padrikanda1 BIGINT = 16
DECLARE @Kashinagar1 BIGINT = 17
DECLARE @BakshaNagar1 BIGINT = 18
DECLARE @NatunTuital1 BIGINT = 19
DECLARE @PurantanTuital1 BIGINT = 20
DECLARE @Sonabaju1 BIGINT = 21
DECLARE @Banglabazar1 BIGINT = 22
DECLARE @Saraniketon1 BIGINT = 23
DECLARE @NotreDameCollege1 BIGINT = 24
DECLARE @Moghbazar1 BIGINT = 25
DECLARE @Malibugh1 BIGINT = 26
DECLARE @Sadhanpara1 BIGINT = 27
DECLARE @Rajabazar1 BIGINT = 28
DECLARE @IndiraRoad1 BIGINT = 29
DECLARE @Tallabag1 BIGINT = 30
DECLARE @Monipuripara1 BIGINT = 31
DECLARE @Tejgaon1 BIGINT = 32
DECLARE @Tejkunipara1 BIGINT = 33
DECLARE @Banani1 BIGINT = 34
DECLARE @Gulshan1 BIGINT = 35
DECLARE @Nayanagar1 BIGINT = 36
DECLARE @Nadda1 BIGINT = 37
DECLARE @Kalachandpur1 BIGINT = 38
DECLARE @Lichubagan1 BIGINT = 39
DECLARE @JoarSahara1 BIGINT = 40
DECLARE @Mohakhali1 BIGINT = 41
DECLARE @Niketan1 BIGINT = 42
DECLARE @Uttara1 BIGINT = 43
DECLARE @Abdullahpur1 BIGINT = 44
DECLARE @Airport1 BIGINT = 45
DECLARE @MirpurBaptistChurch1 BIGINT = 46
DECLARE @SDA1 BIGINT = 47
DECLARE @FellowshipChruch1 BIGINT = 48
DECLARE @GBC1 BIGINT = 49
DECLARE @Sarkerbari1 BIGINT = 50
DECLARE @Shahadatpur1 BIGINT = 51
DECLARE @NatunBazar1 BIGINT = 52
DECLARE @Bhatara1 BIGINT = 53
DECLARE @Baridhara1 BIGINT = 54
DECLARE @Narinda1 BIGINT = 55
DECLARE @Gindabazar1 BIGINT = 56
DECLARE @LaxmiBazar1 BIGINT = 57
DECLARE @Mohammadpur1 BIGINT = 58
DECLARE @Mirpur1 BIGINT = 59
DECLARE @Kallayanpur1 BIGINT = 60
DECLARE @Gabtali1 BIGINT = 61
DECLARE @Ashadgate1 BIGINT = 62
DECLARE @Rayerbazar1 BIGINT = 63
DECLARE @Sheorapara1 BIGINT = 64
DECLARE @Kazipara1 BIGINT = 65
DECLARE @Pallabi1 BIGINT = 66
DECLARE @Pirerbag1 BIGINT = 67
DECLARE @Monipur1 BIGINT = 68
DECLARE @Barabag1 BIGINT = 69
DECLARE @Savar1 BIGINT = 70
DECLARE @Rajashan1 BIGINT = 71
DECLARE @UttaraKafrul1 BIGINT = 72
DECLARE @DhakinKafrul1 BIGINT = 73
DECLARE @Cantonment1 BIGINT = 74
DECLARE @Kachukhet1 BIGINT = 75
DECLARE @Nagari1 BIGINT = 76
DECLARE @UttarPanjora1 BIGINT = 77
DECLARE @DakhinPanjora1 BIGINT = 78
DECLARE @Doani1 BIGINT = 79
DECLARE @Karan1 BIGINT = 80
DECLARE @Bagdhi1 BIGINT = 81
DECLARE @Parartek1 BIGINT = 82
DECLARE @Tiria1 BIGINT = 83
DECLARE @Luludia1 BIGINT = 84
DECLARE @Nalchata1 BIGINT = 85
DECLARE @Gararia1 BIGINT = 86
DECLARE @Bhurulia1 BIGINT = 87
DECLARE @Chaitan1 BIGINT = 88
DECLARE @Aragaon1 BIGINT = 89
DECLARE @Dhanun1 BIGINT = 90
DECLARE @Suzapur1 BIGINT = 91
DECLARE @Bhetur1 BIGINT = 92
DECLARE @DakhinChuarikhola1 BIGINT = 93
DECLARE @Charkhola1 BIGINT = 94
DECLARE @Fariakhal1 BIGINT = 95
DECLARE @Piprashair1 BIGINT = 96
DECLARE @Boalia1 BIGINT = 97
DECLARE @DakhinBhatardi1 BIGINT = 98
DECLARE @PurbaBhartardi1 BIGINT = 99
DECLARE @Shomkhali1 BIGINT = 100
DECLARE @Bangalhowala1 BIGINT = 101
DECLARE @Harikhola1 BIGINT = 102
DECLARE @Tumulia1 BIGINT = 103
DECLARE @Matbari1 BIGINT = 104
DECLARE @Ulukhola1 BIGINT = 105
DECLARE @UttarVashania1 BIGINT = 106
DECLARE @DakhinVashania1 BIGINT = 107
DECLARE @Kulun1 BIGINT = 108
DECLARE @Mallah1 BIGINT = 109
DECLARE @Mirertek1 BIGINT = 110
DECLARE @Paroan1 BIGINT = 111
DECLARE @Bashbari1 BIGINT = 112
DECLARE @Kushilabari1 BIGINT = 113
DECLARE @Porabari1 BIGINT = 114
DECLARE @Bagbari1 BIGINT = 115
DECLARE @Tetoibari1 BIGINT = 116
DECLARE @Bilkhali1 BIGINT = 117
DECLARE @Daripara1 BIGINT = 118
DECLARE @MadhabNagar1 BIGINT = 119
DECLARE @Vhadun1 BIGINT = 120
DECLARE @Harbaid1 BIGINT = 121
DECLARE @Kodalia1 BIGINT = 122
DECLARE @Naipara1 BIGINT = 123
DECLARE @Taltia1 BIGINT = 124
DECLARE @Mirerbazar1 BIGINT = 125
DECLARE @Majukhan1 BIGINT = 126
DECLARE @Faucal1 BIGINT = 127
DECLARE @Kaoachala1 BIGINT = 128
DECLARE @Rajendrapur1 BIGINT = 129
DECLARE @Pagar1 BIGINT = 130
DECLARE @TongiErshadnagar1 BIGINT = 131
DECLARE @Mushaid1 BIGINT = 132
DECLARE @Rajbari1 BIGINT = 133
DECLARE @Chalaban1 BIGINT = 134
DECLARE @Solpur1 BIGINT = 135
DECLARE @ShirajdiKhan1 BIGINT = 136
DECLARE @Majidpur1 BIGINT = 137
DECLARE @Baraihazi1 BIGINT = 138
DECLARE @Madanpur1 BIGINT = 139
DECLARE @Narayangonj1 BIGINT = 140

IF NOT EXISTS (
        SELECT *
        FROM [ParishServiceCenterVillages]
        )
BEGIN
    EXEC InsertParishServiceCenterVillages @DhorendaParishSavarServiceCenter -- @ParisesServicentersId BIGINT
        , @Dharenda1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @DhorendaParishSavarServiceCenter --@ParisesServicentersId BIGINT
        , @Rajashan1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @DhorendaParishSavarServiceCenter --@ParisesServicentersId BIGINT
        , @Kamalapur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @DhorendaParishSavarServiceCenter --@ParisesServicentersId BIGINT
        , @Deogaon1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @ZiraniChurchSavarServiceCenter --@ParisesServicentersId BIGINT
        , @Zirani1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @HashnabadParishHashnabad --@ParisesServicentersId BIGINT
        , @Hashnabad1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @HashnabadParishHashnabad --@ParisesServicentersId BIGINT
        , @Molashikanda1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @HashnabadParishHashnabad --@ParisesServicentersId BIGINT
        , @Shikaripara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @HashnabadParishHashnabad --@ParisesServicentersId BIGINT
        , @Nayanshree1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @HashnabadParishHashnabad --@ParisesServicentersId BIGINT
        , @Bandura1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @HashnabadParishHashnabad --@ParisesServicentersId BIGINT
        , @Ikrashi1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --golla parish
    EXEC InsertParishServiceCenterVillages @GollaParishHashnabad --@ParisesServicentersId BIGINT
        , @ChottaGolla1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @GollaParishHashnabad --@ParisesServicentersId BIGINT
        , @BaraGolla1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @GollaParishHashnabad --@ParisesServicentersId BIGINT
        , @Balidiar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @GollaParishHashnabad --@ParisesServicentersId BIGINT
        , @Deotala1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @GollaParishHashnabad --@ParisesServicentersId BIGINT
        , @Mahabbatpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @GollaParishHashnabad --@ParisesServicentersId BIGINT
        , @Padrikanda1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @GollaParishHashnabad --@ParisesServicentersId BIGINT
        , @Bandura1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @GollaParishHashnabad --@ParisesServicentersId BIGINT
        , @Kashinagar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    -- bakshnagar church
    EXEC InsertParishServiceCenterVillages @BakshnagarChurchHashnabad --@ParisesServicentersId BIGINT
        , @BakshaNagar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Tuital parish
    EXEC InsertParishServiceCenterVillages @TuitalParishHashnabad --@ParisesServicentersId BIGINT
        , @NatunTuital1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @TuitalParishHashnabad --@ParisesServicentersId BIGINT
        , @PurantanTuital1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Sunabaju Church
    EXEC InsertParishServiceCenterVillages @SunabajuChurchHashnabad --@ParisesServicentersId BIGINT
        , @Sonabaju1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @SunabajuChurchHashnabad --@ParisesServicentersId BIGINT
        , @Banglabazar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Ramna Cathedral
    EXEC InsertParishServiceCenterVillages @RamnaCathedralHeadOffice --@ParisesServicentersId BIGINT
        , @Saraniketon1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @RamnaCathedralHeadOffice --@ParisesServicentersId BIGINT
        , @NotreDameCollege1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @RamnaCathedralHeadOffice --@ParisesServicentersId BIGINT
        , @Moghbazar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @RamnaCathedralHeadOffice --@ParisesServicentersId BIGINT
        , @Malibugh1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Tejgaon Parish
    EXEC InsertParishServiceCenterVillages @TejgaonParishSadhanPara --@ParisesServicentersId BIGINT
        , @Sadhanpara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @TejgaonParishSadhanPara --@ParisesServicentersId BIGINT
        , @Rajabazar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @TejgaonParishSadhanPara --@ParisesServicentersId BIGINT
        , @IndiraRoad1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @TejgaonParishSadhanPara --@ParisesServicentersId BIGINT
        , @Tallabag1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @TejgaonParishMonipuriPara --@ParisesServicentersId BIGINT
        , @Monipuripara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @TejgaonParishMonipuriPara --@ParisesServicentersId BIGINT
        , @Tejgaon1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @TejgaonParishMonipuriPara --@ParisesServicentersId BIGINT
        , @Tejkunipara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Banai Seminar (Pastoral Centre)
    EXEC InsertParishServiceCenterVillages @BanaiSeminarPastoralCenterMohakhali --@ParisesServicentersId BIGINT
        , @Banani1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @BanaiSeminarPastoralCenterMohakhali --@ParisesServicentersId BIGINT
        , @Gulshan1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Mohakhali Church
    EXEC InsertParishServiceCenterVillages @MohakhaliChurchMohakhali --@ParisesServicentersId BIGINT
        , @Mohakhali1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MohakhaliChurchMohakhali --@ParisesServicentersId BIGINT
        , @Banani1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MohakhaliChurchMohakhali --@ParisesServicentersId BIGINT
        , @Niketan1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Uttara Church
    EXEC InsertParishServiceCenterVillages @UttaraChurchMohakhali --@ParisesServicentersId BIGINT
        , @Uttara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @UttaraChurchMohakhali --@ParisesServicentersId BIGINT
        , @Abdullahpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @UttaraChurchMohakhali --@ParisesServicentersId BIGINT
        , @Airport1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Kafrul Quasi Parish
    EXEC InsertParishServiceCenterVillages @KafrulQuasiParishMohakhali --@ParisesServicentersId BIGINT
        , @UttaraKafrul1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @KafrulQuasiParishMohakhali --@ParisesServicentersId BIGINT
        , @DhakinKafrul1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @KafrulQuasiParishMohakhali --@ParisesServicentersId BIGINT
        , @Cantonment1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @KafrulQuasiParishMohakhali --@ParisesServicentersId BIGINT
        , @Kachukhet1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --NaynagarParish
    EXEC InsertParishServiceCenterVillages @NaynagarNandda --@ParisesServicentersId BIGINT
        , @Nayanagar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @NaynagarNandda --@ParisesServicentersId BIGINT
        , @Nadda1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @NaynagarNandda --@ParisesServicentersId BIGINT
        , @Kalachandpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @NaynagarNandda --@ParisesServicentersId BIGINT
        , @Lichubagan1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @NaynagarNandda --@ParisesServicentersId BIGINT
        , @JoarSahara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Vatara
    EXEC InsertParishServiceCenterVillages @VataraNandda --@ParisesServicentersId BIGINT
        , @Sarkerbari1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @VataraNandda --@ParisesServicentersId BIGINT
        , @Shahadatpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @VataraNandda --@ParisesServicentersId BIGINT
        , @NatunBazar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @VataraNandda --@ParisesServicentersId BIGINT
        , @Nayanagar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @VataraNandda --@ParisesServicentersId BIGINT
        , @Bhatara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @VataraNandda --@ParisesServicentersId BIGINT
        , @Baridhara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @VataraNandda --@ParisesServicentersId BIGINT
        , @Gulshan1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Luxmibazar
    EXEC InsertParishServiceCenterVillages @LuxmibazarLaxmibazar --@ParisesServicentersId BIGINT
        , @Narinda1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @LuxmibazarLaxmibazar --@ParisesServicentersId BIGINT
        , @Gindabazar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @LuxmibazarLaxmibazar --@ParisesServicentersId BIGINT
        , @LaxmiBazar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Mohammadpur Parish
    EXEC InsertParishServiceCenterVillages @MohammadpurParishHeadOffice --@ParisesServicentersId BIGINT
        , @Mohammadpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --Mirpur Parish
    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Mirpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Kallayanpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Gabtali1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Mohammadpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Ashadgate1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Rayerbazar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Sheorapara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Kazipara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Pallabi1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Pirerbag1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Monipur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    EXEC InsertParishServiceCenterVillages @MirpurParishMirpurServiceCenter --@ParisesServicentersId BIGINT
        , @Barabag1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure. 

    --other church
    --Nagari Parish
    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Nagari1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @UttarPanjora1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @DakhinPanjora1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Doani1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Karan1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Bagdhi1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Parartek1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Tiria1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Luludia1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Nalchata1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Gararia1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Bhurulia1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Chaitan1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Aragaon1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Dhanun1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NagariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Suzapur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --tumulia parish
    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Bhetur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @DakhinChuarikhola1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Charkhola1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Fariakhal1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Piprashair1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Boalia1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @PurbaBhartardi1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @DakhinBhatardi1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Shomkhali1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Bangalhowala1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @TumiliaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Harikhola1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --Rangamatia Parish
    EXEC InsertParishServiceCenterVillages @RangamatiaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Tumulia1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --Mathbari Parish
    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Matbari1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Ulukhola1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @UttarVashania1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @DakhinVashania1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Kulun1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Mallah1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Mirertek1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Paroan1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Bashbari1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Kushilabari1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Porabari1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Bagbari1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Tetoibari1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MathbariParishNagariServiceCenter --@ParisesServicentersId BIGINT
        , @Bilkhali1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --Doripara Parish
    EXEC InsertParishServiceCenterVillages @DoriparaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Daripara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @DoriparaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @Nalchata1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @DoriparaParishTumiliaServiceCenter --@ParisesServicentersId BIGINT
        , @MadhabNagar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --Bhadun Parish
    EXEC InsertParishServiceCenterVillages @BhadunParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Vhadun1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @BhadunParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Harbaid1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @BhadunParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Kodalia1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @BhadunParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Naipara1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @BhadunParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Taltia1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @BhadunParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Mirerbazar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @BhadunParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Majukhan1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --Faucal Church Centre
    EXEC InsertParishServiceCenterVillages @FaucalChurchCentrePagarServiceCenter --@ParisesServicentersId BIGINT
        , @Faucal1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --Kewachala Church Centre
    EXEC InsertParishServiceCenterVillages @KewachalaChurchCentrePagarServiceCenter --@ParisesServicentersId BIGINT
        , @Kaoachala1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @KewachalaChurchCentrePagarServiceCenter --@ParisesServicentersId BIGINT
        , @Rajendrapur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --Pagar Parish
    EXEC InsertParishServiceCenterVillages @PagarParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Pagar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @PagarParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @TongiErshadnagar1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --Mausaid Parish
    EXEC InsertParishServiceCenterVillages @MausaidParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Mushaid1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MausaidParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Rajbari1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @MausaidParishPagarServiceCenter --@ParisesServicentersId BIGINT
        , @Chalaban1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --solepur parish
    EXEC InsertParishServiceCenterVillages @SolepurParishSolpurServiceCenter --@ParisesServicentersId BIGINT
        , @Solpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @SolepurParishSolpurServiceCenter --@ParisesServicentersId BIGINT
        , @ShirajdiKhan1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @SolepurParishSolpurServiceCenter --@ParisesServicentersId BIGINT
        , @Majidpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @SolepurParishSolpurServiceCenter --@ParisesServicentersId BIGINT
        , @Baraihazi1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --Narayanganj Parish
    EXEC InsertParishServiceCenterVillages @NarayanganjParishLaxmibazar --@ParisesServicentersId BIGINT
        , @Madanpur1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @NarayanganjParishLaxmibazar --@ParisesServicentersId BIGINT
        , @Narayangonj1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    --Other Church
    EXEC InsertParishServiceCenterVillages @OtherChurchHeadOffice --@ParisesServicentersId BIGINT
        , @MirpurBaptistChurch1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @OtherChurchHeadOffice --@ParisesServicentersId BIGINT
        , @SDA1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @OtherChurchHeadOffice --@ParisesServicentersId BIGINT
        , @FellowshipChruch1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.

    EXEC InsertParishServiceCenterVillages @OtherChurchHeadOffice --@ParisesServicentersId BIGINT
        , @GBC1 --@VillageId BIGINT
        , NULL --@ScopeId BIGINT = NULL OUTPUT
        , NULL --@ReturnResult VARCHAR(255) = NULL OUTPUT
        , 1 --@AccessedBy BIGINT = NULL -- Id of user who is accessing this stored procedure.
END
