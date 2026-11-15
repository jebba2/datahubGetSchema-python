-- Data set: PreRequisite Conditions Met
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#prerequisite-conditions-met
CREATE TABLE `PreRequisiteConditionsMet` (
    `PreRequisiteId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `DateMet` DATETIME(6),
    `Action` VARCHAR(7),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`PreRequisiteId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_PreRequisiteConditionsMet_UserId` ON `PreRequisiteConditionsMet` (`UserId`);
