-- Data set: User Enrollments
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-enrollments
CREATE TABLE "user_enrollments" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "rolename" VARCHAR(60),
    "enrollmentdate" TIMESTAMP(6),
    "enrollmenttype" VARCHAR(50),
    "roleid" INTEGER,
    PRIMARY KEY ("orgunitid", "userid")
);
CREATE INDEX "ix_user_enrollments_userid" ON "user_enrollments" ("userid");
CREATE INDEX "ix_user_enrollments_roleid" ON "user_enrollments" ("roleid");
