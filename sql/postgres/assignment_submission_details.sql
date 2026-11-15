-- Data set: Assignment Submission Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submission-details
CREATE TABLE "assignment_submission_details" (
    "submissionid" BIGINT NOT NULL,
    "dropboxid" BIGINT,
    "userid" BIGINT,
    "groupid" BIGINT,
    "numberoffilessubmitted" INTEGER,
    "totalfilesize" BIGINT,
    "submittedbyuserid" INTEGER,
    "datesubmitted" TIMESTAMP(6),
    "comments" VARCHAR(1000),
    "isturnitinexempt" BOOLEAN,
    "isdeleted" BOOLEAN,
    "ispreview" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("submissionid")
);
CREATE INDEX "ix_assignment_submission_details_dropboxid" ON "assignment_submission_details" ("dropboxid");
CREATE INDEX "ix_assignment_submission_details_userid" ON "assignment_submission_details" ("userid");
CREATE INDEX "ix_assignment_submission_details_submittedbyuserid" ON "assignment_submission_details" ("submittedbyuserid");
