-- Data set: Grade Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects
CREATE TABLE `GradeObjects` (
    `GradeObjectId` INT NOT NULL,
    `OrgUnitId` INT,
    `ParentGradeObjectId` INT,
    `Name` VARCHAR(128),
    `TypeName` VARCHAR(50),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsAutoPointed` TINYINT(1),
    `IsFormula` TINYINT(1),
    `IsBonus` TINYINT(1),
    `MaxPoints` DECIMAL(19,9),
    `CanExceedMaxGrade` TINYINT(1),
    `ExcludeFromFinalGradeCalc` TINYINT(1),
    `GradeSchemeId` BIGINT,
    `Weight` DECIMAL(19,9),
    `NumLowestGradesToDrop` INT,
    `NumHighestGradesToDrop` INT,
    `WeightDistributionType` VARCHAR(8),
    `CreatedDate` DATETIME(6),
    `ToolName` VARCHAR(50),
    `AssociatedToolItemId` BIGINT,
    `LastModified` DATETIME(6),
    `ShortName` VARCHAR(128),
    `GradeObjectTypeId` INT,
    `SortOrder` INT,
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `ResultId` INT,
    `ToolId` INT,
    `Version` INT,
    PRIMARY KEY (`GradeObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_GradeObjects_OrgUnitId` ON `GradeObjects` (`OrgUnitId`);
CREATE INDEX `IX_GradeObjects_ParentGradeObjectId` ON `GradeObjects` (`ParentGradeObjectId`);
CREATE INDEX `IX_GradeObjects_DeletedByUserId` ON `GradeObjects` (`DeletedByUserId`);
CREATE INDEX `IX_GradeObjects_ResultId` ON `GradeObjects` (`ResultId`);
