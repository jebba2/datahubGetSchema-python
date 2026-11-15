-- Data set: Activity Feed Post Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-objects
CREATE TABLE `ActivityFeedPostObjects` (
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
CREATE INDEX `IX_ActivityFeedPostObjects_OrgUnitId` ON `ActivityFeedPostObjects` (`OrgUnitId`);
CREATE INDEX `IX_ActivityFeedPostObjects_LastModifiedBy` ON `ActivityFeedPostObjects` (`LastModifiedBy`);
CREATE INDEX `IX_ActivityFeedPostObjects_DropboxId` ON `ActivityFeedPostObjects` (`DropboxId`);
