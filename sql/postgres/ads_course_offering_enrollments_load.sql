-- Data set: ADS Course Offering Enrollments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-offering-enrollments
CREATE TABLE "ads_course_offering_enrollments_load" (
    "userid" TEXT,
    "orgunitid" TEXT,
    "roleid" TEXT,
    "enrollmentdate" TEXT,
    "enrollmenttype" TEXT
);
