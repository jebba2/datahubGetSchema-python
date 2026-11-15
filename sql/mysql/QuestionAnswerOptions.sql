-- Data set: Question Answer Options
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answer-options
CREATE TABLE `QuestionAnswerOptions` (
    `AnswerId` BIGINT NOT NULL,
    `AnswerText` VARCHAR(1000),
    `Weight` DECIMAL(19,9),
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `AnswerOptionId` INT NOT NULL,
    PRIMARY KEY (`AnswerId`, `QuestionId`, `QuestionVersionId`, `AnswerOptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuestionAnswerOptions_QuestionId` ON `QuestionAnswerOptions` (`QuestionId`);
CREATE INDEX `IX_QuestionAnswerOptions_QuestionVersionId` ON `QuestionAnswerOptions` (`QuestionVersionId`);
