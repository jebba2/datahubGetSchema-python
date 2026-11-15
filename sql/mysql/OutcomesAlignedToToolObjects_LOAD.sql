-- Data set: Outcomes Aligned to Tool Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-aligned-to-tool-objects
CREATE TABLE `OutcomesAlignedToToolObjects_LOAD` (
    `ObjectType` INT NOT NULL,
    `ObjectId` VARCHAR(255) NOT NULL,
    `OutcomeId` CHAR(36) NOT NULL,
    `RegistryId` CHAR(36) NOT NULL,
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `AIUtilization` INT,
    PRIMARY KEY (`ObjectType`, `ObjectId`, `OutcomeId`, `RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
