-- Data set: Course Access Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access-log
CREATE TABLE `CourseAccessLog_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `Timestamp` DATETIME(6) NOT NULL,
    `Source` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`OrgUnitId`, `UserId`, `Timestamp`, `Source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
