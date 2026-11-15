-- Data set: Quiz Attempts Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts-log
CREATE TABLE "QUIZ_ATTEMPTS_LOG_LOAD" (
    "LOGID" NUMBER(19) NOT NULL,
    "ATTEMPTID" NUMBER(19),
    "EVENTTYPEID" NUMBER(10),
    "NAME" VARCHAR2(256 CHAR),
    "DESCRIPTION" VARCHAR2(256 CHAR),
    "EVENTTIME" TIMESTAMP(7),
    "IPADDRESS" VARCHAR2(45 CHAR),
    "USERID" NUMBER(10),
    "ISDELETED" NUMBER(1),
    PRIMARY KEY ("LOGID")
);
