-- Data set: Session History
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#session-history
CREATE TABLE "session_history" (
    "sessionid" BIGINT,
    "orgid" INTEGER,
    "userid" INTEGER,
    "datestarted" TIMESTAMP(6),
    "dateended" TIMESTAMP(6),
    "lastaccessed" TIMESTAMP(6),
    "timedout" BOOLEAN,
    "historyid" BIGINT NOT NULL,
    PRIMARY KEY ("historyid")
);
CREATE INDEX "ix_session_history_userid" ON "session_history" ("userid");
