-- Data set: System Access Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-log
CREATE TABLE "system_access_log_load" (
    "sessionid" VARCHAR(36) NOT NULL,
    "userid" INTEGER NOT NULL,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "state" VARCHAR(20) NOT NULL,
    "source" VARCHAR(20),
    "appversion" VARCHAR(20),
    "device" VARCHAR(50),
    "isofflinemode" BOOLEAN,
    "ipaddress" VARCHAR(45),
    PRIMARY KEY ("sessionid", "userid", "timestamp", "state")
);
