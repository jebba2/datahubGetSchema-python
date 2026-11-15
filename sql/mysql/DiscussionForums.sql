-- Data set: Discussion Forums
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-forums
CREATE TABLE `DiscussionForums` (
    `OrgUnitId` INT,
    `ForumId` BIGINT NOT NULL,
    `Name` VARCHAR(400),
    `Description` VARCHAR(1000),
    `MustPostToParticipate` TINYINT(1),
    `AllowAnon` TINYINT(1),
    `IsHidden` TINYINT(1),
    `RequiresApproval` TINYINT(1),
    `SortOrder` INT,
    `IsDeleted` TINYINT(1),
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `ResultId` INT,
    `StartDate` DATETIME(6),
    `StartDateAvailabilityType` SMALLINT,
    `EndDate` DATETIME(6),
    `EndDateAvailabilityType` SMALLINT,
    `Version` BIGINT,
    PRIMARY KEY (`ForumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_DiscussionForums_OrgUnitId` ON `DiscussionForums` (`OrgUnitId`);
CREATE INDEX `IX_DiscussionForums_DeletedByUserId` ON `DiscussionForums` (`DeletedByUserId`);
CREATE INDEX `IX_DiscussionForums_ResultId` ON `DiscussionForums` (`ResultId`);
