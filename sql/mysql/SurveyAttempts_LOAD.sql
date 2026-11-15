-- Data set: Survey Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-attempts
CREATE TABLE `SurveyAttempts_LOAD` (
    `AttemptId` BIGINT NOT NULL,
    `SurveyId` BIGINT,
    `UserId` INT,
    `OrgUnitId` INT,
    `AttemptNumber` INT,
    `TimeStarted` DATETIME(6),
    `TimeCompleted` DATETIME(6),
    `AttemptedFromOrgUnitId` INT,
    `OldAttemptNumber` INT,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
