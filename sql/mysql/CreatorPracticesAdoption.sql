-- Data set: Creator+ Practices Adoption
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-adoption
CREATE TABLE `CreatorPracticesAdoption` (
    `ActivityInstanceId` INT NOT NULL,
    `CreatedById` INT,
    `OrgUnitId` INT,
    `PracticeType` VARCHAR(32),
    `PracticeTitle` VARCHAR(255),
    `ProviderObjectId` INT,
    `CreatedDate` DATETIME(6),
    `Version` BIGINT,
    PRIMARY KEY (`ActivityInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_CreatorPracticesAdoption_CreatedById` ON `CreatorPracticesAdoption` (`CreatedById`);
CREATE INDEX `IX_CreatorPracticesAdoption_OrgUnitId` ON `CreatorPracticesAdoption` (`OrgUnitId`);
