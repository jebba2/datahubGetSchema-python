-- Data set: Checklist Completions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-completions
CREATE TABLE `ChecklistCompletions_LOAD` (
    `UserId` INT NOT NULL,
    `DateCompleted` DATETIME(6),
    `ItemId` BIGINT NOT NULL,
    `LastModified` DATETIME(6),
    `IsCompleted` TINYINT(1),
    `DateDeleted` DATETIME(6),
    `DeletedBy` INT,
    `Version` BIGINT,
    PRIMARY KEY (`UserId`, `ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
