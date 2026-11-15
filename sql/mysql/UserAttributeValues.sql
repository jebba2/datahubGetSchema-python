-- Data set: User Attribute Values
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-values
CREATE TABLE `UserAttributeValues` (
    `UserId` INT NOT NULL,
    `AttributeId` VARCHAR(128) NOT NULL,
    `Value` TEXT,
    `LastModified` DATETIME(6),
    `ModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `Version` INT,
    PRIMARY KEY (`UserId`, `AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_UserAttributeValues_AttributeId` ON `UserAttributeValues` (`AttributeId`);
CREATE INDEX `IX_UserAttributeValues_ModifiedBy` ON `UserAttributeValues` (`ModifiedBy`);
