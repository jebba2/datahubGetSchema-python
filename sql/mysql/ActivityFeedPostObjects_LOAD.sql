-- Data set: Activity Feed Post Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-objects
CREATE TABLE `ActivityFeedPostObjects_LOAD` (
    `OrgUnitId` INT,
    `PostId` CHAR(36) NOT NULL,
    `PostType` VARCHAR(16),
    `LastModifiedBy` INT,
    `LastModified` DATETIME(6),
    `DropboxId` BIGINT,
    `Content` TEXT,
    `IsDeleted` TINYINT(1),
    `CommentCount` INT,
    `AttachmentCount` INT,
    `Version` BIGINT,
    PRIMARY KEY (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
