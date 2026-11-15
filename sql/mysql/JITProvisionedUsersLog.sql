-- Data set: JIT Provisioned Users Log
-- Source: https://community.d2l.com/brightspace/kb/articles/5782-jit-provisioning-data-sets#jit-provisioned-users-log
CREATE TABLE `JITProvisionedUsersLog` (
    `UserId` INT NOT NULL,
    `MappingField` VARCHAR(32),
    `MappingFieldValue` VARCHAR(270),
    `ProviderType` VARCHAR(32),
    `ProviderId` TEXT,
    `RoleId` INT,
    `Timestamp` DATETIME(6) NOT NULL,
    `Action` VARCHAR(16),
    PRIMARY KEY (`UserId`, `Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_JITProvisionedUsersLog_RoleId` ON `JITProvisionedUsersLog` (`RoleId`);
