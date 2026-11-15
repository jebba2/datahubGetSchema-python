-- Data set: Intelligent Agent Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-objects
CREATE TABLE `IntelligentAgentObjects_LOAD` (
    `AgentId` BIGINT NOT NULL,
    `OrgUnitId` INT,
    `AgentName` VARCHAR(128),
    `Description` VARCHAR(1000),
    `Enabled` TINYINT(1),
    `SpecificRoles` VARCHAR(1000),
    `LoginConditionEnabled` TINYINT(1),
    `LoginConditionThreshold` INT,
    `LoginConditionType` VARCHAR(14),
    `AccessConditionEnabled` TINYINT(1),
    `AccessConditionThreshold` INT,
    `AccessConditionType` VARCHAR(20),
    `ResultId` BIGINT,
    `RepeatType` VARCHAR(10),
    `EmailWhenSatisfied` TINYINT(1),
    `EnableSchedule` TINYINT(1),
    `ScheduleType` VARCHAR(10),
    `ScheduleRepeatsEvery` INT,
    `StartDate` DATETIME(6),
    `EndDate` DATETIME(6),
    `LastModified` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`AgentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
