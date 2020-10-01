  IF EXISTS(SELECT 1 FROM information_schema.tables 
  WHERE table_name = '
'__EFMigrationsHistory'' AND table_schema = DATABASE()) 
BEGIN
CREATE TABLE `__EFMigrationsHistory` (
    `MigrationId` varchar(150) NOT NULL,
    `ProductVersion` varchar(32) NOT NULL,
    PRIMARY KEY (`MigrationId`)
);

END;

CREATE TABLE `AniosExperiencias` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Rango` varchar(50) NOT NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `AspNetRoles` (
    `Id` varchar(767) NOT NULL,
    `Name` varchar(256) NULL,
    `NormalizedName` varchar(256) NULL,
    `ConcurrencyStamp` text NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `AspNetUsers` (
    `Id` varchar(767) NOT NULL,
    `UserName` varchar(256) NULL,
    `NormalizedUserName` varchar(256) NULL,
    `Email` varchar(256) NULL,
    `NormalizedEmail` varchar(256) NULL,
    `EmailConfirmed` bit NOT NULL,
    `PasswordHash` text NULL,
    `SecurityStamp` text NULL,
    `ConcurrencyStamp` text NULL,
    `PhoneNumber` text NULL,
    `PhoneNumberConfirmed` bit NOT NULL,
    `TwoFactorEnabled` bit NOT NULL,
    `LockoutEnd` timestamp NULL,
    `LockoutEnabled` bit NOT NULL,
    `AccessFailedCount` int NOT NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `Generos` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Codigo` varchar(1) NOT NULL,
    `Nombre` text NOT NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `Idiomas` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Nombre` varchar(50) NOT NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `Paises` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Nombre` varchar(50) NOT NULL,
    `CodigoIso` varchar(2) NOT NULL,
    `CodigoTelefono` text NULL,
    PRIMARY KEY (`Id`)
);

CREATE TABLE `AspNetRoleClaims` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `RoleId` varchar(767) NOT NULL,
    `ClaimType` text NULL,
    `ClaimValue` text NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE
);

CREATE TABLE `AspNetUserClaims` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `UserId` varchar(767) NOT NULL,
    `ClaimType` text NULL,
    `ClaimValue` text NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
);

CREATE TABLE `AspNetUserLogins` (
    `LoginProvider` varchar(767) NOT NULL,
    `ProviderKey` varchar(767) NOT NULL,
    `ProviderDisplayName` text NULL,
    `UserId` varchar(767) NOT NULL,
    PRIMARY KEY (`LoginProvider`, `ProviderKey`),
    CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
);

CREATE TABLE `AspNetUserRoles` (
    `UserId` varchar(767) NOT NULL,
    `RoleId` varchar(767) NOT NULL,
    PRIMARY KEY (`UserId`, `RoleId`),
    CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
    CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
);

CREATE TABLE `AspNetUserTokens` (
    `UserId` varchar(767) NOT NULL,
    `LoginProvider` varchar(767) NOT NULL,
    `Name` varchar(767) NOT NULL,
    `Value` text NULL,
    PRIMARY KEY (`UserId`, `LoginProvider`, `Name`),
    CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE
);

CREATE TABLE `Departamentos` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Nombre` varchar(50) NOT NULL,
    `PaisId` int NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_Departamentos_Paises_PaisId` FOREIGN KEY (`PaisId`) REFERENCES `Paises` (`Id`) ON DELETE CASCADE
);

CREATE TABLE `Municipios` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Nombre` varchar(50) NOT NULL,
    `DepartamentoId` int NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_Municipios_Departamentos_DepartamentoId` FOREIGN KEY (`DepartamentoId`) REFERENCES `Departamentos` (`Id`) ON DELETE CASCADE
);

