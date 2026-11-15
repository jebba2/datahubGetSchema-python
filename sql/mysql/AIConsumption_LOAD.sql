-- Data set: AI Consumption (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/34440-ai-consumption-data-sets#ai-consumption
CREATE TABLE `AIConsumption_LOAD` (
    `ConsumptionId` VARCHAR(255) NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `Date` DATETIME(6),
    `GenerationCount` INT,
    `ConsumptionSource` INT,
    PRIMARY KEY (`ConsumptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
