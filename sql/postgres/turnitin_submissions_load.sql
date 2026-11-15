-- Data set: TurnItIn Submissions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#turnitin-submissions
CREATE TABLE "turnitin_submissions_load" (
    "dropboxid" BIGINT,
    "submissionid" BIGINT NOT NULL,
    "fileid" BIGINT NOT NULL,
    "lastsubmissiondate" TIMESTAMP(6),
    "submissionstatus" SMALLINT,
    "submissionerrortype" SMALLINT,
    "errormessage" VARCHAR(255),
    "submittedby" INTEGER,
    "lastrefreshdate" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("submissionid", "fileid")
);
