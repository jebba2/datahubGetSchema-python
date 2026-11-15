-- Data set: Announcements (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4723-announcements-data-sets#announcements
CREATE TABLE `Announcements_LOAD` (
    `AnnouncementId` BIGINT NOT NULL,
    `OrgUnitId` BIGINT,
    `Title` VARCHAR(400),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `IsGlobal` TINYINT(1),
    `IsDraft` TINYINT(1),
    `NumAttachments` INT,
    `DeletedDate` DATETIME(6),
    `DeletedByUserId` INT,
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `CreatedBy` INT,
    `IsAuthorInfoShown` TINYINT(1),
    `CreatedDate` DATETIME(6),
    `ResultId` BIGINT,
    PRIMARY KEY (`AnnouncementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
