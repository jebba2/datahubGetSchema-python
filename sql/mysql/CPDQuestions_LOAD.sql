-- Data set: CPD Questions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-questions
CREATE TABLE `CPDQuestions_LOAD` (
    `QuestionId` INT NOT NULL,
    `QuestionText` TEXT,
    `LastModified` DATETIME(6),
    `DateDeleted` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`QuestionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
