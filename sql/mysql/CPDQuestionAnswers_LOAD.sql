-- Data set: CPD Question Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-question-answers
CREATE TABLE `CPDQuestionAnswers_LOAD` (
    `AnswerId` INT NOT NULL,
    `AnswerText` TEXT,
    `QuestionId` INT,
    `RecordId` INT,
    `UserId` INT,
    `Action` VARCHAR(16),
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
