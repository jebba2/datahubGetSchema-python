-- Data set: Outcomes Demonstrations
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-demonstrations
CREATE TABLE `OutcomesDemonstrations` (
    `DemonstrationId` CHAR(36) NOT NULL,
    `ExplicitlyEnteredScaleLevelId` CHAR(36),
    `AutomaticallyGeneratedScaleLevelId` CHAR(36),
    `AlignedObjectType` INT,
    `AlignedObjectId` VARCHAR(1000),
    `OutcomeId` CHAR(36),
    `RegistryId` CHAR(36),
    `IsPublished` TINYINT(1),
    `AssessedUserId` INT,
    `AssessedDate` DATETIME(6),
    `AssessorUserId` INT,
    `LastModifiedDate` DATETIME(6),
    `LastModifiedBy` INT,
    `IsDeleted` TINYINT(1),
    PRIMARY KEY (`DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_OutcomesDemonstrations_ExplicitlyEnteredScaleLevelId` ON `OutcomesDemonstrations` (`ExplicitlyEnteredScaleLevelId`);
CREATE INDEX `IX_OutcomesDemonstrations_AutomaticallyGeneratedScaleLevelId` ON `OutcomesDemonstrations` (`AutomaticallyGeneratedScaleLevelId`);
CREATE INDEX `IX_OutcomesDemonstrations_AssessedUserId` ON `OutcomesDemonstrations` (`AssessedUserId`);
CREATE INDEX `IX_OutcomesDemonstrations_AssessorUserId` ON `OutcomesDemonstrations` (`AssessorUserId`);
CREATE INDEX `IX_OutcomesDemonstrations_LastModifiedBy` ON `OutcomesDemonstrations` (`LastModifiedBy`);
