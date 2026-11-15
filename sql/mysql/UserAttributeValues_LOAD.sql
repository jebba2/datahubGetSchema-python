-- Data set: User Attribute Values (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-values
CREATE TABLE `UserAttributeValues_LOAD` (
    `UserId` INT NOT NULL,
    `AttributeId` VARCHAR(128) NOT NULL,
    `Value` TEXT,
    `LastModified` DATETIME(6),
    `ModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` INT,
    PRIMARY KEY (`UserId`, `AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
