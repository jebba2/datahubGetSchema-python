-- Data set: Users (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#users
CREATE TABLE `Users_LOAD` (
    `UserId` INT NOT NULL,
    `UserName` VARCHAR(270),
    `OrgDefinedId` VARCHAR(256),
    `FirstName` VARCHAR(64),
    `MiddleName` VARCHAR(64),
    `LastName` VARCHAR(64),
    `IsActive` TINYINT(1),
    `ExternalEmail` VARCHAR(256),
    `CreationDate` DATETIME(6),
    `Version` BIGINT,
    `OrgRoleId` INT,
    `DateDeleted` DATETIME(6),
    PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
