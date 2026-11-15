-- Data set: Outcomes Set Org
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-org
CREATE TABLE `OutcomesSetOrg` (
    `OutcomeSetId` BIGINT NOT NULL,
    `OutcomeSetName` VARCHAR(256),
    `RegistryId` CHAR(36),
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    `ScaleId` CHAR(36),
    PRIMARY KEY (`OutcomeSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesSetOrg_CreatedBy` ON `OutcomesSetOrg` (`CreatedBy`);
CREATE INDEX `IX_OutcomesSetOrg_LastModifiedBy` ON `OutcomesSetOrg` (`LastModifiedBy`);
CREATE INDEX `IX_OutcomesSetOrg_ScaleId` ON `OutcomesSetOrg` (`ScaleId`);
