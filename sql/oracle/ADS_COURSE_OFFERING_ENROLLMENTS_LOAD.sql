-- Data set: ADS Course Offering Enrollments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-offering-enrollments
CREATE TABLE "ADS_COURSE_OFFERING_ENROLLMENTS_LOAD" (
    "USERID" VARCHAR2(4000 CHAR),
    "ORGUNITID" VARCHAR2(4000 CHAR),
    "ROLEID" VARCHAR2(4000 CHAR),
    "ENROLLMENTDATE" VARCHAR2(4000 CHAR),
    "ENROLLMENTTYPE" VARCHAR2(4000 CHAR)
);
