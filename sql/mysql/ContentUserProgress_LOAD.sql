-- Data set: Content User Progress (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-progress
CREATE TABLE `ContentUserProgress_LOAD` (
    `ContentObjectId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `CompletedDate` DATETIME(6),
    `LastVisited` DATETIME(6),
    `IsRead` TINYINT(1),
    `NumRealVisits` INT,
    `NumFakeVisits` INT,
    `TotalTime` BIGINT,
    `IsVisited` TINYINT(1),
    `IsCurrentBookmark` TINYINT(1),
    `IsSelfAssessComplete` TINYINT(1),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`ContentObjectId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
