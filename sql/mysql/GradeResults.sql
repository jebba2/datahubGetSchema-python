-- Data set: Grade Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-results
CREATE TABLE `GradeResults` (
    `GradeObjectId` INT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `PointsNumerator` DECIMAL(19,9),
    `PointsDenominator` DECIMAL(19,9),
    `WeightedNumerator` DECIMAL(19,9),
    `WeightedDenominator` DECIMAL(19,9),
    `IsReleased` TINYINT(1),
    `IsDropped` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `Comments` VARCHAR(1000),
    `PrivateComments` VARCHAR(1000),
    `GradeText` VARCHAR(50),
    `GradeReleasedDate` DATETIME(6),
    `Version` BIGINT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`GradeObjectId`, `OrgUnitId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_GradeResults_OrgUnitId` ON `GradeResults` (`OrgUnitId`);
CREATE INDEX `IX_GradeResults_UserId` ON `GradeResults` (`UserId`);
CREATE INDEX `IX_GradeResults_LastModifiedBy` ON `GradeResults` (`LastModifiedBy`);
