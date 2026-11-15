-- Data set: Question Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answers
CREATE TABLE `QuestionAnswers_LOAD` (
    `AnswerId` BIGINT NOT NULL,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `SortOrder` INT,
    `Weight` DECIMAL(19,9),
    `Answer` VARCHAR(1000),
    `Comment` VARCHAR(1000),
    `Description` VARCHAR(256),
    PRIMARY KEY (`AnswerId`, `QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
