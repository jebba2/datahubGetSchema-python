-- Data set: Activity Feed Post Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-log
CREATE TABLE `ActivityFeedPostLog_LOAD` (
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
