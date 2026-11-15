-- Data set: Content Files Properties Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-files-properties-log
CREATE TABLE `ContentFilesPropertiesLog_LOAD` (
    `OrgUnitId` INT NOT NULL,
    `ContentObjectId` INT NOT NULL,
    `Action` VARCHAR(10),
    `FilePath` TEXT,
    `FileName` VARCHAR(512),
    `FileExtension` VARCHAR(512),
    `FileSizeBytes` BIGINT,
    `UploadDate` DATETIME(6),
    `LastModifiedBy` INT,
    `LastModified` DATETIME(6) NOT NULL,
    PRIMARY KEY (`OrgUnitId`, `ContentObjectId`, `LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
