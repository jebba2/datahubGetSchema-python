-- Data set: Course Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access
CREATE TABLE `CourseAccess` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `DayAccessed` DATETIME(6) NOT NULL,
    PRIMARY KEY (`OrgUnitId`, `UserId`, `DayAccessed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CourseAccess_UserId` ON `CourseAccess` (`UserId`);
