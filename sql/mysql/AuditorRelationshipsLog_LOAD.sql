-- Data set: Auditor Relationships Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#auditor-relationships-log
CREATE TABLE `AuditorRelationshipsLog_LOAD` (
    `AuditorId` INT NOT NULL,
    `UserToAuditId` INT NOT NULL,
    `OrgUnitId` INT NOT NULL,
    `Action` VARCHAR(16),
    `ModifiedBy` INT,
    `ModifiedDate` DATETIME(6) NOT NULL,
    PRIMARY KEY (`AuditorId`, `UserToAuditId`, `OrgUnitId`, `ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
