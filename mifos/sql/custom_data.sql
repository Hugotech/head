-- This SQL script contains custom data that is loaded for use in a 
-- test/demo/developer database and is not intended to be loaded in production

-- Entity: Salutation
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(47, 15, 'Salutation-Mr');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(48, 15, 'Salutation-Mrs');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(228, 15, 'Salutation-Ms');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 
VALUES(93,1,47,'Mr');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE)
VALUES(95,1,48,'Mrs');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(438,1,228,'Ms');

-- Entity: PersonnelTitles
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(57, 29, 'PersonnelTitles-Cashier');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(58, 29, 'PersonnelTitles-CenterManager');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(59, 29, 'PersonnelTitles-BranchManager');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(540, 29, 'PersonnelTitles-AreaManager');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(541, 29, 'PersonnelTitles-DivisionalManager');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(542, 29, 'PersonnelTitles-RegionalManager');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(543, 29, 'PersonnelTitles-Coo');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(544, 29, 'PersonnelTitles-MisTeam');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(545, 29, 'PersonnelTitles-ItTeam');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE)
VALUES(113,1,57,'Cashier');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(114,1,58,'Center Manager');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 
VALUES(115,1,59,'Branch Manager');
INSERT INTO LOOKUP_VALUE_LOCALE VALUES(878,1,540,'Area Manager');
INSERT INTO LOOKUP_VALUE_LOCALE VALUES(879,1,541,'Divisional Manager');
INSERT INTO LOOKUP_VALUE_LOCALE VALUES(880,1,542,'Regional Manager');
INSERT INTO LOOKUP_VALUE_LOCALE VALUES(881,1,543,'COO');
INSERT INTO LOOKUP_VALUE_LOCALE VALUES(882,1,544,'MIS Team');
INSERT INTO LOOKUP_VALUE_LOCALE VALUES(883,1,545,'IT Team');

-- Entity: MaritalStatus
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(66, 17, 'MaritalStatus-Married');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(67, 17, 'MaritalStatus-Unmarried');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(220, 17, 'MaritalStatus-Widowed');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 
VALUES(131,1,66,'Married');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 
VALUES(133,1,67,'UnMarried');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(426,1,220,'Widowed');

-- Entity: Citizenship
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(130, 18, 'Citizenship-Hindu');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(131, 18, 'Citizenship-Muslim');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(221, 18, 'Citizenship-Christian');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(239,1,130,'Hindu');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(241,1,131,'Muslim');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(428,1,221,'Christian');

-- Entity: EducationLevel
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(134, 20, 'EducationLevel-OnlyClient');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(135, 20, 'EducationLevel-OnlyHusband');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(226, 20, 'EducationLevel-BothLiterate');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(227, 20, 'EducationLevel-BothIlliterate');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(247,1,134,'Only Client');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(249,1,135,'Only Husband');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(434,1,226,'Both Literate');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(436,1,227,'Both Illiterate');

-- Entity: Ethinicity
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(132, 19, 'Ethinicity-Sc');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(133, 19, 'Ethinicity-Bc');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(217, 19, 'Ethinicity-St');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(218, 19, 'Ethinicity-Obc');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(219, 19, 'Ethinicity-Fc');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(243,1,132,'SC');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(245,1,133,'BC');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(420,1,217,'ST');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(422,1,218,'OBC');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(424,1,219,'FC');

