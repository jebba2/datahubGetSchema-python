-- Data set: Outcomes in Registries
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-in-registries
CREATE TABLE `OutcomesInRegistries` (
    `OutcomeId` CHAR(36) NOT NULL,
    `RegistryId` CHAR(36) NOT NULL,
    `CreatedDate` DATETIME(6),
    `CreatedBy` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`OutcomeId`, `RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesInRegistries_CreatedBy` ON `OutcomesInRegistries` (`CreatedBy`);
CREATE INDEX `IX_OutcomesInRegistries_LastModifiedBy` ON `OutcomesInRegistries` (`LastModifiedBy`);
