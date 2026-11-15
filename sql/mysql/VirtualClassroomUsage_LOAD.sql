-- Data set: Virtual Classroom Usage (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4541-virtual-classroom-data-sets#virtual-classroom-usage
CREATE TABLE `VirtualClassroomUsage_LOAD` (
    `OrgUnitId` INT,
    `CourseName` VARCHAR(255),
    `MeetingId` VARCHAR(36) NOT NULL,
    `MeetingName` VARCHAR(255),
    `CreationUserId` INT,
    `CreationDate` DATETIME(6),
    `ScheduledDate` DATETIME(6),
    `ScheduledDuration` INT,
    `IsPublished` TINYINT(1),
    `ExternalLinksEnabled` TINYINT(1),
    `WholeClassInvited` TINYINT(1),
    `IsCancelled` TINYINT(1),
    `StartDateTime` DATETIME(6),
    `EndDateTime` DATETIME(6),
    `IsRecorded` TINYINT(1),
    PRIMARY KEY (`MeetingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
