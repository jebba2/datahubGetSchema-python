-- Data set: Audio Video Processed (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#audio-video-processed
CREATE TABLE `AudioVideoProcessed_LOAD` (
    `ContentId` CHAR(36) NOT NULL,
    `RevisionId` CHAR(36) NOT NULL,
    `RevisionNumber` INT,
    `Type` VARCHAR(5),
    `Source` VARCHAR(32),
    `RevisionSize` BIGINT,
    `Duration` INT,
    `RequiredTranscoding` TINYINT(1),
    `RequiredTranscribing` TINYINT(1),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`ContentId`, `RevisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
