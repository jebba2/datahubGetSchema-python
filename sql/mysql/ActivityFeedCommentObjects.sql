-- Data set: Activity Feed Comment Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-objects
CREATE TABLE `ActivityFeedCommentObjects` (
    `OrgUnitId` INT,
    `CommentId` CHAR(36) NOT NULL,
    `LastModifiedBy` INT,
    `LastModified` DATETIME(6),
    `Content` TEXT,
    `IsDeleted` TINYINT(1),
    `PostId` CHAR(36),
    `Version` BIGINT,
    PRIMARY KEY (`CommentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ActivityFeedCommentObjects_OrgUnitId` ON `ActivityFeedCommentObjects` (`OrgUnitId`);
CREATE INDEX `IX_ActivityFeedCommentObjects_LastModifiedBy` ON `ActivityFeedCommentObjects` (`LastModifiedBy`);
CREATE INDEX `IX_ActivityFeedCommentObjects_PostId` ON `ActivityFeedCommentObjects` (`PostId`);
