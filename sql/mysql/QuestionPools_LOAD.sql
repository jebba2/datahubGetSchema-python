-- Data set: Question Pools (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-pools
CREATE TABLE `QuestionPools_LOAD` (
    `SectionId` BIGINT NOT NULL,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`SectionId`, `QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
