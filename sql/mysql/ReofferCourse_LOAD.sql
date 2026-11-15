-- Data set: Reoffer Course (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/33182-reoffer-course-data-sets#reoffer-course
CREATE TABLE `ReofferCourse_LOAD` (
    `CourseOfferingId` INT NOT NULL,
    `SourceCourseId` INT NOT NULL,
    `CreatedBy` INT,
    `ReofferDate` DATETIME(6),
    PRIMARY KEY (`CourseOfferingId`, `SourceCourseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
