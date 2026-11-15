-- Data set: AI Consumption
-- Source: https://community.d2l.com/brightspace/kb/articles/34440-ai-consumption-data-sets#ai-consumption
CREATE TABLE `AIConsumption` (
    `ConsumptionId` VARCHAR(255) NOT NULL,
    `UserId` INT,
    `OrgUnitId` INT,
    `Date` DATETIME(6),
    `GenerationCount` INT,
    `ConsumptionSource` INT,
    PRIMARY KEY (`ConsumptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_AIConsumption_UserId` ON `AIConsumption` (`UserId`);
CREATE INDEX `IX_AIConsumption_OrgUnitId` ON `AIConsumption` (`OrgUnitId`);
