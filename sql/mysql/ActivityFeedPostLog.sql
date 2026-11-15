-- Data set: Activity Feed Post Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-log
CREATE TABLE `ActivityFeedPostLog` (
    `LogId` CHAR(36) NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `PostId` CHAR(36),
    `PostType` VARCHAR(16),
    `Action` VARCHAR(16),
    `ActionDate` DATETIME(6),
    `DropboxId` BIGINT,
    `Content` TEXT,
    `CommentCount` INT,
    `AttachmentCount` INT,
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ActivityFeedPostLog_UserId` ON `ActivityFeedPostLog` (`UserId`);
CREATE INDEX `IX_ActivityFeedPostLog_OrgUnitId` ON `ActivityFeedPostLog` (`OrgUnitId`);
CREATE INDEX `IX_ActivityFeedPostLog_DropboxId` ON `ActivityFeedPostLog` (`DropboxId`);
