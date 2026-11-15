-- Data set: Enrollments and Withdrawals (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#enrollments-and-withdrawals
CREATE TABLE "enrollments_and_withdrawals_load" (
    "logid" BIGINT NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "roleid" INTEGER,
    "action" VARCHAR(50),
    "modifiedbyuserid" INTEGER,
    "enrollmentdate" TIMESTAMP(6),
    PRIMARY KEY ("logid")
);
