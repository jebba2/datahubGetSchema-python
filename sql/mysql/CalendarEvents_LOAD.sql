-- Data set: Calendar Events (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4521-calendar-data-sets#calendar-events
CREATE TABLE `CalendarEvents_LOAD` (
    `ScheduleId` BIGINT NOT NULL,
    `OrgUnitId` BIGINT,
    `UserId` BIGINT,
    `Title` VARCHAR(256),
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `TimeZoneIdentifier` VARCHAR(256),
    `IsAllDayEvent` TINYINT(1),
    `RecurrenceType` VARCHAR(7),
    `RecurrenceInterval` INT,
    `CreatedByUserId` INT,
    `LastModified` DATETIME(6),
    `EventObjectTypeName` VARCHAR(200),
    `ObjectLookupId1` BIGINT,
    `ObjectLookupId2` BIGINT,
    PRIMARY KEY (`ScheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
