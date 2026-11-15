-- Data set: User Logins (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-logins
CREATE TABLE "user_logins_load" (
    "userid" INTEGER,
    "username" VARCHAR(256),
    "ip" VARCHAR(64),
    "sessionid" INTEGER,
    "statustype" VARCHAR(50),
    "attemptdate" TIMESTAMP(6),
    "impersonatinguserid" INTEGER,
    "loginattemptid" VARCHAR(36) NOT NULL,
    "loginsource" VARCHAR(50),
    PRIMARY KEY ("loginattemptid")
);
