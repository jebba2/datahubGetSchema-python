-- Data set: Question Relationships
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-relationships
CREATE TABLE `QuestionRelationships` (
    `CollectionId` BIGINT,
    `QuestionId` BIGINT,
    `QuestionVersionId` BIGINT,
    `Order` BIGINT,
    `SectionId` BIGINT,
    `IsQuestionPool` TINYINT(1),
    `CreationDate` DATETIME(6),
    `CreatedBy` BIGINT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` BIGINT,
    `Points` DECIMAL(19,9),
    `Difficulty` INT,
    `IsBonus` TINYINT(1),
    `IsMandatory` TINYINT(1),
    `IsDeleted` TINYINT(1),
    `Version` BIGINT,
    `ObjectId` BIGINT NOT NULL,
    PRIMARY KEY (`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_QuestionRelationships_CollectionId` ON `QuestionRelationships` (`CollectionId`);
CREATE INDEX `IX_QuestionRelationships_QuestionId` ON `QuestionRelationships` (`QuestionId`);
CREATE INDEX `IX_QuestionRelationships_QuestionVersionId` ON `QuestionRelationships` (`QuestionVersionId`);
