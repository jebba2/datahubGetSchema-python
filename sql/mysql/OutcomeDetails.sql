-- Data set: Outcome Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcome-details
CREATE TABLE `OutcomeDetails` (
    `OutcomeId` CHAR(36) NOT NULL,
    `OutcomeDefinitionSource` VARCHAR(1000),
    `OutcomeDefinitionId` VARCHAR(128),
    `ParentOutcomeId` CHAR(36),
    `Description` VARCHAR(1000),
    `Notation` VARCHAR(1000),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`OutcomeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomeDetails_CreatedBy` ON `OutcomeDetails` (`CreatedBy`);
CREATE INDEX `IX_OutcomeDetails_LastModifiedBy` ON `OutcomeDetails` (`LastModifiedBy`);
