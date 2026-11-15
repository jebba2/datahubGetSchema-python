-- Data set: Question Pools
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-pools
CREATE TABLE `QuestionPools` (
    `SectionId` BIGINT NOT NULL,
    `QuestionId` BIGINT NOT NULL,
    `QuestionVersionId` BIGINT NOT NULL,
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    PRIMARY KEY (`SectionId`, `QuestionId`, `QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuestionPools_QuestionId` ON `QuestionPools` (`QuestionId`);
CREATE INDEX `IX_QuestionPools_QuestionVersionId` ON `QuestionPools` (`QuestionVersionId`);
