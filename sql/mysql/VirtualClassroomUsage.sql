-- Data set: Virtual Classroom Usage
-- Source: https://community.d2l.com/brightspace/kb/articles/4541-virtual-classroom-data-sets#virtual-classroom-usage
CREATE TABLE `VirtualClassroomUsage` (
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
CREATE INDEX `IX_VirtualClassroomUsage_OrgUnitId` ON `VirtualClassroomUsage` (`OrgUnitId`);
CREATE INDEX `IX_VirtualClassroomUsage_CreationUserId` ON `VirtualClassroomUsage` (`CreationUserId`);
