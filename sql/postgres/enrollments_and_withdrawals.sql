-- Data set: Enrollments and Withdrawals
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#enrollments-and-withdrawals
CREATE TABLE "enrollments_and_withdrawals" (
    "logid" BIGINT NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "roleid" INTEGER,
    "action" VARCHAR(50),
    "modifiedbyuserid" INTEGER,
    "enrollmentdate" TIMESTAMP(6),
    PRIMARY KEY ("logid")
);
CREATE INDEX "ix_enrollments_and_withdrawals_userid" ON "enrollments_and_withdrawals" ("userid");
CREATE INDEX "ix_enrollments_and_withdrawals_orgunitid" ON "enrollments_and_withdrawals" ("orgunitid");
CREATE INDEX "ix_enrollments_and_withdrawals_roleid" ON "enrollments_and_withdrawals" ("roleid");
