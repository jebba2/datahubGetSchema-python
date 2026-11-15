-- Data set: Course Publisher Launches (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-launches
CREATE TABLE `CoursePublisherLaunches_LOAD` (
    `LaunchId` CHAR(36) NOT NULL,
    `OrgUnitId` BIGINT,
    `RecipientId` CHAR(36),
    `UserId` BIGINT,
    `RoleId` BIGINT,
    `LaunchMethod` VARCHAR(256),
    `ExternalUserId` VARCHAR(256),
    `ExternalLMSType` VARCHAR(256),
    `IsNewUser` TINYINT(1),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`LaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
