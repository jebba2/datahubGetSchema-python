-- Data set: Brightspace Email Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/34145-email-data-sets#brightspace-email-log
CREATE TABLE "brightspace_email_log_load" (
    "mailid" INTEGER NOT NULL,
    "senderuserid" INTEGER,
    "senderaddress" VARCHAR(256),
    "recipientaddress" VARCHAR(256) NOT NULL,
    "recipienttype" VARCHAR(4) NOT NULL,
    "datetimesent" TIMESTAMP(6),
    "subject" VARCHAR(1000),
    PRIMARY KEY ("mailid", "recipientaddress", "recipienttype")
);
