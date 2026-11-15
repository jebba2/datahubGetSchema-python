-- Data set: Quiz Survey Sections
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-survey-sections
CREATE TABLE "quiz_survey_sections" (
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
CREATE INDEX "ix_quiz_survey_sections_collectionid" ON "quiz_survey_sections" ("collectionid");
CREATE INDEX "ix_quiz_survey_sections_createdby" ON "quiz_survey_sections" ("createdby");
CREATE INDEX "ix_quiz_survey_sections_lastmodifiedby" ON "quiz_survey_sections" ("lastmodifiedby");
