-- Data set: CPD Questions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-questions
CREATE TABLE "cpd_questions_load" (
    "questionid" INTEGER NOT NULL,
    "questiontext" VARCHAR(4000),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("questionid")
);
