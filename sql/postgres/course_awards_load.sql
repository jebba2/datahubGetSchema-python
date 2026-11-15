-- Data set: Course Awards (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#course-awards
CREATE TABLE "course_awards_load" (
    "associationid" BIGINT NOT NULL,
    "awardid" BIGINT,
    "orgunitid" BIGINT,
    "datecreated" TIMESTAMP(6),
    "hiddenaward" BOOLEAN,
    "conditionsetid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "credits" NUMERIC(9,2),
    "isassociated" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("associationid")
);