-- Entity: LoanPurposes
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(230, 82, 'LoanPurposes-0000AnimalHusbandry');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(231, 82, 'LoanPurposes-0001CowPurchase');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(232, 82, 'LoanPurposes-0002BuffaloPurchase');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(233, 82, 'LoanPurposes-0003GoatPurchase');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(234, 82, 'LoanPurposes-0004OxBuffalo');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(235, 82, 'LoanPurposes-0005PigRaising');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(236, 82, 'LoanPurposes-0006ChickenRaising');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(237, 82, 'LoanPurposes-0007DonkeyRaising');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(238, 82, 'LoanPurposes-0008AnimalTrading');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(239, 82, 'LoanPurposes-0009Horse');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(240, 82, 'LoanPurposes-0010Camel');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(241, 82, 'LoanPurposes-0011Bear');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(242, 82, 'LoanPurposes-0012SheepPurchase');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(243, 82, 'LoanPurposes-0013HybridCow');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(244, 82, 'LoanPurposes-0014PhotoFrameWork');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(245, 82, 'LoanPurposes-0021Fishery');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(246, 82, 'LoanPurposes-0100Trading');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(247, 82, 'LoanPurposes-0101PaddyBagBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(248, 82, 'LoanPurposes-0102VegetableSelling');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(249, 82, 'LoanPurposes-0103FruitSelling');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(250, 82, 'LoanPurposes-0104BanglesTrading');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(251, 82, 'LoanPurposes-0105TeaShop');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(252, 82, 'LoanPurposes-0106CosmeticsSelling');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(253, 82, 'LoanPurposes-0107GeneralStores');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(254, 82, 'LoanPurposes-0108FlourMill');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(255, 82, 'LoanPurposes-0109HotelTrading');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(256, 82, 'LoanPurposes-0110ToddyBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(257, 82, 'LoanPurposes-0111PanShop');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(258, 82, 'LoanPurposes-0112PanleafTrading');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(260, 82, 'LoanPurposes-0113MadicalStors');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(261, 82, 'LoanPurposes-0114MeatSelling');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(262, 82, 'LoanPurposes-0115OilSelling');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(264, 82, 'LoanPurposes-0116ChatShop');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(265, 82, 'LoanPurposes-0117PaintShop');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(266, 82, 'LoanPurposes-0118EggShop');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(267, 82, 'LoanPurposes-0119ShoeMaker');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(268, 82, 'LoanPurposes-0120PettyShop');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(269, 82, 'LoanPurposes-0121FlowerBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(270, 82, 'LoanPurposes-0122Bakery');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(271, 82, 'LoanPurposes-0123CoconutBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(272, 82, 'LoanPurposes-0124Electricals');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(273, 82, 'LoanPurposes-0125GroundnutBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(274, 82, 'LoanPurposes-0126ScrapBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(275, 82, 'LoanPurposes-0127BroomStickBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(276, 82, 'LoanPurposes-0128PlasticBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(277, 82, 'LoanPurposes-0129PetrolBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(278, 82, 'LoanPurposes-0130SteelBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(279, 82, 'LoanPurposes-0131BananaLeafBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(280, 82, 'LoanPurposes-0132StationaryShop');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(281, 82, 'LoanPurposes-0200Production');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(282, 82, 'LoanPurposes-0201BrickMaking');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(283, 82, 'LoanPurposes-0202MatWeaving');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(284, 82, 'LoanPurposes-0203ClothSelling');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(285, 82, 'LoanPurposes-0204SewingMachine');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(286, 82, 'LoanPurposes-0205WoodSelling');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(287, 82, 'LoanPurposes-0206BediMaking');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(288, 82, 'LoanPurposes-0207CarpetWeaving');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(289, 82, 'LoanPurposes-0208MotorBodyMaking');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(290, 82, 'LoanPurposes-0209BuildingMaterial');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(291, 82, 'LoanPurposes-0210ChainPulley');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(292, 82, 'LoanPurposes-0211ZigZagMachine');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(293, 82, 'LoanPurposes-0212PapadBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(294, 82, 'LoanPurposes-0213TilesBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(295, 82, 'LoanPurposes-0214WeldingShop');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(296, 82, 'LoanPurposes-0215BedBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(297, 82, 'LoanPurposes-0216RopeBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(298, 82, 'LoanPurposes-0217AgarbattiBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(299, 82, 'LoanPurposes-0300Transportation');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(300, 82, 'LoanPurposes-0301PushCartSagari');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(301, 82, 'LoanPurposes-0302CycleRickshaw');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(302, 82, 'LoanPurposes-0303BicycleRepairing');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(303, 82, 'LoanPurposes-0304AutoRepairing');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(304, 82, 'LoanPurposes-0305BullockCarts');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(305, 82, 'LoanPurposes-0306ThresarMachine');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(306, 82, 'LoanPurposes-0307VideoSet');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(307, 82, 'LoanPurposes-0308MujackMachine');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(308, 82, 'LoanPurposes-0309BiskutFery');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(309, 82, 'LoanPurposes-0310HorseCart');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(310, 82, 'LoanPurposes-0311AutoPurchase');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(311, 82, 'LoanPurposes-0400Agriculture');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(312, 82, 'LoanPurposes-0401Sharecropping');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(313, 82, 'LoanPurposes-0402TreeLeasing');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(314, 82, 'LoanPurposes-0403LandReleasing');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(315, 82, 'LoanPurposes-0404LandLeasing');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(316, 82, 'LoanPurposes-0405FoodGrainTrading');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(317, 82, 'LoanPurposes-0406MotorPurchasing');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(318, 82, 'LoanPurposes-0500Emergency');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(319, 82, 'LoanPurposes-0501Consumption');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(320, 82, 'LoanPurposes-0600TraditionalWorks');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(321, 82, 'LoanPurposes-0601Carpentry');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(322, 82, 'LoanPurposes-0602StoneCutting');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(323, 82, 'LoanPurposes-0603Poultry');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(324, 82, 'LoanPurposes-0604ClothWeaving');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(325, 82, 'LoanPurposes-0605LeatherSelling');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(326, 82, 'LoanPurposes-0606BarberShop');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(327, 82, 'LoanPurposes-0607Blanketweaving');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(328, 82, 'LoanPurposes-0608WatchShop');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(329, 82, 'LoanPurposes-0609Blacksmith');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(330, 82, 'LoanPurposes-0610IronBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(331, 82, 'LoanPurposes-0611SoundSystem');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(332, 82, 'LoanPurposes-0612PotBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(333, 82, 'LoanPurposes-0613CookingContract');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(334, 82, 'LoanPurposes-0614DhobiBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(335, 82, 'LoanPurposes-0615StoneBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(336, 82, 'LoanPurposes-0616BeautyParlour');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(337, 82, 'LoanPurposes-0700Marriage');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(338, 82, 'LoanPurposes-0999CharakhaMachnies');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(339, 82, 'LoanPurposes-1000Generator');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(340, 82, 'LoanPurposes-1001BandBaha');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(341, 82, 'LoanPurposes-1002TentHouse');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(342, 82, 'LoanPurposes-1003ToiletConstructions');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(343, 82, 'LoanPurposes-1004HouseConstructions');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(344, 82, 'LoanPurposes-1005HouseRepairs');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(345, 82, 'LoanPurposes-1006Education');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(346, 82, 'LoanPurposes-1007GoldPurchase');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(347, 82, 'LoanPurposes-1008Hospital');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(348, 82, 'LoanPurposes-1009Ration');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(349, 82, 'LoanPurposes-1010Education');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(350, 82, 'LoanPurposes-1011IgActivity');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(351, 82, 'LoanPurposes-1012Agriculture');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(352, 82, 'LoanPurposes-1013AssetsCreations');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(353, 82, 'LoanPurposes-1014Festivals');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(354, 82, 'LoanPurposes-1015LoanRepayment');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(355, 82, 'LoanPurposes-1016CurrentBill');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(356, 82, 'LoanPurposes-1017Rent');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(357, 82, 'LoanPurposes-1018Tour');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(358, 82, 'LoanPurposes-1019FerBusiness');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(359, 82, 'LoanPurposes-1019FerBusiness2');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(360, 82, 'LoanPurposes-1020SesionalBusiness');
/*Loan Purposes*/
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(441,1,230,'0000-Animal Husbandry');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(443,1,231,'0001-Cow Purchase');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(445,1,232,'0002-Buffalo Purchase');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(447,1,233,'0003-Goat Purchase');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(449,1,234,'0004-Ox/Buffalo');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(451,1,235,'0005-Pig Raising');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(453,1,236,'0006-Chicken Raising');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(455,1,237,'0007-Donkey Raising');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(457,1,238,'0008-Animal Trading');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(459,1,239,'0009-Horse');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(461,1,240,'0010-Camel');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(463,1,241,'0011-Bear');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(465,1,242,'0012-Sheep Purchase');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(467,1,243,'0013-Hybrid Cow');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(469,1,244,'0014-Photo Frame Work');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(471,1,245,'0021-Fishery');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(473,1,246,'0100-Trading');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(475,1,247,'0101-Paddy Bag Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(477,1,248,'0102-Vegetable Selling');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(479,1,249,'0103-Fruit Selling');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(481,1,250,'0104-Bangles Trading');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(483,1,251,'0105-Tea Shop');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(485,1,252,'0106-Cosmetics Selling');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(487,1,253,'0107-General Stores');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(489,1,254,'0108-Flour Mill');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(491,1,255,'0109-Hotel Trading');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(493,1,256,'0110-Toddy Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(495,1,257,'0111-Pan Shop');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(497,1,258,'0112-PanLeaf Trading');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(499,1,260,'0113-Madical Stors');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(501,1,261,'0114-Meat Selling');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(503,1,262,'0115-Oil Selling');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(505,1,264,'0116-Chat Shop');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(507,1,265,'0117-Paint Shop');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(509,1,266,'0118-Egg Shop');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(511,1,267,'0119-Shoe Maker');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(513,1,268,'0120-Petty Shop');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(515,1,269,'0121-Flower Business');

/**/
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(517,1,270,'0122-Bakery');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(519,1,271,'0123-Coconut Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(521,1,272,'0124-Electricals');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(523,1,273,'0125-Groundnut Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(525,1,274,'0126-Scrap Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(527,1,275,'0127-Broom Stick Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(529,1,276,'0128-Plastic Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(531,1,277,'0129-Petrol Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(533,1,278,'0130-Steel Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(535,1,279,'0131-Banana leaf Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(537,1,280,'0132-Stationary Shop');

/***/
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(539,1,281,'0200-Production');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(541,1,282,'0201-Brick Making');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(543,1,283,'0202-Mat Weaving');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(545,1,284,'0203-Cloth Selling');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(547,1,285,'0204-Sewing Machine');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(549,1,286,'0205-Wood Selling');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(551,1,287,'0206-Bedi Making');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(553,1,288,'0207-Carpet Weaving');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(555,1,289,'0208-Motor Body Making');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(557,1,290,'0209-Building Material');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(559,1,291,'0210-Chain Pulley');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(561,1,292,'0211-Zig-zag Machine');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(563,1,293,'0212-Papad Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(565,1,294,'0213-Tiles Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(567,1,295,'0214-Welding Shop');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(569,1,296,'0215-Bed Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(571,1,297,'0216-Rope Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(573,1,298,'0217-Agarbatti Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(575,1,299,'0300-Transportation');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(577,1,300,'0301-Push Cart/Sagari');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(579,1,301,'0302-Cycle Rickshaw');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(581,1,302,'0303-Bicycle Repairing');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(583,1,303,'0304-Auto Repairing');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(585,1,304,'0305-Bullock Carts');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(587,1,305,'0306-Thresar Machine');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(589,1,306,'0307-Video Set');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(591,1,307,'0308-Mujack Machine');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(593,1,308,'0309-Biskut Fery');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(595,1,309,'0310-Horse Cart');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(597,1,310,'0311-Auto Purchase');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(599,1,311,'0400-Agriculture');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(601,1,312,'0401-Sharecropping');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(603,1,313,'0402-Tree Leasing');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(605,1,314,'0403-Land Releasing');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(607,1,315,'0404-Land Leasing');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(609,1,316,'0405-Food Grain Trading');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(611,1,317,'0406-Motor Purchasing');

/*******************/
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(613,1,318,'0500-Emergency');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(615,1,319,'0501-Consumption');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(617,1,320,'0600-Traditional Works');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(619,1,321,'0601-Carpentry');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(621,1,322,'0602-Stone Cutting');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(623,1,323,'0603-Poultry');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(625,1,324,'0604-Cloth Weaving');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(627,1,325,'0605-Leather Selling');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(629,1,326,'0606-Barber Shop');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(631,1,327,'0607-BlanketWeaving');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(633,1,328,'0608-Watch Shop');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(635,1,329,'0609-Blacksmith');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(637,1,330,'0610-Iron Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(639,1,331,'0611-Sound System');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(641,1,332,'0612-Pot Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(643,1,333,'0613-Cooking Contract');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(645,1,334,'0614-Dhobi Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(647,1,335,'0615-Stone Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(649,1,336,'0616-Beauty Parlour');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(651,1,337,'0700-Marriage');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(653,1,338,'0999-Charakha Machnies');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(655,1,339,'1000-Generator');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(657,1,340,'1001-Band Baha');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(659,1,341,'1002-Tent House');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(661,1,342,'1003-Toilet Constructions');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(663,1,343,'1004-House Constructions');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(665,1,344,'1005-House Repairs');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(667,1,345,'1006-Education');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(669,1,346,'1007-Gold Purchase');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(671,1,347,'1008-Hospital');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(673,1,348,'1009-Ration');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(675,1,349,'1010-Education');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(677,1,350,'1011-IG Activity');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(679,1,351,'1012-Agriculture');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(681,1,352,'1013-Assets Creations');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(683,1,353,'1014-Festivals');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(685,1,354,'1015-Loan Repayment');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(687,1,355,'1016-Current Bill');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(689,1,356,'1017-Rent');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(691,1,357,'1018-Tour');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(693,1,358,'1019-Fer Business');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(695,1,359,'1019-Fer Business2');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(697,1,360,'1020-Sesional Business');

-- Entity: Handicapped
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(138, 22, 'Handicapped-Yes');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(139, 22, 'Handicapped-No');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(255,1,138,'Yes');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE) 		
VALUES(257,1,139,'No');

-- Entity: Titles
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(39, 9, 'Titles-President');
INSERT INTO LOOKUP_VALUE(LOOKUP_ID,ENTITY_ID,LOOKUP_NAME) VALUES(40, 9, 'Titles-VicePresident');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE)
VALUES(77,1,39,'President');
INSERT INTO LOOKUP_VALUE_LOCALE(LOOKUP_VALUE_ID,LOCALE_ID,LOOKUP_ID,LOOKUP_VALUE)
VALUES(79,1,40,'Vice President');


