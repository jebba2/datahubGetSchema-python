-- Data set: Grade Scheme Ranges
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-scheme-ranges
CREATE TABLE `GradeSchemeRanges` (
    `GradeSchemeRangeId` BIGINT NOT NULL,
    `GradeSchemeId` BIGINT NOT NULL,
    `SymbolString` VARCHAR(100),
    `AssignedValue` DECIMAL(19,9),
    `RangeStart` DECIMAL(19,9),
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`GradeSchemeRangeId`, `GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_GradeSchemeRanges_GradeSchemeId` ON `GradeSchemeRanges` (`GradeSchemeId`);
