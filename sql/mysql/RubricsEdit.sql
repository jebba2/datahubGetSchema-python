-- Data set: Rubrics Edit
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubrics-edit
CREATE TABLE `RubricsEdit` (
    `AuditLogId` CHAR(36) NOT NULL,
    `RubricId` BIGINT,
    `CriterionId` BIGINT,
    `LevelId` BIGINT,
    `ModifiedBy` INT,
    `ModifiedObjectType` INT,
    `CriteriaGroupId` BIGINT,
    `ModifiedDate` DATETIME(6),
    `PreviousValue` TEXT,
    `ModifiedValue` TEXT,
    `IsLocked` TINYINT(1),
    `Version` INT,
    PRIMARY KEY (`AuditLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_RubricsEdit_RubricId` ON `RubricsEdit` (`RubricId`);
CREATE INDEX `IX_RubricsEdit_CriterionId` ON `RubricsEdit` (`CriterionId`);
CREATE INDEX `IX_RubricsEdit_LevelId` ON `RubricsEdit` (`LevelId`);
