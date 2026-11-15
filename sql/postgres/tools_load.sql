-- Data set: Tools (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4540-tools-data-sets#tools
CREATE TABLE "tools_load" (
    "toolid" INTEGER NOT NULL,
    "name" VARCHAR(50),
    "displayname" VARCHAR(200),
    "version" BIGINT,
    PRIMARY KEY ("toolid")
);
