-- Data set: Survey Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-attempts
CREATE TABLE `SurveyAttempts` (
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
CREATE INDEX `IX_SurveyAttempts_SurveyId` ON `SurveyAttempts` (`SurveyId`);
CREATE INDEX `IX_SurveyAttempts_UserId` ON `SurveyAttempts` (`UserId`);
CREATE INDEX `IX_SurveyAttempts_OrgUnitId` ON `SurveyAttempts` (`OrgUnitId`);
CREATE INDEX `IX_SurveyAttempts_AttemptedFromOrgUnitId` ON `SurveyAttempts` (`AttemptedFromOrgUnitId`);
