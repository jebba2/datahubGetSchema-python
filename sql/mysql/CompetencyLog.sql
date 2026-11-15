-- Data set: Competency Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-log
CREATE TABLE `CompetencyLog` (
    `CompetencyLogId` BIGINT NOT NULL,
    `LogTypeId` INT,
    `LogTypeName` VARCHAR(19),
    `ObjectId` BIGINT,
    `ObjectTypeId` INT,
    `ObjectTypeName` VARCHAR(18),
    `ObjectVersion` INT,
    `LogDateTime` DATETIME(6),
    `ModifiedBy` BIGINT,
    `IndirectObjectId` BIGINT,
    `IndirectObjectTypeName` VARCHAR(18),
    `IndirectObjectTypeId` INT,
    `IndirectObjectVersion` INT,
    PRIMARY KEY (`CompetencyLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CompetencyLog_ObjectId` ON `CompetencyLog` (`ObjectId`);
CREATE INDEX `IX_CompetencyLog_ModifiedBy` ON `CompetencyLog` (`ModifiedBy`);
