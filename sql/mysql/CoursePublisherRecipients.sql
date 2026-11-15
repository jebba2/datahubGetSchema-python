-- Data set: Course Publisher Recipients
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-recipients
CREATE TABLE `CoursePublisherRecipients` (
    `RecipientID` CHAR(36) NOT NULL,
    `Name` VARCHAR(256),
    `CreatedAt` DATETIME(6),
    `LastModified` DATETIME(6),
    PRIMARY KEY (`RecipientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
