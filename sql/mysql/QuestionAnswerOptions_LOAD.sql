-- Data set: Question Answer Options (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answer-options
CREATE TABLE `QuestionAnswerOptions_LOAD` (
    `AnswerId` BIGINT NOT NULL,
    `AnswerText` VARCHAR(1000),
    `Weight` DECIMAL(19,9),
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `AnswerOptionId` INT NOT NULL,
    PRIMARY KEY (`AnswerId`, `QuestionId`, `QuestionVersionId`, `AnswerOptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
