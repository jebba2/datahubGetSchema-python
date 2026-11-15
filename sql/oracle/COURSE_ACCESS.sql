-- Data set: Course Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access
CREATE TABLE "COURSE_ACCESS" (
    "ORGUNITID" NUMBER(10) NOT NULL,
    "USERID" NUMBER(10) NOT NULL,
    "DAYACCESSED" TIMESTAMP(7) NOT NULL,
    PRIMARY KEY ("ORGUNITID", "USERID", "DAYACCESSED")
);
CREATE INDEX "IX_COURSE_ACCESS_USERID" ON "COURSE_ACCESS" ("USERID");
