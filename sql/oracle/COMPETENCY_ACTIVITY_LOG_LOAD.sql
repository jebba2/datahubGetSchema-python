-- Data set: Competency Activity Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-log
CREATE TABLE "COMPETENCY_ACTIVITY_LOG_LOAD" (
    "ACTIVITYID" NUMBER(19) NOT NULL,
    "ACTIVITYLOGID" NUMBER(19) NOT NULL,
    "LOGTYPEID" NUMBER(10),
    "LOGTYPENAME" VARCHAR2(19 CHAR),
    "LOGDATETIME" TIMESTAMP(7),
    "MODIFIEDBY" NUMBER(19),
    PRIMARY KEY ("ACTIVITYID", "ACTIVITYLOGID")
);
