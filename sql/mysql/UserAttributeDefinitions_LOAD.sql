-- Data set: User Attribute Definitions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-definitions
CREATE TABLE `UserAttributeDefinitions_LOAD` (
    `AttributeId` VARCHAR(128) NOT NULL,
    `Name` VARCHAR(128),
    `Type` VARCHAR(8),
    `AllowMultiple` TINYINT(1),
    `IsDefault` TINYINT(1),
    `LastModified` DATETIME(6),
    `ModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
