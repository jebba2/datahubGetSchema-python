-- Data set: Question Library (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-library
CREATE TABLE `QuestionLibrary_LOAD` (
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `IsAutoGraded` TINYINT(1),
    `TemplateTypeId` INT,
    `QuestionType` VARCHAR(28),
    `Name` VARCHAR(256),
    `Question` VARCHAR(1000),
    `Comment` VARCHAR(1000),
    `AnswerKey` VARCHAR(1000),
    `CreationDate` DATETIME(6),
    `Version` BIGINT,
    `AllowsAttachments` TINYINT(1),
    `AIUtilization` INT,
    PRIMARY KEY (`QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
