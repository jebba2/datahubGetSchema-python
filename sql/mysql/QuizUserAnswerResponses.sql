-- Data set: Quiz User Answer Responses
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answer-responses
CREATE TABLE `QuizUserAnswerResponses` (
    `AttemptId` BIGINT NOT NULL,
    `AttemptNumber` INT,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `AnswerId` BIGINT NOT NULL,
    `SortOrder` INT,
    `IsCorrect` TINYINT(1),
    `UserSelection` BIGINT,
    `UserAnswer` VARCHAR(1000),
    `FileSetId` BIGINT,
    `LastModified` DATETIME(6),
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`AttemptId`, `QuestionId`, `QuestionVersionId`, `AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuizUserAnswerResponses_QuestionId` ON `QuizUserAnswerResponses` (`QuestionId`);
CREATE INDEX `IX_QuizUserAnswerResponses_QuestionVersionId` ON `QuizUserAnswerResponses` (`QuestionVersionId`);
CREATE INDEX `IX_QuizUserAnswerResponses_AnswerId` ON `QuizUserAnswerResponses` (`AnswerId`);
