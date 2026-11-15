-- Data set: Competency Structure (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-structure
CREATE TABLE `CompetencyStructure_LOAD` (
    `ObjectId` BIGINT NOT NULL,
    `ParentObjectId` BIGINT NOT NULL,
    `BaseObjectID` BIGINT NOT NULL,
    `Depth` INT,
    `EntryTime` INT NOT NULL,
    PRIMARY KEY (`ObjectId`, `ParentObjectId`, `BaseObjectID`, `EntryTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
