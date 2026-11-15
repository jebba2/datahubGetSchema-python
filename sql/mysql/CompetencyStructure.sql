-- Data set: Competency Structure
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-structure
CREATE TABLE `CompetencyStructure` (
    `ObjectId` BIGINT NOT NULL,
    `ParentObjectId` BIGINT NOT NULL,
    `BaseObjectID` BIGINT NOT NULL,
    `Depth` INT,
    `EntryTime` INT NOT NULL,
    PRIMARY KEY (`ObjectId`, `ParentObjectId`, `BaseObjectID`, `EntryTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CompetencyStructure_ParentObjectId` ON `CompetencyStructure` (`ParentObjectId`);
CREATE INDEX `IX_CompetencyStructure_BaseObjectID` ON `CompetencyStructure` (`BaseObjectID`);
