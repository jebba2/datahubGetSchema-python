-- Data set: Content User Completion
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-completion
CREATE TABLE `ContentUserCompletion` (
    `ContentObjectId` INT NOT NULL,
    `OrgUnitId` INT,
    `UserId` INT NOT NULL,
    `DateCompleted` DATETIME(6),
    `LastModified` DATETIME(6),
    `Version` BIGINT,
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `AutomaticDateCompleted` DATETIME(6),
    `ManualDateCompleted` DATETIME(6),
    PRIMARY KEY (`ContentObjectId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ContentUserCompletion_OrgUnitId` ON `ContentUserCompletion` (`OrgUnitId`);
CREATE INDEX `IX_ContentUserCompletion_UserId` ON `ContentUserCompletion` (`UserId`);
