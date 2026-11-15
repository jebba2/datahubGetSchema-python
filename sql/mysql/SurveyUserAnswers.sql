-- Data set: Survey User Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answers
-- No primary key: D2L documents key column QuestionVersionId as nullable.
CREATE TABLE `SurveyUserAnswers` (
    `AttemptId` BIGINT,
    `QuestionId` BIGINT,
    `QuestionVersionId` BIGINT,
    `TimeCompleted` DATETIME(6),
    `QuestionNumber` INT,
    `Comment` VARCHAR(1000),
    `SortOrder` INT,
    `Score` DECIMAL(19,9),
    `Page` INT,
    `Assigned` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `SurveyTimeCompleted` DATETIME(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SurveyUserAnswers_AttemptId` ON `SurveyUserAnswers` (`AttemptId`);
CREATE INDEX `IX_SurveyUserAnswers_QuestionId` ON `SurveyUserAnswers` (`QuestionId`);
CREATE INDEX `IX_SurveyUserAnswers_QuestionVersionId` ON `SurveyUserAnswers` (`QuestionVersionId`);
CREATE INDEX `IX_SurveyUserAnswers_LastModifiedBy` ON `SurveyUserAnswers` (`LastModifiedBy`);
