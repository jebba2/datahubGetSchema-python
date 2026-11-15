-- Data set: Course Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access
CREATE TABLE "course_access" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "dayaccessed" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("orgunitid", "userid", "dayaccessed")
);
CREATE INDEX "ix_course_access_userid" ON "course_access" ("userid");
