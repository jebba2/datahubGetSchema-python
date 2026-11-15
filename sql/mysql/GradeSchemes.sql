-- Data set: Grade Schemes
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-schemes
CREATE TABLE `GradeSchemes` (
    `GradeSchemeId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `SchemeName` VARCHAR(128),
    `DeletedDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_GradeSchemes_OrgUnitId` ON `GradeSchemes` (`OrgUnitId`);
