-- Data set: Tools
-- Source: https://community.d2l.com/brightspace/kb/articles/4540-tools-data-sets#tools
CREATE TABLE "tools" (
    "toolid" INTEGER NOT NULL,
    "name" VARCHAR(50),
    "displayname" VARCHAR(200),
    "version" BIGINT,
    PRIMARY KEY ("toolid")
);
