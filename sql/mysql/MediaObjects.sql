-- Data set: Media Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-objects
CREATE TABLE `MediaObjects` (
    `ContentId` CHAR(36) NOT NULL,
    `Title` VARCHAR(1000),
    `RevisionCount` INT,
    `OwnerId` INT,
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ContentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_MediaObjects_OwnerId` ON `MediaObjects` (`OwnerId`);
