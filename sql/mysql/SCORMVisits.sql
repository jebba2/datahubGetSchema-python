-- Data set: SCORM Visits
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-visits
CREATE TABLE `SCORMVisits` (
    `VisitId` CHAR(36) NOT NULL,
    `ScormObjectId` CHAR(36),
    `UserId` INT,
    `OrgUnitId` INT,
    `FirstAccessDate` DATETIME(6),
    `LastAccessDate` DATETIME(6),
    `CompletedDate` DATETIME(6),
    `Completion` VARCHAR(100),
    `Success` VARCHAR(100),
    `Score` DOUBLE,
    `TimeSpent` INT,
    `Progress` DOUBLE,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`VisitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SCORMVisits_ScormObjectId` ON `SCORMVisits` (`ScormObjectId`);
CREATE INDEX `IX_SCORMVisits_UserId` ON `SCORMVisits` (`UserId`);
CREATE INDEX `IX_SCORMVisits_OrgUnitId` ON `SCORMVisits` (`OrgUnitId`);
