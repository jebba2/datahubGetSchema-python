-- Data set: Course Copy Logs
-- Source: https://community.d2l.com/brightspace/kb/articles/4725-course-copy-data-sets#course-copy-logs
CREATE TABLE `CourseCopyLogs` (
    `SourceOrgUnitId` INT,
    `DestinationOrgUnitId` INT,
    `UserId` BIGINT,
    `Status` VARCHAR(128),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsDestinationNew` TINYINT(1),
    `CopyProtectedResources` TINYINT(1),
    `CopyCourseJobId` BIGINT NOT NULL,
    `StatusId` INT,
    PRIMARY KEY (`CopyCourseJobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CourseCopyLogs_SourceOrgUnitId` ON `CourseCopyLogs` (`SourceOrgUnitId`);
CREATE INDEX `IX_CourseCopyLogs_DestinationOrgUnitId` ON `CourseCopyLogs` (`DestinationOrgUnitId`);
CREATE INDEX `IX_CourseCopyLogs_UserId` ON `CourseCopyLogs` (`UserId`);
