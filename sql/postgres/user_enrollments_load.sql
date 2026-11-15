-- Data set: User Enrollments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-enrollments
CREATE TABLE "user_enrollments_load" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "rolename" VARCHAR(60),
    "enrollmentdate" TIMESTAMP(6),
    "enrollmenttype" VARCHAR(50),
    "roleid" INTEGER,
    PRIMARY KEY ("orgunitid", "userid")
);
