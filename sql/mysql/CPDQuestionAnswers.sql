-- Data set: CPD Question Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-question-answers
CREATE TABLE `CPDQuestionAnswers` (
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
CREATE INDEX `IX_CPDQuestionAnswers_QuestionId` ON `CPDQuestionAnswers` (`QuestionId`);
CREATE INDEX `IX_CPDQuestionAnswers_RecordId` ON `CPDQuestionAnswers` (`RecordId`);
CREATE INDEX `IX_CPDQuestionAnswers_UserId` ON `CPDQuestionAnswers` (`UserId`);
