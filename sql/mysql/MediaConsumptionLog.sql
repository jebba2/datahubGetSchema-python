-- Data set: Media Consumption Log
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-consumption-log
CREATE TABLE `MediaConsumptionLog` (
    `LogId` CHAR(36) NOT NULL,
    `UserId` INT,
    `ContentId` CHAR(36),
    `RevisionId` CHAR(36),
    `ContentType` VARCHAR(5),
    `ClientApp` VARCHAR(32),
    `DateConsumed` DATETIME(6),
    `DurationPercentageWatched` INT,
    PRIMARY KEY (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_MediaConsumptionLog_UserId` ON `MediaConsumptionLog` (`UserId`);
CREATE INDEX `IX_MediaConsumptionLog_ContentId` ON `MediaConsumptionLog` (`ContentId`);
