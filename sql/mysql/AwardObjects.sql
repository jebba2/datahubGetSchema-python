-- Data set: Award Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#award-objects
CREATE TABLE `AwardObjects` (
    `AwardId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `AwardTypeId` INT,
    `Type` VARCHAR(128),
    `Description` VARCHAR(512),
    `ExpiryCalculationType` VARCHAR(128),
    `ExpiryNotificationType` VARCHAR(128),
    `ExpiryDate` DATETIME(6),
    `ImagePath` VARCHAR(1000),
    `CreatedByUserId` BIGINT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    `Criteria` VARCHAR(1000),
    PRIMARY KEY (`AwardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
