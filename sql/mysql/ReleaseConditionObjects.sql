-- Data set: Release Condition Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-objects
CREATE TABLE `ReleaseConditionObjects` (
    `PreRequisiteId` INT NOT NULL,
    `ResultId` INT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `Name` VARCHAR(64),
    `IsNegativeCondition` TINYINT(1),
    `PreRequisiteToolId` INT,
    `Id1` INT,
    `Id2` INT,
    `ResultToolId` INT,
    `UsesPercentage` TINYINT(1),
    `OperatorTypeDesc` VARCHAR(3),
    `Version` BIGINT,
    `Guid1` CHAR(36),
    `Guid2` CHAR(36),
    PRIMARY KEY (`PreRequisiteId`, `ResultId`, `OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ReleaseConditionObjects_OrgUnitId` ON `ReleaseConditionObjects` (`OrgUnitId`);
CREATE INDEX `IX_ReleaseConditionObjects_PreRequisiteToolId` ON `ReleaseConditionObjects` (`PreRequisiteToolId`);
CREATE INDEX `IX_ReleaseConditionObjects_ResultToolId` ON `ReleaseConditionObjects` (`ResultToolId`);
