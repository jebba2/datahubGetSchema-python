-- Data set: Reoffer Course
-- Source: https://community.d2l.com/brightspace/kb/articles/33182-reoffer-course-data-sets#reoffer-course
CREATE TABLE `ReofferCourse` (
    `CourseOfferingId` INT NOT NULL,
    `SourceCourseId` INT NOT NULL,
    `CreatedBy` INT,
    `ReofferDate` DATETIME(6),
    PRIMARY KEY (`CourseOfferingId`, `SourceCourseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE INDEX `IX_ReofferCourse_SourceCourseId` ON `ReofferCourse` (`SourceCourseId`);
CREATE INDEX `IX_ReofferCourse_CreatedBy` ON `ReofferCourse` (`CreatedBy`);
