-- Data set: Course Awards
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#course-awards
CREATE TABLE "course_awards" (
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
CREATE INDEX "ix_course_awards_awardid" ON "course_awards" ("awardid");
CREATE INDEX "ix_course_awards_orgunitid" ON "course_awards" ("orgunitid");
