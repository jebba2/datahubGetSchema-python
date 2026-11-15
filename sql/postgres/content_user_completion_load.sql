-- Data set: Content User Completion (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-completion
CREATE TABLE "content_user_completion_load" (
    "contentobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "userid" INTEGER NOT NULL,
    "datecompleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "automaticdatecompleted" TIMESTAMP(6),
    "manualdatecompleted" TIMESTAMP(6),
    PRIMARY KEY ("contentobjectid", "userid")
);
