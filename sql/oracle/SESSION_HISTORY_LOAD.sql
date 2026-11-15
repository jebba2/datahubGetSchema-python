-- Data set: Session History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#session-history
CREATE TABLE "SESSION_HISTORY_LOAD" (
    "SESSIONID" NUMBER(19),
    "ORGID" NUMBER(10),
    "USERID" NUMBER(10),
    "DATESTARTED" TIMESTAMP(7),
    "DATEENDED" TIMESTAMP(7),
    "LASTACCESSED" TIMESTAMP(7),
    "TIMEDOUT" NUMBER(1),
    "HISTORYID" NUMBER(19) NOT NULL,
    PRIMARY KEY ("HISTORYID")
);
