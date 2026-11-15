-- Data set: Rubric Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-objects
CREATE TABLE `RubricObjects` (
    `RubricId` BIGINT NOT NULL,
    `Name` VARCHAR(256),
    `RubricStatus` VARCHAR(256),
    `Description` VARCHAR(1000),
    `RubricType` VARCHAR(256),
    `ScoringMethods` VARCHAR(256),
    `IsScoreVisible` TINYINT(1),
    `OrgUnitID` INT,
    `IsShared` TINYINT(1),
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`RubricId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_RubricObjects_OrgUnitID` ON `RubricObjects` (`OrgUnitID`);
