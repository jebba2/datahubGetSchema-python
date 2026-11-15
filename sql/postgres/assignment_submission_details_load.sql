-- Data set: Assignment Submission Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submission-details
CREATE TABLE "assignment_submission_details_load" (
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
