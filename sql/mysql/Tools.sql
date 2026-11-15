-- Data set: Tools
-- Source: https://community.d2l.com/brightspace/kb/articles/4540-tools-data-sets#tools
CREATE TABLE `Tools` (
    `ToolId` INT NOT NULL,
    `Name` VARCHAR(50),
    `DisplayName` VARCHAR(200),
    `Version` BIGINT,
    PRIMARY KEY (`ToolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
