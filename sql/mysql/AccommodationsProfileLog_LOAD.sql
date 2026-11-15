-- Data set: Accommodations Profile Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4752-accommodations-data-sets#accommodations-profile-log
CREATE TABLE `AccommodationsProfileLog_LOAD` (
    `AccommodatedUserId` BIGINT NOT NULL,
    `OrgUnitId` BIGINT NOT NULL,
    `QuizTimeLimitMultiplier` DECIMAL(5,2),
    `QuizTimeLimitExtraTime` INT,
    `QuizControlAlwaysAllowRightClick` TINYINT(1),
    `ModifiedBy` BIGINT,
    `LastModified` DATETIME(6) NOT NULL,
    PRIMARY KEY (`AccommodatedUserId`, `OrgUnitId`, `LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
