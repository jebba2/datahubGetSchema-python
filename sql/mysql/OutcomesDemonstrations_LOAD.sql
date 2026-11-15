-- Data set: Outcomes Demonstrations (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-demonstrations
CREATE TABLE `OutcomesDemonstrations_LOAD` (
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
