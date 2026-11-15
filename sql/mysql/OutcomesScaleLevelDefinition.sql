-- Data set: Outcomes Scale Level Definition
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-level-definition
CREATE TABLE `OutcomesScaleLevelDefinition` (
    `ScaleLevelId` CHAR(36) NOT NULL,
    `ScaleId` CHAR(36),
    `Name` VARCHAR(1000),
    `SortOrder` INT,
    `PercentageRangeStart` INT,
    `RGB` VARCHAR(40),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    PRIMARY KEY (`ScaleLevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesScaleLevelDefinition_ScaleId` ON `OutcomesScaleLevelDefinition` (`ScaleId`);
CREATE INDEX `IX_OutcomesScaleLevelDefinition_CreatedBy` ON `OutcomesScaleLevelDefinition` (`CreatedBy`);
CREATE INDEX `IX_OutcomesScaleLevelDefinition_LastModifiedBy` ON `OutcomesScaleLevelDefinition` (`LastModifiedBy`);
