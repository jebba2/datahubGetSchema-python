-- Data set: Assignment Submissions
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submissions
-- No primary key: D2L documents key column SubmitterType as nullable.
CREATE TABLE "assignment_submissions" (
    "dropboxid" BIGINT,
    "orgunitid" INTEGER,
    "submitterid" BIGINT,
    "submittertype" VARCHAR(5),
    "filesubmissioncount" INTEGER,
    "totalfilesize" BIGINT,
    "feedbackuserid" INTEGER,
    "feedbackisread" BOOLEAN,
    "score" NUMERIC(19,9),
    "isgraded" BOOLEAN,
    "lastsubmissiondate" TIMESTAMP(6),
    "feedback" VARCHAR(1000),
    "feedbacklastmodified" TIMESTAMP(6),
    "feedbackreaddate" TIMESTAMP(6),
    "completiondate" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "version" BIGINT
);
CREATE INDEX "ix_assignment_submissions_dropboxid" ON "assignment_submissions" ("dropboxid");
CREATE INDEX "ix_assignment_submissions_orgunitid" ON "assignment_submissions" ("orgunitid");
CREATE INDEX "ix_assignment_submissions_submitterid" ON "assignment_submissions" ("submitterid");
CREATE INDEX "ix_assignment_submissions_feedbackuserid" ON "assignment_submissions" ("feedbackuserid");
