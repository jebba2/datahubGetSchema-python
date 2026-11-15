-- Data set: Outcomes Aligned to Tool Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-aligned-to-tool-objects
CREATE TABLE `OutcomesAlignedToToolObjects` (
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
CREATE INDEX `IX_OutcomesAlignedToToolObjects_ObjectId` ON `OutcomesAlignedToToolObjects` (`ObjectId`);
CREATE INDEX `IX_OutcomesAlignedToToolObjects_CreatedBy` ON `OutcomesAlignedToToolObjects` (`CreatedBy`);
CREATE INDEX `IX_OutcomesAlignedToToolObjects_LastModifiedBy` ON `OutcomesAlignedToToolObjects` (`LastModifiedBy`);
