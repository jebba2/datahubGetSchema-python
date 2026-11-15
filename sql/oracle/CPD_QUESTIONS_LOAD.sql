-- Data set: CPD Questions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-questions
CREATE TABLE "CPD_QUESTIONS_LOAD" (
    "QUESTIONID" NUMBER(10) NOT NULL,
    "QUESTIONTEXT" CLOB,
    "LASTMODIFIED" TIMESTAMP(7),
    "DATEDELETED" TIMESTAMP(7),
    "VERSION" NUMBER(19),
    PRIMARY KEY ("QUESTIONID")
);
