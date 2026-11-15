-- Data set: Question Pools (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-pools
CREATE TABLE "question_pools_load" (
    "sectionid" BIGINT NOT NULL,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("sectionid", "questionid", "questionversionid")
);
