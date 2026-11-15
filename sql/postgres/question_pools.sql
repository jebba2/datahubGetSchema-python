-- Data set: Question Pools
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-pools
CREATE TABLE "question_pools" (
    "sectionid" BIGINT NOT NULL,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("sectionid", "questionid", "questionversionid")
);
CREATE INDEX "ix_question_pools_questionid" ON "question_pools" ("questionid");
CREATE INDEX "ix_question_pools_questionversionid" ON "question_pools" ("questionversionid");
