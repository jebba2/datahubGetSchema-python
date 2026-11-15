-- Data set: Assignment Submissions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submissions
-- No primary key: D2L documents key column SubmitterType as nullable.
CREATE TABLE "ASSIGNMENT_SUBMISSIONS_LOAD" (
    "DROPBOXID" NUMBER(19),
    "ORGUNITID" NUMBER(10),
    "SUBMITTERID" NUMBER(19),
    "SUBMITTERTYPE" VARCHAR2(5 CHAR),
    "FILESUBMISSIONCOUNT" NUMBER(10),
    "TOTALFILESIZE" NUMBER(19),
    "FEEDBACKUSERID" NUMBER(10),
    "FEEDBACKISREAD" NUMBER(1),
    "SCORE" NUMBER(19,9),
    "ISGRADED" NUMBER(1),
    "LASTSUBMISSIONDATE" TIMESTAMP(7),
    "FEEDBACK" VARCHAR2(1000 CHAR),
    "FEEDBACKLASTMODIFIED" TIMESTAMP(7),
    "FEEDBACKREADDATE" TIMESTAMP(7),
    "COMPLETIONDATE" TIMESTAMP(7),
    "ISDELETED" NUMBER(1),
    "VERSION" NUMBER(19)
);
