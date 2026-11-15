-- Data set: Quiz Survey Sections (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-survey-sections
CREATE TABLE "quiz_survey_sections_load" (
    "collectionid" BIGINT,
    "sectionid" BIGINT NOT NULL,
    "name" VARCHAR(256),
    "nameisdisplayed" BOOLEAN,
    "isquestionpool" BOOLEAN,
    "sectiontext" VARCHAR(1000),
    "sectiontextishtml" BOOLEAN,
    "issectiontexthidden" BOOLEAN,
    "questionpoints" NUMERIC(19,9),
    "numquestions" INTEGER,
    "numchoices" INTEGER,
    "shuffle" BOOLEAN,
    "creationdate" TIMESTAMP(6),
    "createdby" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" BIGINT,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("sectionid")
);
