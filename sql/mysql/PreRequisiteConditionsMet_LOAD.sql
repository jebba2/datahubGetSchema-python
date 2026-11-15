-- Data set: PreRequisite Conditions Met (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#prerequisite-conditions-met
CREATE TABLE `PreRequisiteConditionsMet_LOAD` (
    `PreRequisiteId` INT NOT NULL,
    `UserId` INT NOT NULL,
    `DateMet` DATETIME(6),
    `Action` VARCHAR(7),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`PreRequisiteId`, `UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
