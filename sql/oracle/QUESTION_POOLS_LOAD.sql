-- Data set: Question Pools (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-pools
CREATE TABLE "QUESTION_POOLS_LOAD" (
    "SECTIONID" NUMBER(19) NOT NULL,
    "QUESTIONID" NUMBER(19) NOT NULL,
    "QUESTIONVERSIONID" NUMBER(19) NOT NULL,
    "ISDELETED" NUMBER(1),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("SECTIONID", "QUESTIONID", "QUESTIONVERSIONID")
);
