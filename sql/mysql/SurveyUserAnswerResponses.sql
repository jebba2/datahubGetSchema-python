-- Data set: Survey User Answer Responses
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answer-responses
CREATE TABLE `SurveyUserAnswerResponses` (
    `AttemptId` BIGINT NOT NULL,
    `AttemptNumber` INT,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `AnswerId` BIGINT NOT NULL,
    `SortOrder` BIGINT,
    `IsCorrect` TINYINT(1),
    `UserSelection` BIGINT,
    `UserAnswer` VARCHAR(1000),
    `FileSetId` BIGINT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`AttemptId`, `QuestionId`, `QuestionVersionId`, `AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_SurveyUserAnswerResponses_QuestionId` ON `SurveyUserAnswerResponses` (`QuestionId`);
CREATE INDEX `IX_SurveyUserAnswerResponses_QuestionVersionId` ON `SurveyUserAnswerResponses` (`QuestionVersionId`);
CREATE INDEX `IX_SurveyUserAnswerResponses_AnswerId` ON `SurveyUserAnswerResponses` (`AnswerId`);
