CREATE TABLE IF NOT EXISTS `__EFMigrationsHistory` (
    `MigrationId` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
    `ProductVersion` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
    CONSTRAINT `PK___EFMigrationsHistory` PRIMARY KEY (`MigrationId`)
) CHARACTER SET=utf8mb4;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    ALTER DATABASE CHARACTER SET utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `AspNetRoles` (
        `Id` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `Name` varchar(256) CHARACTER SET utf8mb4 NULL,
        `NormalizedName` varchar(256) CHARACTER SET utf8mb4 NULL,
        `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_AspNetRoles` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `AspNetUsers` (
        `Id` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `UserName` varchar(256) CHARACTER SET utf8mb4 NULL,
        `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 NULL,
        `Email` varchar(256) CHARACTER SET utf8mb4 NULL,
        `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 NULL,
        `EmailConfirmed` tinyint(1) NOT NULL,
        `PasswordHash` longtext CHARACTER SET utf8mb4 NULL,
        `SecurityStamp` longtext CHARACTER SET utf8mb4 NULL,
        `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 NULL,
        `PhoneNumber` longtext CHARACTER SET utf8mb4 NULL,
        `PhoneNumberConfirmed` tinyint(1) NOT NULL,
        `TwoFactorEnabled` tinyint(1) NOT NULL,
        `LockoutEnd` datetime(6) NULL,
        `LockoutEnabled` tinyint(1) NOT NULL,
        `AccessFailedCount` int NOT NULL,
        CONSTRAINT `PK_AspNetUsers` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `AuditLogs` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Username` longtext CHARACTER SET utf8mb4 NOT NULL,
        `UserRole` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Action` longtext CHARACTER SET utf8mb4 NOT NULL,
        `EntityType` longtext CHARACTER SET utf8mb4 NOT NULL,
        `EntityId` longtext CHARACTER SET utf8mb4 NOT NULL,
        `IPAddress` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Details` longtext CHARACTER SET utf8mb4 NOT NULL,
        `CreatedAt` datetime(6) NOT NULL,
        CONSTRAINT `PK_AuditLogs` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `Lgas` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Code` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_Lgas` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `Mdas` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Code` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Abbreviation` longtext CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_Mdas` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `Notifications` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Message` longtext CHARACTER SET utf8mb4 NOT NULL,
        `IsRead` tinyint(1) NOT NULL,
        `CreatedAt` datetime(6) NOT NULL,
        `UserId` longtext CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_Notifications` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `Pillars` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Code` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Description` longtext CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_Pillars` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `AspNetRoleClaims` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `RoleId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `ClaimType` longtext CHARACTER SET utf8mb4 NULL,
        `ClaimValue` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_AspNetRoleClaims` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `AspNetUserClaims` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `UserId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `ClaimType` longtext CHARACTER SET utf8mb4 NULL,
        `ClaimValue` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_AspNetUserClaims` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `AspNetUserLogins` (
        `LoginProvider` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `ProviderKey` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `ProviderDisplayName` longtext CHARACTER SET utf8mb4 NULL,
        `UserId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_AspNetUserLogins` PRIMARY KEY (`LoginProvider`, `ProviderKey`),
        CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `AspNetUserRoles` (
        `UserId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `RoleId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_AspNetUserRoles` PRIMARY KEY (`UserId`, `RoleId`),
        CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
        CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `AspNetUserTokens` (
        `UserId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `LoginProvider` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `Name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `Value` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_AspNetUserTokens` PRIMARY KEY (`UserId`, `LoginProvider`, `Name`),
        CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `Communities` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `LgaId` int NOT NULL,
        CONSTRAINT `PK_Communities` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_Communities_Lgas_LgaId` FOREIGN KEY (`LgaId`) REFERENCES `Lgas` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `MdaPillar` (
        `MdasId` int NOT NULL,
        `PillarsId` int NOT NULL,
        CONSTRAINT `PK_MdaPillar` PRIMARY KEY (`MdasId`, `PillarsId`),
        CONSTRAINT `FK_MdaPillar_Mdas_MdasId` FOREIGN KEY (`MdasId`) REFERENCES `Mdas` (`Id`) ON DELETE CASCADE,
        CONSTRAINT `FK_MdaPillar_Pillars_PillarsId` FOREIGN KEY (`PillarsId`) REFERENCES `Pillars` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `ProjectLocations` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `LgaId` int NOT NULL,
        `CommunityId` int NOT NULL,
        `Latitude` double NOT NULL,
        `Longitude` double NOT NULL,
        `GeoJson` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_ProjectLocations` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_ProjectLocations_Communities_CommunityId` FOREIGN KEY (`CommunityId`) REFERENCES `Communities` (`Id`) ON DELETE CASCADE,
        CONSTRAINT `FK_ProjectLocations_Lgas_LgaId` FOREIGN KEY (`LgaId`) REFERENCES `Lgas` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `ProjectDefinitions` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Title` longtext CHARACTER SET utf8mb4 NOT NULL,
        `MdaId` int NOT NULL,
        `Description` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Budget` decimal(65,30) NOT NULL,
        `StartDate` datetime(6) NOT NULL,
        `EndDate` datetime(6) NOT NULL,
        `ProjectLocationId` int NOT NULL,
        `Status` longtext CHARACTER SET utf8mb4 NOT NULL,
        `IsApproved` tinyint(1) NOT NULL,
        `ApprovedDate` datetime(6) NULL,
        `RejectionReason` varchar(1000) CHARACTER SET utf8mb4 NULL,
        `RejectedDate` datetime(6) NULL,
        CONSTRAINT `PK_ProjectDefinitions` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_ProjectDefinitions_ProjectLocations_ProjectLocationId` FOREIGN KEY (`ProjectLocationId`) REFERENCES `ProjectLocations` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `PillarProjects` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `PillarId` int NOT NULL,
        `ProjectDefinitionId` int NOT NULL,
        CONSTRAINT `PK_PillarProjects` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_PillarProjects_Pillars_PillarId` FOREIGN KEY (`PillarId`) REFERENCES `Pillars` (`Id`) ON DELETE CASCADE,
        CONSTRAINT `FK_PillarProjects_ProjectDefinitions_ProjectDefinitionId` FOREIGN KEY (`ProjectDefinitionId`) REFERENCES `ProjectDefinitions` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `ProjectKpis` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `ProjectDefinitionId` int NOT NULL,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `TargetValue` double NOT NULL,
        `MeasurementUnit` longtext CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_ProjectKpis` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_ProjectKpis_ProjectDefinitions_ProjectDefinitionId` FOREIGN KEY (`ProjectDefinitionId`) REFERENCES `ProjectDefinitions` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `KpiProgresses` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `ProjectKpiId` int NOT NULL,
        `Description` longtext CHARACTER SET utf8mb4 NOT NULL,
        `ProgressValue` double NOT NULL,
        `ProgressDate` datetime(6) NOT NULL,
        `IsValidated` tinyint(1) NOT NULL,
        `IsRejected` tinyint(1) NOT NULL,
        `latest` tinyint(1) NOT NULL,
        CONSTRAINT `PK_KpiProgresses` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_KpiProgresses_ProjectKpis_ProjectKpiId` FOREIGN KEY (`ProjectKpiId`) REFERENCES `ProjectKpis` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE TABLE `KpiProgressEvidence` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `KpiProgressId` int NOT NULL,
        `EvidenceType` longtext CHARACTER SET utf8mb4 NOT NULL,
        `EvidencePath` longtext CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_KpiProgressEvidence` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_KpiProgressEvidence_KpiProgresses_KpiProgressId` FOREIGN KEY (`KpiProgressId`) REFERENCES `KpiProgresses` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `Lgas` (`Id`, `Code`, `Name`)
    VALUES (1, '01', 'Ado'),
    (2, '02', 'Agatu'),
    (3, '03', 'Apa'),
    (4, '04', 'Buruku'),
    (5, '05', 'Gboko'),
    (6, '06', 'Guma'),
    (7, '07', 'Gwer East'),
    (8, '08', 'Gwer West'),
    (9, '09', 'Katsina-Ala'),
    (10, '10', 'Konshisha'),
    (11, '11', 'Kwande'),
    (12, '12', 'Logo'),
    (13, '13', 'Makurdi'),
    (14, '14', 'Obi'),
    (15, '15', 'Ogbadibo'),
    (16, '16', 'Ohimini'),
    (17, '17', 'Oju'),
    (18, '18', 'Okpokwu'),
    (19, '19', 'Oturkpo'),
    (20, '20', 'Tarka'),
    (21, '21', 'Ukum'),
    (22, '22', 'Ushongo'),
    (23, '23', 'Vandeikya');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `Mdas` (`Id`, `Abbreviation`, `Code`, `Name`)
    VALUES (1, 'BSSA', 'BSSA', 'Benue State Security Agency'),
    (2, 'BSVB', 'BSVB', 'Benue State Vigilante Board'),
    (3, 'MANR', 'MANR', 'Ministry of Agriculture and Natural Resources'),
    (4, 'BNARDA', 'BNARDA', 'Benue State Agricultural and Rural Development Authority'),
    (5, 'MCI', 'MCI', 'Ministry of Commerce and Industry'),
    (6, 'BIPC', 'BIPC', 'Benue Investment and Property Company'),
    (7, 'MWT', 'MWT', 'Ministry of Works and Transport'),
    (8, 'MHUD', 'MHUD', 'Ministry of Housing and Urban Development'),
    (9, 'MOE', 'MOE', 'Ministry of Education'),
    (10, 'MHHS', 'MHHS', 'Ministry of Health and Human Services'),
    (11, 'BICTA', 'BICTA', 'Benue State ICT Agency'),
    (12, 'MCDE', 'MCDE', 'Ministry of Communication and Digital Economy'),
    (13, 'MOF', 'MOF', 'Ministry of Finance'),
    (14, 'OSAG', 'OSAG', 'Office of the State Auditor General');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `Notifications` (`Id`, `CreatedAt`, `IsRead`, `Message`, `UserId`)
    VALUES (1, TIMESTAMP '2025-09-27 17:26:53', FALSE, 'Welcome! Your account has been created.', 'admin'),
    (2, TIMESTAMP '2025-09-27 16:56:53', FALSE, 'New project submitted for validation.', 'validator1'),
    (3, TIMESTAMP '2025-09-27 11:26:53', TRUE, 'System maintenance scheduled for tonight.', 'all');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `Pillars` (`Id`, `Code`, `Description`, `Name`)
    VALUES (1, 'P1', 'Ensuring safety, law enforcement, and protection of lives and property.', 'Security of Lives and Property'),
    (2, 'P2', 'Promoting food security, modern farming practices, and rural empowerment.', 'Agriculture and Rural Development'),
    (3, 'P3', 'Enhancing trade, supporting businesses, and driving industrial growth.', 'Commerce and Industry'),
    (4, 'P4', 'Improving roads, power, housing, and ensuring environmental sustainability.', 'Infrastructure Development and Environment'),
    (5, 'P5', 'Investing in health, education, and skills to empower people.', 'Human Capital Development'),
    (6, 'P6', 'Leveraging ICT to improve governance, efficiency, and innovation.', 'Information and Communications Technology'),
    (7, 'P7', 'Strengthening institutions, transparency, accountability, and fiscal management.', 'Political and Economic Governance');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `Communities` (`Id`, `LgaId`, `Name`)
    VALUES (1, 1, 'Agila'),
    (2, 1, 'Utonkon'),
    (3, 2, 'Obagaji'),
    (4, 2, 'Egba'),
    (5, 3, 'Ugbokpo'),
    (6, 3, 'Ikobi'),
    (7, 4, 'Buruku Town'),
    (8, 4, 'Etulo'),
    (9, 5, 'Gboko East'),
    (10, 5, 'Yandev'),
    (11, 6, 'Daudu'),
    (12, 6, 'Abinsi'),
    (13, 7, 'Aliade'),
    (14, 7, 'Ikpayongo'),
    (15, 8, 'Naka'),
    (16, 8, 'Sengev'),
    (17, 9, 'Katsina-Ala Town'),
    (18, 9, 'Sai'),
    (19, 10, 'Tse-Agberagba'),
    (20, 10, 'Mbavaa'),
    (21, 11, 'Adikpo'),
    (22, 11, 'Liev'),
    (23, 12, 'Ugba'),
    (24, 12, 'Anyiin'),
    (25, 13, 'North Bank'),
    (26, 13, 'Wadata'),
    (27, 14, 'Obarike-Ito'),
    (28, 14, 'Adum'),
    (29, 15, 'Otukpa'),
    (30, 15, 'Owukpa'),
    (31, 16, 'Idekpa'),
    (32, 16, 'Ochobo'),
    (33, 17, 'Oju Town'),
    (34, 17, 'Obusa'),
    (35, 18, 'Okpoga'),
    (36, 18, 'Eke'),
    (37, 19, 'Oturkpo Town'),
    (38, 19, 'Akpa'),
    (39, 20, 'Wannune'),
    (40, 20, 'Gbajimba'),
    (41, 21, 'Zaki-Biam'),
    (42, 21, 'Kundav');
    INSERT INTO `Communities` (`Id`, `LgaId`, `Name`)
    VALUES (43, 22, 'Lessel'),
    (44, 22, 'Mbayegh'),
    (45, 23, 'Vandeikya Town'),
    (46, 23, 'Tsambe');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `ProjectLocations` (`Id`, `CommunityId`, `GeoJson`, `Latitude`, `LgaId`, `Longitude`)
    VALUES (1, 26, NULL, 7.7321999999999997, 13, 8.5390999999999995),
    (2, 10, NULL, 7.3211000000000004, 5, 9.0031999999999996),
    (3, 46, NULL, 6.7862, 23, 9.0714000000000006),
    (4, 3, NULL, 7.6352000000000002, 2, 7.8833000000000002),
    (5, 21, NULL, 6.8689, 11, 9.1753);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `ProjectDefinitions` (`Id`, `ApprovedDate`, `Budget`, `Description`, `EndDate`, `IsApproved`, `MdaId`, `ProjectLocationId`, `RejectedDate`, `RejectionReason`, `StartDate`, `Status`, `Title`)
    VALUES (1, NULL, 500000000.0, 'Expansion of potable water supply across Makurdi metropolis.', TIMESTAMP '2026-12-31 00:00:00', FALSE, 7, 1, NULL, NULL, TIMESTAMP '2025-01-01 00:00:00', 'Planned', 'Makurdi Water Supply Expansion'),
    (2, NULL, 350000000.0, 'Rehabilitation of Gboko-Yandev road to boost trade and mobility.', TIMESTAMP '2026-06-30 00:00:00', FALSE, 7, 2, NULL, NULL, TIMESTAMP '2025-02-01 00:00:00', 'Planned', 'Gboko-Yandev Road Rehabilitation'),
    (3, NULL, 200000000.0, 'Establishment of a modern ICT innovation hub for youths in Vandeikya.', TIMESTAMP '2025-12-31 00:00:00', FALSE, 11, 3, NULL, NULL, TIMESTAMP '2025-03-01 00:00:00', 'Planned', 'ICT Innovation Hub, Vandeikya'),
    (4, NULL, 450000000.0, 'Rice irrigation and mechanized farming in Agatu to boost food security.', TIMESTAMP '2027-03-31 00:00:00', FALSE, 3, 4, NULL, NULL, TIMESTAMP '2025-04-01 00:00:00', 'Planned', 'Agatu Rice Irrigation Scheme'),
    (5, NULL, 300000000.0, 'Renovation of 20 public schools in Kwande LGA to improve education quality.', TIMESTAMP '2026-05-01 00:00:00', FALSE, 9, 5, NULL, NULL, TIMESTAMP '2025-05-01 00:00:00', 'Planned', 'Kwande School Renovation Project');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `PillarProjects` (`Id`, `PillarId`, `ProjectDefinitionId`)
    VALUES (1, 4, 1),
    (2, 5, 1),
    (3, 4, 2),
    (4, 3, 2),
    (5, 6, 3),
    (6, 5, 3),
    (7, 2, 4),
    (8, 5, 5);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `ProjectKpis` (`Id`, `MeasurementUnit`, `Name`, `ProjectDefinitionId`, `TargetValue`)
    VALUES (1, 'Households', 'Households with water access', 1, 15000.0),
    (2, 'Plants', 'Water treatment plants installed', 1, 5.0),
    (3, 'Kilometers', 'Kilometers of pipeline laid', 1, 45.0),
    (4, 'Kilometers', 'Road kilometers rehabilitated', 2, 32.0),
    (5, 'Bridges', 'Bridges constructed', 2, 2.0),
    (6, 'Percent', 'Travel time reduction', 2, 40.0),
    (7, 'Youths', 'Youths trained in digital skills', 3, 1200.0),
    (8, 'Startups', 'Startups incubated', 3, 25.0),
    (9, 'Units', 'ICT equipment provided', 3, 150.0),
    (10, 'Hectares', 'Hectares of irrigated farmland', 4, 5000.0),
    (11, 'Farmers', 'Farmers supported', 4, 2500.0),
    (12, 'Percent', 'Rice production increase', 4, 60.0),
    (13, 'Schools', 'Schools renovated', 5, 20.0),
    (14, 'Classrooms', 'Classrooms equipped', 5, 120.0),
    (15, 'Students', 'Students benefiting', 5, 8000.0);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `KpiProgresses` (`Id`, `Description`, `IsRejected`, `IsValidated`, `ProgressDate`, `ProgressValue`, `ProjectKpiId`, `latest`)
    VALUES (1, 'Initial connection of 2,500 households to new water lines', FALSE, TRUE, TIMESTAMP '2025-03-15 00:00:00', 2500.0, 1, FALSE),
    (2, 'Completed connection of 8,000 households', FALSE, TRUE, TIMESTAMP '2025-06-30 00:00:00', 8000.0, 1, FALSE),
    (3, 'Reached 12,500 households with clean water access', FALSE, TRUE, TIMESTAMP '2025-09-30 00:00:00', 12500.0, 1, TRUE),
    (4, 'Completed construction of first water treatment plant', FALSE, TRUE, TIMESTAMP '2025-04-10 00:00:00', 1.0, 2, FALSE),
    (5, 'Second and third treatment plants now operational', FALSE, TRUE, TIMESTAMP '2025-07-20 00:00:00', 3.0, 2, FALSE),
    (6, 'Fourth treatment plant completed, fifth in final testing phase', FALSE, TRUE, TIMESTAMP '2025-10-05 00:00:00', 4.5, 2, TRUE),
    (7, 'Completed laying 15km of main pipeline', FALSE, TRUE, TIMESTAMP '2025-05-01 00:00:00', 15.0, 3, FALSE),
    (8, 'Extended pipeline network to 32km', FALSE, TRUE, TIMESTAMP '2025-08-15 00:00:00', 32.0, 3, FALSE),
    (9, 'Total pipeline network now at 42km', FALSE, TRUE, TIMESTAMP '2025-11-10 00:00:00', 42.0, 3, TRUE),
    (10, 'Completed first 8km of road rehabilitation', FALSE, TRUE, TIMESTAMP '2025-04-20 00:00:00', 8.0, 4, FALSE),
    (11, 'Reached 20km of rehabilitated road surface', FALSE, TRUE, TIMESTAMP '2025-07-10 00:00:00', 20.0, 4, FALSE),
    (12, '28km completed, final 4km in progress', FALSE, TRUE, TIMESTAMP '2025-10-25 00:00:00', 28.0, 4, TRUE),
    (13, 'Completed foundation work for first bridge', FALSE, TRUE, TIMESTAMP '2025-05-15 00:00:00', 0.5, 5, FALSE),
    (14, 'First bridge completed, second bridge pilings installed', FALSE, TRUE, TIMESTAMP '2025-08-05 00:00:00', 1.5, 5, FALSE),
    (15, 'Both bridges fully operational and open to traffic', FALSE, TRUE, TIMESTAMP '2025-11-15 00:00:00', 2.0, 5, TRUE),
    (16, 'Initial travel time measurements established', FALSE, TRUE, TIMESTAMP '2025-03-01 00:00:00', 0.0, 6, FALSE),
    (17, '15% reduction in travel time on completed sections', FALSE, TRUE, TIMESTAMP '2025-06-30 00:00:00', 15.0, 6, FALSE),
    (18, '35% average travel time reduction achieved', FALSE, TRUE, TIMESTAMP '2025-10-30 00:00:00', 35.0, 6, TRUE),
    (19, 'First cohort of 200 youths completed basic digital literacy', FALSE, TRUE, TIMESTAMP '2025-05-30 00:00:00', 200.0, 7, FALSE),
    (20, '650 youths trained across various digital skills programs', FALSE, TRUE, TIMESTAMP '2025-08-20 00:00:00', 650.0, 7, FALSE),
    (21, 'Reached 1,100 youths with digital skills training', FALSE, TRUE, TIMESTAMP '2025-11-30 00:00:00', 1100.0, 7, TRUE),
    (22, 'Selected first 8 startups for incubation program', FALSE, TRUE, TIMESTAMP '2025-06-15 00:00:00', 8.0, 8, FALSE),
    (23, '18 startups currently in incubation with mentorship', FALSE, TRUE, TIMESTAMP '2025-09-10 00:00:00', 18.0, 8, FALSE),
    (24, '24 startups incubated, 3 already generating revenue', FALSE, TRUE, TIMESTAMP '2025-12-15 00:00:00', 24.0, 8, TRUE),
    (25, 'Installed initial batch of 50 computers and equipment', FALSE, TRUE, TIMESTAMP '2025-04-25 00:00:00', 50.0, 9, FALSE),
    (26, 'Equipment inventory reached 110 units', FALSE, TRUE, TIMESTAMP '2025-07-30 00:00:00', 110.0, 9, FALSE),
    (27, 'Full complement of 150 ICT equipment units operational', FALSE, TRUE, TIMESTAMP '2025-10-20 00:00:00', 150.0, 9, TRUE);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `KpiProgressEvidence` (`Id`, `EvidencePath`, `EvidenceType`, `KpiProgressId`)
    VALUES (1, '/documents/water-project/household-connections-q1-2025.pdf', 'Document', 1),
    (2, '/images/water-project/household-connections-march-2025.zip', 'Photo', 1),
    (3, '/documents/water-project/household-progress-q3-2025.pdf', 'Document', 3),
    (4, '/data/water-project/coverage-map-sept-2025.geojson', 'Document', 3),
    (5, '/documents/water-project/plant-commissioning-oct-2025.pdf', 'Document', 6),
    (6, '/images/water-project/treatment-plant-oct-2025.zip', 'Photo', 6),
    (7, '/documents/water-project/pipeline-progress-nov-2025.pdf', 'Document', 9),
    (8, '/videos/water-project/pipeline-route-nov-2025.mp4', 'Video', 9),
    (9, '/documents/road-project/kilometer-progress-oct-2025.pdf', 'Document', 12),
    (10, '/images/road-project/aerial-oct-2025.zip', 'Photo', 12),
    (11, '/documents/road-project/bridge-certification-nov-2025.pdf', 'Document', 15),
    (12, '/data/road-project/bridge-traffic-nov-2025.csv', 'Document', 15),
    (13, '/documents/road-project/travel-time-study-oct-2025.pdf', 'Document', 18),
    (14, '/data/road-project/gps-travel-times-oct-2025.gpx', 'Document', 18),
    (15, '/documents/ict-project/trainee-records-nov-2025.pdf', 'Document', 21),
    (16, '/documents/ict-project/training-certificates-nov-2025.zip', 'Document', 21),
    (17, '/documents/ict-project/startup-portfolio-dec-2025.pdf', 'Document', 24),
    (18, '/documents/ict-project/startup-success-stories-dec-2025.pdf', 'Document', 24),
    (19, '/documents/ict-project/equipment-inventory-oct-2025.pdf', 'Document', 27),
    (20, '/documents/ict-project/equipment-maintenance-oct-2025.pdf', 'Document', 27);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_AspNetRoleClaims_RoleId` ON `AspNetRoleClaims` (`RoleId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE UNIQUE INDEX `RoleNameIndex` ON `AspNetRoles` (`NormalizedName`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_AspNetUserClaims_UserId` ON `AspNetUserClaims` (`UserId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_AspNetUserLogins_UserId` ON `AspNetUserLogins` (`UserId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_AspNetUserRoles_RoleId` ON `AspNetUserRoles` (`RoleId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `EmailIndex` ON `AspNetUsers` (`NormalizedEmail`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE UNIQUE INDEX `UserNameIndex` ON `AspNetUsers` (`NormalizedUserName`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_Communities_LgaId` ON `Communities` (`LgaId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_KpiProgresses_ProjectKpiId` ON `KpiProgresses` (`ProjectKpiId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_KpiProgressEvidence_KpiProgressId` ON `KpiProgressEvidence` (`KpiProgressId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_MdaPillar_PillarsId` ON `MdaPillar` (`PillarsId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_PillarProjects_PillarId` ON `PillarProjects` (`PillarId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_PillarProjects_ProjectDefinitionId` ON `PillarProjects` (`ProjectDefinitionId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE UNIQUE INDEX `IX_Pillars_Code` ON `Pillars` (`Code`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_ProjectDefinitions_ProjectLocationId` ON `ProjectDefinitions` (`ProjectLocationId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_ProjectKpis_ProjectDefinitionId` ON `ProjectKpis` (`ProjectDefinitionId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_ProjectLocations_CommunityId` ON `ProjectLocations` (`CommunityId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    CREATE INDEX `IX_ProjectLocations_LgaId` ON `ProjectLocations` (`LgaId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20250927172656_AddIsActiveToAspNetUsers') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20250927172656_AddIsActiveToAspNetUsers', '8.0.19');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    DROP TABLE `MdaPillar`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `ProjectDefinitions` ADD `CmuApprovedDate` datetime(6) NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `ProjectDefinitions` ADD `CmuRejectedDate` datetime(6) NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `ProjectDefinitions` ADD `CmuRejectionReason` varchar(1000) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `ProjectDefinitions` ADD `HeadApprovedDate` datetime(6) NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `ProjectDefinitions` ADD `HeadRejectedDate` datetime(6) NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `ProjectDefinitions` ADD `HeadRejectionReason` varchar(1000) CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `ProjectDefinitions` ADD `IsCmuApproved` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `ProjectDefinitions` ADD `IsHeadApproved` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `Mdas` ADD `ParentMdaId` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `Mdas` ADD `PillarId` int NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `AspNetRoles` ADD `Rol` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 1;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 2;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 3;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 4;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 5;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = 5, `PillarId` = NULL
    WHERE `Id` = 6;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 7;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 8;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 9;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 10;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `Code` = 'BDIC', `Name` = 'Benue Digital Infrastructure Company Plc', `ParentMdaId` = 12, `PillarId` = NULL
    WHERE `Id` = 11;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 12;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 13;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Mdas` SET `ParentMdaId` = NULL, `PillarId` = NULL
    WHERE `Id` = 14;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    INSERT INTO `Mdas` (`Id`, `Abbreviation`, `Code`, `Name`, `ParentMdaId`, `PillarId`)
    VALUES (15, 'TSB', 'TSB', 'Teaching Service Board', 9, NULL);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Notifications` SET `CreatedAt` = TIMESTAMP '2025-10-01 12:17:53'
    WHERE `Id` = 1;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Notifications` SET `CreatedAt` = TIMESTAMP '2025-10-01 11:47:53'
    WHERE `Id` = 2;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `Notifications` SET `CreatedAt` = TIMESTAMP '2025-10-01 06:17:53'
    WHERE `Id` = 3;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `ProjectDefinitions` SET `CmuApprovedDate` = NULL, `CmuRejectedDate` = NULL, `CmuRejectionReason` = NULL, `HeadApprovedDate` = NULL, `HeadRejectedDate` = NULL, `HeadRejectionReason` = NULL, `IsCmuApproved` = FALSE, `IsHeadApproved` = FALSE
    WHERE `Id` = 1;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `ProjectDefinitions` SET `CmuApprovedDate` = NULL, `CmuRejectedDate` = NULL, `CmuRejectionReason` = NULL, `HeadApprovedDate` = NULL, `HeadRejectedDate` = NULL, `HeadRejectionReason` = NULL, `IsCmuApproved` = FALSE, `IsHeadApproved` = FALSE
    WHERE `Id` = 2;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `ProjectDefinitions` SET `CmuApprovedDate` = NULL, `CmuRejectedDate` = NULL, `CmuRejectionReason` = NULL, `HeadApprovedDate` = NULL, `HeadRejectedDate` = NULL, `HeadRejectionReason` = NULL, `IsCmuApproved` = FALSE, `IsHeadApproved` = FALSE
    WHERE `Id` = 3;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `ProjectDefinitions` SET `CmuApprovedDate` = NULL, `CmuRejectedDate` = NULL, `CmuRejectionReason` = NULL, `HeadApprovedDate` = NULL, `HeadRejectedDate` = NULL, `HeadRejectionReason` = NULL, `IsCmuApproved` = FALSE, `IsHeadApproved` = FALSE
    WHERE `Id` = 4;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    UPDATE `ProjectDefinitions` SET `CmuApprovedDate` = NULL, `CmuRejectedDate` = NULL, `CmuRejectionReason` = NULL, `HeadApprovedDate` = NULL, `HeadRejectedDate` = NULL, `HeadRejectionReason` = NULL, `IsCmuApproved` = FALSE, `IsHeadApproved` = FALSE
    WHERE `Id` = 5;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    CREATE INDEX `IX_ProjectDefinitions_MdaId` ON `ProjectDefinitions` (`MdaId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    CREATE INDEX `IX_Mdas_ParentMdaId` ON `Mdas` (`ParentMdaId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    CREATE INDEX `IX_Mdas_PillarId` ON `Mdas` (`PillarId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `Mdas` ADD CONSTRAINT `FK_Mdas_Mdas_ParentMdaId` FOREIGN KEY (`ParentMdaId`) REFERENCES `Mdas` (`Id`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `Mdas` ADD CONSTRAINT `FK_Mdas_Pillars_PillarId` FOREIGN KEY (`PillarId`) REFERENCES `Pillars` (`Id`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    ALTER TABLE `ProjectDefinitions` ADD CONSTRAINT `FK_ProjectDefinitions_Mdas_MdaId` FOREIGN KEY (`MdaId`) REFERENCES `Mdas` (`Id`) ON DELETE CASCADE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20251001121757_AddCreatorToRoles') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20251001121757_AddCreatorToRoles', '8.0.19');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

START TRANSACTION;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `Communities` DROP FOREIGN KEY `FK_Communities_Lgas_LgaId`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP FOREIGN KEY `FK_ProjectDefinitions_ProjectLocations_ProjectLocationId`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    DROP TABLE `KpiProgressEvidence`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    DROP TABLE `ProjectLocations`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `ApprovedDate`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `CmuApprovedDate`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `CmuRejectedDate`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `CmuRejectionReason`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `HeadApprovedDate`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `HeadRejectedDate`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `HeadRejectionReason`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `IsApproved`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `IsCmuApproved`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `IsHeadApproved`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `RejectedDate`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` DROP COLUMN `RejectionReason`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` RENAME COLUMN `Status` TO `Stage`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` RENAME COLUMN `ProjectLocationId` TO `ContractorId`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` RENAME INDEX `IX_ProjectDefinitions_ProjectLocationId` TO `IX_ProjectDefinitions_ContractorId`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `KpiProgresses` RENAME COLUMN `IsRejected` TO `IsHeadValidated`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `Communities` RENAME COLUMN `LgaId` TO `WardId`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `Communities` RENAME INDEX `IX_Communities_LgaId` TO `IX_Communities_WardId`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `AspNetRoles` RENAME COLUMN `RoleLevel` TO `Creator`;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` ADD `CommunityId` int NOT NULL DEFAULT 0;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` ADD `GeoJson` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` ADD `Latitude` double NOT NULL DEFAULT 0.0;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` ADD `Longitude` double NOT NULL DEFAULT 0.0;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `KpiProgresses` ADD `ActionDate` date NOT NULL DEFAULT '0001-01-01';

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `KpiProgresses` ADD `EvidencePath` longtext CHARACTER SET utf8mb4 NOT NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `KpiProgresses` ADD `EvidenceType` longtext CHARACTER SET utf8mb4 NOT NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `KpiProgresses` ADD `IsCmuValidated` tinyint(1) NOT NULL DEFAULT FALSE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `AspNetUsers` ADD `Address` longtext CHARACTER SET utf8mb4 NOT NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `AspNetUsers` ADD `FullName` longtext CHARACTER SET utf8mb4 NOT NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `AspNetUsers` ADD `NINumber` longtext CHARACTER SET utf8mb4 NULL;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `AssetCategories` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Description` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_AssetCategories` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `Complains` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `ProjectDefinitionId` int NOT NULL,
        `ProjectKpiId` int NOT NULL,
        `KpiProgressId` int NOT NULL,
        `Subject` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Description` longtext CHARACTER SET utf8mb4 NOT NULL,
        `EvidenceType` longtext CHARACTER SET utf8mb4 NOT NULL,
        `EvidenceFilePaths` longtext CHARACTER SET utf8mb4 NULL,
        `Status` longtext CHARACTER SET utf8mb4 NOT NULL,
        `IsActive` tinyint(1) NOT NULL,
        `ReferenceNumber` longtext CHARACTER SET utf8mb4 NOT NULL,
        `SubmittedDate` datetime(6) NOT NULL,
        `SubmittedBy` longtext CHARACTER SET utf8mb4 NULL,
        `ReviewedBy` longtext CHARACTER SET utf8mb4 NULL,
        `ReviewedComment` longtext CHARACTER SET utf8mb4 NULL,
        `ReviewedDate` datetime(6) NULL,
        `ValidatedByBy` longtext CHARACTER SET utf8mb4 NULL,
        `ValidatorRemarks` longtext CHARACTER SET utf8mb4 NULL,
        `ValidatedDate` datetime(6) NULL,
        `ApprovedBy` longtext CHARACTER SET utf8mb4 NULL,
        `MdaHeadRemarks` longtext CHARACTER SET utf8mb4 NULL,
        `ApprovedDate` datetime(6) NULL,
        `CmuReviewer` longtext CHARACTER SET utf8mb4 NULL,
        `CmuComment` longtext CHARACTER SET utf8mb4 NULL,
        `CmuReviewedDate` datetime(6) NULL,
        CONSTRAINT `PK_Complains` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_Complains_KpiProgresses_KpiProgressId` FOREIGN KEY (`KpiProgressId`) REFERENCES `KpiProgresses` (`Id`) ON DELETE CASCADE,
        CONSTRAINT `FK_Complains_ProjectDefinitions_ProjectDefinitionId` FOREIGN KEY (`ProjectDefinitionId`) REFERENCES `ProjectDefinitions` (`Id`) ON DELETE CASCADE,
        CONSTRAINT `FK_Complains_ProjectKpis_ProjectKpiId` FOREIGN KEY (`ProjectKpiId`) REFERENCES `ProjectKpis` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `Contractors` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `RegistrationNumber` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Description` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Address` longtext CHARACTER SET utf8mb4 NOT NULL,
        `PhoneNumber` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Email` longtext CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_Contractors` PRIMARY KEY (`Id`)
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `ProjectApprovals` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `ProjectDefinitionId` int NOT NULL,
        `ValidatorApproved` tinyint(1) NOT NULL,
        `ValidatorApprovedDate` datetime(6) NULL,
        `MdaHeadApproved` tinyint(1) NOT NULL,
        `MdaHeadApprovedDate` datetime(6) NULL,
        `CmuApproved` tinyint(1) NOT NULL,
        `CmuApprovedDate` datetime(6) NULL,
        CONSTRAINT `PK_ProjectApprovals` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_ProjectApprovals_ProjectDefinitions_ProjectDefinitionId` FOREIGN KEY (`ProjectDefinitionId`) REFERENCES `ProjectDefinitions` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `ProjectQueries` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `ProjectId` int NOT NULL,
        `RaisedByRole` longtext CHARACTER SET utf8mb4 NOT NULL,
        `RaisedByUser` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Message` longtext CHARACTER SET utf8mb4 NOT NULL,
        `RaisedDate` datetime(6) NOT NULL,
        `VisibleToRoles` longtext CHARACTER SET utf8mb4 NOT NULL,
        `IsResolved` tinyint(1) NOT NULL,
        `ResolvedDate` datetime(6) NULL,
        `ResolvedBy` longtext CHARACTER SET utf8mb4 NULL,
        `ResolvedByRole` longtext CHARACTER SET utf8mb4 NULL,
        `ResolutionComment` longtext CHARACTER SET utf8mb4 NULL,
        CONSTRAINT `PK_ProjectQueries` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_ProjectQueries_ProjectDefinitions_ProjectId` FOREIGN KEY (`ProjectId`) REFERENCES `ProjectDefinitions` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `ReleasedAllocations` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `ProjectDefinitionId` int NOT NULL,
        `TrancheAmount` decimal(65,30) NOT NULL,
        `IsLatestRelease` tinyint(1) NOT NULL,
        `TotalReleasedAmount` decimal(65,30) NOT NULL,
        `ReleasedDate` datetime(6) NOT NULL,
        CONSTRAINT `PK_ReleasedAllocations` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_ReleasedAllocations_ProjectDefinitions_ProjectDefinitionId` FOREIGN KEY (`ProjectDefinitionId`) REFERENCES `ProjectDefinitions` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `wards` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `Code` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Name` longtext CHARACTER SET utf8mb4 NOT NULL,
        `LgaId` int NOT NULL,
        CONSTRAINT `PK_wards` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_wards_Lgas_LgaId` FOREIGN KEY (`LgaId`) REFERENCES `Lgas` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `MDAAssets` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `assetCode` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
        `AssetName` longtext CHARACTER SET utf8mb4 NOT NULL,
        `AssetCategoryId` int NOT NULL,
        `Description` longtext CHARACTER SET utf8mb4 NOT NULL,
        `DateAcquired` datetime(6) NULL,
        `MdaId` int NOT NULL,
        `Location` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Latitude` double NULL,
        `Longitude` double NULL,
        `CurrentStatus` int NOT NULL,
        `Remark` longtext CHARACTER SET utf8mb4 NOT NULL,
        `CreatedBy` longtext CHARACTER SET utf8mb4 NOT NULL,
        `CreatedAt` datetime(6) NOT NULL,
        CONSTRAINT `PK_MDAAssets` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_MDAAssets_AssetCategories_AssetCategoryId` FOREIGN KEY (`AssetCategoryId`) REFERENCES `AssetCategories` (`Id`) ON DELETE CASCADE,
        CONSTRAINT `FK_MDAAssets_Mdas_MdaId` FOREIGN KEY (`MdaId`) REFERENCES `Mdas` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `ContractorProjects` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `ContractorId` int NOT NULL,
        `ProjectDefinitionId` int NOT NULL,
        CONSTRAINT `PK_ContractorProjects` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_ContractorProjects_Contractors_ContractorId` FOREIGN KEY (`ContractorId`) REFERENCES `Contractors` (`Id`) ON DELETE CASCADE,
        CONSTRAINT `FK_ContractorProjects_ProjectDefinitions_ProjectDefinitionId` FOREIGN KEY (`ProjectDefinitionId`) REFERENCES `ProjectDefinitions` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `ProjectSuggestions` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `CitizenId` longtext CHARACTER SET utf8mb4 NOT NULL,
        `ProjectTitle` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Description` longtext CHARACTER SET utf8mb4 NOT NULL,
        `Community` longtext CHARACTER SET utf8mb4 NOT NULL,
        `WardId` int NOT NULL,
        `AttachmentUrl` longtext CHARACTER SET utf8mb4 NULL,
        `Status` int NOT NULL,
        `DateSubmitted` datetime(6) NOT NULL,
        `IsPutToVote` tinyint(1) NOT NULL,
        `VoteStartDate` datetime(6) NULL,
        `VoteEndDate` datetime(6) NULL,
        `ReviewedBy` longtext CHARACTER SET utf8mb4 NULL,
        `ReviewerComment` longtext CHARACTER SET utf8mb4 NULL,
        `DateReviewed` datetime(6) NULL,
        `IsActive` tinyint(1) NOT NULL,
        CONSTRAINT `PK_ProjectSuggestions` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_ProjectSuggestions_wards_WardId` FOREIGN KEY (`WardId`) REFERENCES `wards` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `AssetHistories` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `AssetId` int NOT NULL,
        `Status` int NOT NULL,
        `StatusDate` datetime(6) NOT NULL,
        `CreatedBy` longtext CHARACTER SET utf8mb4 NOT NULL,
        `StatusDescription` longtext CHARACTER SET utf8mb4 NOT NULL,
        CONSTRAINT `PK_AssetHistories` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_AssetHistories_MDAAssets_AssetId` FOREIGN KEY (`AssetId`) REFERENCES `MDAAssets` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE TABLE `ProjectSuggestionVotes` (
        `Id` int NOT NULL AUTO_INCREMENT,
        `ProjectSuggestionId` int NOT NULL,
        `CitizenId` longtext CHARACTER SET utf8mb4 NOT NULL,
        `DateVoted` datetime(6) NOT NULL,
        CONSTRAINT `PK_ProjectSuggestionVotes` PRIMARY KEY (`Id`),
        CONSTRAINT `FK_ProjectSuggestionVotes_ProjectSuggestions_ProjectSuggestionId` FOREIGN KEY (`ProjectSuggestionId`) REFERENCES `ProjectSuggestions` (`Id`) ON DELETE CASCADE
    ) CHARACTER SET=utf8mb4;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `WardId` = 2
    WHERE `Id` = 2;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ekile Town', `WardId` = 3
    WHERE `Id` = 3;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Igumale I Village', `WardId` = 4
    WHERE `Id` = 4;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Igumale II Village', `WardId` = 5
    WHERE `Id` = 5;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ijigban', `WardId` = 6
    WHERE `Id` = 6;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ogege', `WardId` = 7
    WHERE `Id` = 7;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Royongo', `WardId` = 8
    WHERE `Id` = 8;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ukwonyo', `WardId` = 9
    WHERE `Id` = 9;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ulayi', `WardId` = 10
    WHERE `Id` = 10;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Egba', `WardId` = 11
    WHERE `Id` = 11;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Enungba', `WardId` = 12
    WHERE `Id` = 12;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Obagaji', `WardId` = 13
    WHERE `Id` = 13;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Odugbeho', `WardId` = 14
    WHERE `Id` = 14;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ogbaulu', `WardId` = 15
    WHERE `Id` = 15;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ogwule Ogbaulu', `WardId` = 16
    WHERE `Id` = 16;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ogwule-Kaduna', `WardId` = 17
    WHERE `Id` = 17;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Okokolo', `WardId` = 18
    WHERE `Id` = 18;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Oshigbudu', `WardId` = 19
    WHERE `Id` = 19;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Usha', `WardId` = 20
    WHERE `Id` = 20;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Akpete/Ojantelle', `WardId` = 21
    WHERE `Id` = 21;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Auke', `WardId` = 22
    WHERE `Id` = 22;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Edikwu I', `WardId` = 23
    WHERE `Id` = 23;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Edikwu II', `WardId` = 24
    WHERE `Id` = 24;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Igah-Okpaya', `WardId` = 25
    WHERE `Id` = 25;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Igoro', `WardId` = 26
    WHERE `Id` = 26;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ikobi', `WardId` = 27
    WHERE `Id` = 27;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Oba Town', `WardId` = 28
    WHERE `Id` = 28;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ofoke', `WardId` = 29
    WHERE `Id` = 29;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Oiji', `WardId` = 30
    WHERE `Id` = 30;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Ugbokpo', `WardId` = 31
    WHERE `Id` = 31;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Binev', `WardId` = 32
    WHERE `Id` = 32;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Etulo', `WardId` = 33
    WHERE `Id` = 33;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Mbaade', `WardId` = 34
    WHERE `Id` = 34;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Mbaakura', `WardId` = 35
    WHERE `Id` = 35;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Mbaapen', `WardId` = 36
    WHERE `Id` = 36;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'MbaitirKyaa', `WardId` = 37
    WHERE `Id` = 37;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Mbaazagee', `WardId` = 38
    WHERE `Id` = 38;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Mbaikyongo/Nyifon', `WardId` = 39
    WHERE `Id` = 39;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Mbaitough', `WardId` = 40
    WHERE `Id` = 40;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Mbakyaan', `WardId` = 41
    WHERE `Id` = 41;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Mbaya', `WardId` = 42
    WHERE `Id` = 42;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Mbayaka', `WardId` = 43
    WHERE `Id` = 43;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Shorov', `WardId` = 44
    WHERE `Id` = 44;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'GBK Central Market', `WardId` = 45
    WHERE `Id` = 45;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Communities` SET `Name` = 'Gboko East', `WardId` = 46
    WHERE `Id` = 46;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/water-connections-march.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 1;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/videos/progress/water-connections-june.mp4', `EvidenceType` = 'Video', `IsCmuValidated` = FALSE
    WHERE `Id` = 2;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/water-connections-september.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 3;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/treatment-plant-1.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 4;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/videos/progress/treatment-plants-july.mp4', `EvidenceType` = 'Video', `IsCmuValidated` = FALSE
    WHERE `Id` = 5;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/treatment-plant-4.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 6;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/pipeline-may.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 7;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/videos/progress/pipeline-august.mp4', `EvidenceType` = 'Video', `IsCmuValidated` = FALSE
    WHERE `Id` = 8;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/pipeline-november.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 9;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/road-april.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 10;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/videos/progress/road-july.mp4', `EvidenceType` = 'Video', `IsCmuValidated` = FALSE
    WHERE `Id` = 11;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/road-october.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 12;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/bridge-foundation.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 13;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/videos/progress/bridge-august.mp4', `EvidenceType` = 'Video', `IsCmuValidated` = FALSE
    WHERE `Id` = 14;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/bridges-completed.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 15;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/travel-time-baseline.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 16;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/videos/progress/travel-time-june.mp4', `EvidenceType` = 'Video', `IsCmuValidated` = FALSE
    WHERE `Id` = 17;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/travel-time-october.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 18;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/digital-literacy-may.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 19;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/videos/progress/youth-training-august.mp4', `EvidenceType` = 'Video', `IsCmuValidated` = FALSE
    WHERE `Id` = 20;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/youth-training-november.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 21;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/startup-selection.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 22;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/videos/progress/startup-incubation.mp4', `EvidenceType` = 'Video', `IsCmuValidated` = FALSE
    WHERE `Id` = 23;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/startup-success.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 24;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/computer-lab-april.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 25;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/videos/progress/equipment-july.mp4', `EvidenceType` = 'Video', `IsCmuValidated` = FALSE
    WHERE `Id` = 26;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `KpiProgresses` SET `ActionDate` = DATE '2026-02-26', `EvidencePath` = '/images/progress/equipment-october.jpg', `EvidenceType` = 'Image', `IsCmuValidated` = FALSE
    WHERE `Id` = 27;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Notifications` SET `CreatedAt` = TIMESTAMP '2026-02-26 09:29:30'
    WHERE `Id` = 1;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Notifications` SET `CreatedAt` = TIMESTAMP '2026-02-26 08:59:30'
    WHERE `Id` = 2;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `Notifications` SET `CreatedAt` = TIMESTAMP '2026-02-26 03:29:30'
    WHERE `Id` = 3;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `ProjectDefinitions` SET `CommunityId` = 10, `ContractorId` = 0, `Description` = 'Makurdi Water Supply Expansion', `EndDate` = TIMESTAMP '2026-06-30 00:00:00', `GeoJson` = NULL, `Latitude` = 7.3570000000000002, `Longitude` = 9.0031999999999996, `StartDate` = TIMESTAMP '2025-02-01 00:00:00', `Title` = 'Gboko-Yandev Road Rehabilitation'
    WHERE `Id` = 1;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `ProjectDefinitions` SET `CommunityId` = 10, `ContractorId` = 0, `GeoJson` = NULL, `Latitude` = 7.3570000000000002, `Longitude` = 9.0031999999999996
    WHERE `Id` = 2;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `ProjectDefinitions` SET `CommunityId` = 45, `ContractorId` = 0, `GeoJson` = NULL, `Latitude` = 6.7832999999999997, `Longitude` = 9.0667000000000009
    WHERE `Id` = 3;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `ProjectDefinitions` SET `CommunityId` = 3, `ContractorId` = 0, `GeoJson` = NULL, `Latitude` = 7.7134, `Longitude` = 7.8712
    WHERE `Id` = 4;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    UPDATE `ProjectDefinitions` SET `CommunityId` = 21, `ContractorId` = 0, `GeoJson` = NULL, `Latitude` = 6.9829999999999997, `Longitude` = 9.1829999999999998
    WHERE `Id` = 5;
    SELECT ROW_COUNT();


    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    INSERT INTO `wards` (`Id`, `Code`, `LgaId`, `Name`)
    VALUES (1, '1', 1, 'AKOGE/OGBILOLO'),
    (2, '2', 1, 'APA'),
    (3, '3', 1, 'EKILE'),
    (4, '4', 1, 'IGUMALE I'),
    (5, '5', 1, 'IGUMALE II'),
    (6, '6', 1, 'IJIGBAN'),
    (7, '7', 1, 'OGEGE'),
    (8, '8', 1, 'ROYONGO'),
    (9, '9', 1, 'UKWONYO'),
    (10, '10', 1, 'ULAYI'),
    (11, '1', 2, 'EGBA'),
    (12, '2', 2, 'ENUNGBA'),
    (13, '3', 2, 'OBAGAJI'),
    (14, '4', 2, 'ODUGBEHO'),
    (15, '5', 2, 'OGBAULU'),
    (16, '7', 2, 'OGWULE OGBAULU'),
    (17, '6', 2, 'OGWULE-KADUNA'),
    (18, '8', 2, 'OKOKOLO'),
    (19, '9', 2, 'OSHIGBUDU'),
    (20, '10', 2, 'USHA'),
    (21, '1', 3, 'AKPETE/OJANTELLE'),
    (22, '2', 3, 'AUKE'),
    (23, '3', 3, 'EDIKWU I'),
    (24, '4', 3, 'EDIKWU II'),
    (25, '5', 3, 'IGAH-OKPAYA'),
    (26, '6', 3, 'IGORO'),
    (27, '7', 3, 'IKOBI'),
    (28, '8', 3, 'OBA'),
    (29, '9', 3, 'OFOKE'),
    (30, '10', 3, 'OIJI'),
    (31, '11', 3, 'UGBOKPO'),
    (32, '1', 4, 'BINEV'),
    (33, '2', 4, 'ETULO'),
    (34, '3', 4, 'MBAADE'),
    (35, '4', 4, 'MBAAKURA'),
    (36, '5', 4, 'MBAAPEN'),
    (37, '6', 4, 'MBAATIRKYAA'),
    (38, '7', 4, 'MBAAZAGEE'),
    (39, '8', 4, 'MBAIKYONGO/NYIFON'),
    (40, '9', 4, 'MBAITYOUGH'),
    (41, '10', 4, 'MBAKYAAN'),
    (42, '11', 4, 'MBAYA');
    INSERT INTO `wards` (`Id`, `Code`, `LgaId`, `Name`)
    VALUES (43, '12', 4, 'MBAYAKA'),
    (44, '13', 4, 'SHOROV'),
    (45, '1', 5, 'GBK/CENTRAL MARKET'),
    (46, '2', 5, 'GBOKO EAST'),
    (47, '3', 5, 'GBOKO NORTH WEST'),
    (48, '4', 5, 'GBOKO SOUTH'),
    (49, '5', 5, 'IGYOROV'),
    (50, '7', 5, 'MBAA VARAKAA'),
    (51, '6', 5, 'MBAANKU'),
    (52, '8', 5, 'MBADAM'),
    (53, '9', 5, 'MBADIM'),
    (54, '10', 5, 'MBAPER'),
    (55, '11', 5, 'MBKWEN'),
    (56, '12', 5, 'MBATAN'),
    (57, '13', 5, 'MBATSER'),
    (58, '14', 5, 'MBATYU'),
    (59, '15', 5, 'UKPEKPE'),
    (60, '16', 5, 'YANDEV NORTH'),
    (61, '17', 5, 'YANDEV SOUTH'),
    (62, '1', 6, 'ABINSI'),
    (63, '2', 6, 'KAAMBE'),
    (64, '3', 6, 'MBABAI'),
    (65, '4', 6, 'MBADWEM'),
    (66, '5', 6, 'MBAWA'),
    (67, '6', 6, 'MBAYER/YANDEV'),
    (68, '7', 6, 'NYIEV'),
    (69, '8', 6, 'NZOROV'),
    (70, '9', 6, 'SAGHEV'),
    (71, '10', 6, 'UVIR'),
    (72, '1', 7, 'AKPACH''AYI'),
    (73, '2', 7, 'ALIADE TOWN'),
    (74, '3', 7, 'GBEMACHA'),
    (75, '4', 7, 'IKYOGBAJIR'),
    (76, '5', 7, 'IKYONOV'),
    (77, '6', 7, 'MBABUR'),
    (78, '7', 7, 'MBAIASE'),
    (79, '9', 7, 'MBAIKYAAN'),
    (80, '8', 7, 'MBAIKYU'),
    (81, '10', 7, 'MBALOM'),
    (82, '11', 7, 'MBASOMBO'),
    (83, '12', 7, 'MBAYOM'),
    (84, '13', 7, 'SHOUGH');
    INSERT INTO `wards` (`Id`, `Code`, `LgaId`, `Name`)
    VALUES (85, '14', 7, 'UGEE'),
    (86, '1', 8, 'AVIHIJIME'),
    (87, '2', 8, 'GAAMBE - USHIN'),
    (88, '3', 8, 'GBAANGE/TONGOV'),
    (89, '4', 8, 'IKYAGHEV'),
    (90, '15', 8, 'ISAMBE/MBASEV'),
    (91, '5', 8, 'ITYOUGHATEE/INJAHA'),
    (92, '6', 8, 'MBABUANDE'),
    (93, '7', 8, 'MBACHOHON'),
    (94, '8', 8, 'MBANYAMSHI'),
    (95, '9', 8, 'MBAPA'),
    (96, '10', 8, 'MERKYEN'),
    (97, '11', 8, 'SAGHER/UKUSU'),
    (98, '12', 8, 'SENGEV'),
    (99, '13', 8, 'SENGEV/YENGEV'),
    (100, '14', 8, 'TIJIME'),
    (101, '1', 9, 'IKURAV TIEV I'),
    (102, '2', 9, 'IKURAV TIEV II'),
    (103, '3', 9, 'IWAR(TONGOV I)'),
    (104, '4', 9, 'KATSINA-ALA TOWN'),
    (105, '5', 9, 'MBACHER'),
    (106, '6', 9, 'MBAJIR'),
    (107, '7', 9, 'MBATULA/MBEREV'),
    (108, '8', 9, 'MBAYONGO'),
    (109, '9', 9, 'MICHIHE'),
    (110, '10', 9, 'TIIR(TONGOV II)'),
    (111, '11', 9, 'UTANGE'),
    (112, '12', 9, 'YOOYO'),
    (113, '1', 10, 'IKYURAV/MBATWER'),
    (114, '2', 10, 'MBAGUSA/MBATSER'),
    (115, '3', 10, 'MBAIKYASE'),
    (116, '4', 10, 'MBAIWARNYAM'),
    (117, '5', 10, 'MBAKE'),
    (118, '6', 10, 'MBANOR'),
    (119, '7', 10, 'MBATSEN'),
    (120, '8', 10, 'MBAVOA'),
    (121, '9', 10, 'MBAWAR'),
    (122, '10', 10, 'MBAYEGH/MBAIKYER'),
    (123, '11', 10, 'TSE-AGBERAGBA'),
    (124, '1', 11, 'ADIKPO METROPOLIS'),
    (125, '15', 11, 'KUMAKWAGH'),
    (126, '2', 11, 'LIEV I');
    INSERT INTO `wards` (`Id`, `Code`, `LgaId`, `Name`)
    VALUES (127, '3', 11, 'LIEV II'),
    (128, '4', 11, 'MBADURA'),
    (129, '5', 11, 'MBAGBA/MBAIKYAN'),
    (130, '6', 11, 'MBAIKYOR'),
    (131, '7', 11, 'MBKETSA'),
    (132, '12', 11, 'MBAYOO'),
    (133, '8', 11, 'MENEV'),
    (134, '14', 11, 'MOON'),
    (135, '9', 11, 'TONDOV I'),
    (136, '10', 11, 'TONDOV II'),
    (137, '11', 11, 'USAR'),
    (138, '13', 11, 'YAAV'),
    (139, '1', 12, 'MBADYUL'),
    (140, '2', 12, 'MBAGBER'),
    (141, '3', 12, 'MBATER'),
    (142, '5', 12, 'MBAVUUR'),
    (143, '4', 12, 'MBAYAM'),
    (144, '6', 12, 'NENZEV'),
    (145, '7', 12, 'TOMBO'),
    (146, '8', 12, 'TURAN'),
    (147, '9', 12, 'UKEMBERGYA/ISWAREV'),
    (148, '10', 12, 'YONOV'),
    (149, '1', 13, 'AGAN'),
    (150, '2', 13, 'ANKPA/WADATA'),
    (151, '3', 13, 'BAR'),
    (152, '4', 13, 'CENTRAL/SOUTH MISSION'),
    (153, '5', 13, 'CLERKS/MARKET'),
    (154, '6', 13, 'FILDI'),
    (155, '7', 13, 'MBALAGH'),
    (156, '8', 13, 'MODERN MARKET'),
    (157, '9', 13, 'NORTH BANK I'),
    (158, '10', 13, 'NORTH BANK II'),
    (159, '11', 13, 'WAILOMAYO'),
    (160, '1', 14, 'ADIKO'),
    (161, '2', 14, 'ADUM WEST'),
    (162, '3', 14, 'IKWOKWU'),
    (163, '4', 14, 'IRABI'),
    (164, '5', 14, 'ITOGO'),
    (165, '6', 14, 'OBARIKE'),
    (166, '7', 14, 'OBEKO'),
    (167, '8', 14, 'ODIAPA'),
    (168, '9', 14, 'OGORE');
    INSERT INTO `wards` (`Id`, `Code`, `LgaId`, `Name`)
    VALUES (169, '10', 14, 'OKPOKWU'),
    (170, '11', 14, 'OKWUTUNGBE'),
    (171, '12', 14, 'ORIHI'),
    (172, '1', 15, 'AI-OODO I'),
    (173, '2', 15, 'AI-OODO II'),
    (174, '3', 15, 'AI-OONO I'),
    (175, '4', 15, 'AI-OONO II'),
    (176, '5', 15, 'AI-OONO III'),
    (177, '6', 15, 'EHAJE I'),
    (178, '7', 15, 'EHAJE II'),
    (179, '8', 15, 'ITABONO I'),
    (180, '9', 15, 'ITABONO II'),
    (181, '10', 15, 'OLACHAGBAHA'),
    (182, '11', 15, 'OROKAM I'),
    (183, '12', 15, 'OROKAM II'),
    (184, '13', 15, 'OROKAM III'),
    (185, '1', 16, 'AGADAGBA'),
    (186, '2', 16, 'AWUME EHAJE'),
    (187, '3', 16, 'AWUME ICHO'),
    (188, '4', 16, 'EHATOKPE'),
    (189, '5', 16, 'IDEKPA'),
    (190, '6', 16, 'OCHOBO'),
    (191, '7', 16, 'OGLEWU EHAJE'),
    (192, '8', 16, 'OGLEWU ICHO'),
    (193, '10', 16, 'ONYAGEDE ICHO (OGOLI)'),
    (194, '9', 16, 'ONYAGEDE-EHAJE (ALLE)'),
    (195, '1', 17, 'ADOKPA'),
    (196, '2', 17, 'AINU'),
    (197, '3', 17, 'IBILLA'),
    (198, '4', 17, 'IDELLE'),
    (199, '5', 17, 'IYECHE'),
    (200, '6', 17, 'OBORU/OYE'),
    (201, '7', 17, 'OJU'),
    (202, '8', 17, 'OKPOKPO'),
    (203, '9', 17, 'OKWUDU'),
    (204, '10', 17, 'OWO'),
    (205, '11', 17, 'UKPA/AINU ETTE'),
    (206, '1', 18, 'AMEJO'),
    (207, '2', 18, 'EKE'),
    (208, '3', 18, 'ICHAMA II'),
    (209, '4', 18, 'OJIGO'),
    (210, '5', 18, 'OJOGA');
    INSERT INTO `wards` (`Id`, `Code`, `LgaId`, `Name`)
    VALUES (211, '6', 18, 'OKONOBO'),
    (212, '7', 18, 'OKPAILE/INGLE'),
    (213, '8', 18, 'OKPOGA CENTRAL'),
    (214, '9', 18, 'OKPOGA NORTH'),
    (215, '10', 18, 'OKPOGA SOUTH'),
    (216, '11', 18, 'OKPOGA WEST'),
    (217, '12', 18, 'UGBOKOLO'),
    (218, '2', 19, 'ADOKA-HAJE'),
    (219, '1', 19, 'ADOKA-ICHO'),
    (220, '3', 19, 'ALLAN'),
    (221, '4', 19, 'ENTEKPA'),
    (222, '5', 19, 'EWULO'),
    (223, '6', 19, 'OKETE'),
    (224, '7', 19, 'OTOBI'),
    (225, '8', 19, 'OTUKPO TOWN CENTRAL'),
    (226, '9', 19, 'OTUKPO TOWN EAST'),
    (227, '10', 19, 'OTUKPO TOWN WEST'),
    (228, '11', 19, 'UGBOJU-EHAJE'),
    (229, '12', 19, 'UGBOJU-ICHO'),
    (230, '13', 19, 'UGBOJU-OTAHE'),
    (231, '1', 20, 'MBAAJIR AKAA'),
    (232, '2', 20, 'MBAAYO'),
    (233, '3', 20, 'MBACHAVER IKYONDO'),
    (234, '4', 20, 'MBAIGBA'),
    (235, '5', 20, 'MBAIKYAA'),
    (236, '6', 20, 'MBAIKYO/MBAYIA'),
    (237, '7', 20, 'MBKWAKEM'),
    (238, '8', 20, 'MBANYAGBER'),
    (239, '9', 20, 'SHITILE'),
    (240, '10', 20, 'TONGOV'),
    (241, '1', 21, 'ATERAYANGE'),
    (242, '2', 21, 'AZENDESHI'),
    (243, '3', 21, 'BORIKYO'),
    (244, '4', 21, 'ITYULUV'),
    (245, '5', 21, 'KENDEV'),
    (246, '6', 21, 'KUNDAV'),
    (247, '7', 21, 'LUMBUV'),
    (248, '8', 21, 'MBATIAN'),
    (249, '9', 21, 'MBAYENGE'),
    (250, '10', 21, 'MBAZUN'),
    (251, '11', 21, 'TSAAV'),
    (252, '12', 21, 'UGBAAM');
    INSERT INTO `wards` (`Id`, `Code`, `LgaId`, `Name`)
    VALUES (253, '13', 21, 'UYAM'),
    (254, '1', 22, 'ATIKYESE'),
    (255, '2', 22, 'IKYOV'),
    (256, '3', 22, 'LESSEL'),
    (257, '4', 22, 'MBAAKA'),
    (258, '5', 22, 'MBAANYAM'),
    (259, '7', 22, 'MBAGBA'),
    (260, '8', 22, 'MBAGWAZA'),
    (261, '6', 22, 'MBAGWE'),
    (262, '9', 22, 'MBKUHA'),
    (263, '10', 22, 'MBAYEGH'),
    (264, '11', 22, 'UTANGE'),
    (265, '1', 23, 'MBADEDE'),
    (266, '3', 23, 'MBAGBAM'),
    (267, '4', 23, 'MBAGBERA'),
    (268, '5', 23, 'MBAJOR'),
    (269, '6', 23, 'MBAKAANGE'),
    (270, '7', 23, 'MBAKYAHA'),
    (271, '12', 23, 'MBANYUMANGBAGH'),
    (272, '2', 23, 'MBATYOUGH'),
    (273, '8', 23, 'MBAYONGO'),
    (274, '9', 23, 'NINGEV'),
    (275, '10', 23, 'TSAMBE'),
    (276, '11', 23, 'VANDEIKYA TOWNSHIP');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    INSERT INTO `Communities` (`Id`, `Name`, `WardId`)
    VALUES (47, 'Gboko North West', 47),
    (48, 'Gboko South', 48),
    (49, 'Igyorov', 49),
    (50, 'Mbaa Varakaa', 50),
    (51, 'Mbaanku', 51),
    (52, 'Mbadam', 52),
    (53, 'Mbadim', 53),
    (54, 'Mbaper', 54),
    (55, 'Mbkwen', 55),
    (56, 'Mbatang', 56),
    (57, 'Mbatser', 57),
    (58, 'Mbatyu', 58),
    (59, 'Ukpekpe', 59),
    (60, 'Yandev North', 60),
    (61, 'Yandev South', 61),
    (62, 'Abinsi', 62),
    (63, 'Kaambe', 63),
    (64, 'Mbabai', 64),
    (65, 'Mbadwem', 65),
    (66, 'Mbawa', 66),
    (67, 'Mbayer/Yandev', 67),
    (68, 'Nyiev', 68),
    (69, 'Nzorov', 69),
    (70, 'Saghev', 70),
    (71, 'Uvir', 71),
    (272, 'Tsambe', 275),
    (273, 'Vandeikya Town', 276);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_ProjectDefinitions_CommunityId` ON `ProjectDefinitions` (`CommunityId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_AssetHistories_AssetId` ON `AssetHistories` (`AssetId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_Complains_KpiProgressId` ON `Complains` (`KpiProgressId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_Complains_ProjectDefinitionId` ON `Complains` (`ProjectDefinitionId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_Complains_ProjectKpiId` ON `Complains` (`ProjectKpiId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_ContractorProjects_ContractorId` ON `ContractorProjects` (`ContractorId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_ContractorProjects_ProjectDefinitionId` ON `ContractorProjects` (`ProjectDefinitionId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_MDAAssets_AssetCategoryId` ON `MDAAssets` (`AssetCategoryId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE UNIQUE INDEX `IX_MDAAssets_assetCode_MdaId` ON `MDAAssets` (`assetCode`, `MdaId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_MDAAssets_MdaId` ON `MDAAssets` (`MdaId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE UNIQUE INDEX `IX_ProjectApprovals_ProjectDefinitionId` ON `ProjectApprovals` (`ProjectDefinitionId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_ProjectQueries_ProjectId` ON `ProjectQueries` (`ProjectId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_ProjectSuggestions_WardId` ON `ProjectSuggestions` (`WardId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_ProjectSuggestionVotes_ProjectSuggestionId` ON `ProjectSuggestionVotes` (`ProjectSuggestionId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_ReleasedAllocations_ProjectDefinitionId` ON `ReleasedAllocations` (`ProjectDefinitionId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    CREATE INDEX `IX_wards_LgaId` ON `wards` (`LgaId`);

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `Communities` ADD CONSTRAINT `FK_Communities_wards_WardId` FOREIGN KEY (`WardId`) REFERENCES `wards` (`Id`) ON DELETE CASCADE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` ADD CONSTRAINT `FK_ProjectDefinitions_Communities_CommunityId` FOREIGN KEY (`CommunityId`) REFERENCES `Communities` (`Id`) ON DELETE CASCADE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    ALTER TABLE `ProjectDefinitions` ADD CONSTRAINT `FK_ProjectDefinitions_Contractors_ContractorId` FOREIGN KEY (`ContractorId`) REFERENCES `Contractors` (`Id`) ON DELETE CASCADE;

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

DROP PROCEDURE IF EXISTS MigrationsScript;
DELIMITER //
CREATE PROCEDURE MigrationsScript()
BEGIN
    IF NOT EXISTS(SELECT 1 FROM `__EFMigrationsHistory` WHERE `MigrationId` = '20260226092931_FixLinuxMissingTables') THEN

    INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
    VALUES ('20260226092931_FixLinuxMissingTables', '8.0.19');

    END IF;
END //
DELIMITER ;
CALL MigrationsScript();
DROP PROCEDURE MigrationsScript;

COMMIT;

