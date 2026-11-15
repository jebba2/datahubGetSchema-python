-- Data set: Course Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access
CREATE TABLE "course_access_load" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "dayaccessed" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("orgunitid", "userid", "dayaccessed")
);