CREATE TABLE `DatosCandidatos` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `UserId` text NOT NULL,
    `Nombres` varchar(50) NOT NULL,
    `Apellidos` varchar(50) NOT NULL,
    `Email` varchar(100) NOT NULL,
    `Dui` varchar(10) NOT NULL,
    `Nacionalidad` varchar(50) NOT NULL,
    `GeneroId` int NOT NULL,
    `FechaNacimiento` datetime NOT NULL,
    `DireccionResidencia` varchar(120) NOT NULL,
    `Telefono1` varchar(50) NOT NULL,
    `Telefono2` varchar(50) NULL,
    `PoseeCarro` bit NOT NULL,
    `PoseeLicencia` bit NOT NULL,
    `PaisId` int NOT NULL,
    `DepartamentoId` int NOT NULL,
    `MunicipioId` int NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_DatosCandidatos_Generos_GeneroId` FOREIGN KEY (`GeneroId`) REFERENCES `Generos` (`Id`) ON DELETE CASCADE,
    CONSTRAINT `FK_DatosCandidatos_Municipios_MunicipioId` FOREIGN KEY (`MunicipioId`) REFERENCES `Municipios` (`Id`) ON DELETE CASCADE
);

CREATE TABLE `Curriculos` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Nombre` text NULL,
    `Visibilidad` bit NOT NULL,
    `AniosExperienciaId` int NOT NULL,
    `DatosCandidatoId` int NOT NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_Curriculos_AniosExperiencias_AniosExperienciaId` FOREIGN KEY (`AniosExperienciaId`) REFERENCES `AniosExperiencias` (`Id`) ON DELETE CASCADE,
    CONSTRAINT `FK_Curriculos_DatosCandidatos_DatosCandidatoId` FOREIGN KEY (`DatosCandidatoId`) REFERENCES `DatosCandidatos` (`Id`) ON DELETE CASCADE
);

CREATE TABLE `HabilidadesTecnicas` (
    `Id` int NOT NULL AUTO_INCREMENT,
    `Nombre` varchar(50) NOT NULL,
    `CurriculoId` int NULL,
    PRIMARY KEY (`Id`),
    CONSTRAINT `FK_HabilidadesTecnicas_Curriculos_CurriculoId` FOREIGN KEY (`CurriculoId`) REFERENCES `Curriculos` (`Id`) ON DELETE RESTRICT
);

CREATE TABLE `CurriculoHabilidadTecnicas` (
    `CurriculoId` int NOT NULL,
    `HabilidadTecnicaId` int NOT NULL,
    `Nivel` text NOT NULL,
    PRIMARY KEY (`CurriculoId`, `HabilidadTecnicaId`),
    CONSTRAINT `FK_CurriculoHabilidadTecnicas_Curriculos_CurriculoId` FOREIGN KEY (`CurriculoId`) REFERENCES `Curriculos` (`Id`) ON DELETE CASCADE,
    CONSTRAINT `FK_CurriculoHabilidadTecnicas_HabilidadesTecnicas_HabilidadTecn~` FOREIGN KEY (`HabilidadTecnicaId`) REFERENCES `HabilidadesTecnicas` (`Id`) ON DELETE CASCADE
);

CREATE INDEX `IX_AspNetRoleClaims_RoleId` ON `AspNetRoleClaims` (`RoleId`);

CREATE UNIQUE INDEX `RoleNameIndex` ON `AspNetRoles` (`NormalizedName`);

CREATE INDEX `IX_AspNetUserClaims_UserId` ON `AspNetUserClaims` (`UserId`);

CREATE INDEX `IX_AspNetUserLogins_UserId` ON `AspNetUserLogins` (`UserId`);

CREATE INDEX `IX_AspNetUserRoles_RoleId` ON `AspNetUserRoles` (`RoleId`);

CREATE INDEX `EmailIndex` ON `AspNetUsers` (`NormalizedEmail`);

CREATE UNIQUE INDEX `UserNameIndex` ON `AspNetUsers` (`NormalizedUserName`);

CREATE INDEX `IX_CurriculoHabilidadTecnicas_HabilidadTecnicaId` ON `CurriculoHabilidadTecnicas` (`HabilidadTecnicaId`);

CREATE INDEX `IX_Curriculos_AniosExperienciaId` ON `Curriculos` (`AniosExperienciaId`);

CREATE INDEX `IX_Curriculos_DatosCandidatoId` ON `Curriculos` (`DatosCandidatoId`);

CREATE INDEX `IX_DatosCandidatos_GeneroId` ON `DatosCandidatos` (`GeneroId`);

CREATE INDEX `IX_DatosCandidatos_MunicipioId` ON `DatosCandidatos` (`MunicipioId`);

CREATE INDEX `IX_Departamentos_PaisId` ON `Departamentos` (`PaisId`);

CREATE INDEX `IX_HabilidadesTecnicas_CurriculoId` ON `HabilidadesTecnicas` (`CurriculoId`);

CREATE INDEX `IX_Municipios_DepartamentoId` ON `Municipios` (`DepartamentoId`);

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`)
VALUES ('20201001230042_ModelosIniciales', '3.1.8');

