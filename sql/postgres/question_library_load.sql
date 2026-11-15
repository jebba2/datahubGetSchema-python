-- Data set: Question Library (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-library
CREATE TABLE "question_library_load" (
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "isautograded" BOOLEAN,
    "templatetypeid" INTEGER,
    "questiontype" VARCHAR(28),
    "name" VARCHAR(256),
    "question" VARCHAR(1000),
    "comment" VARCHAR(1000),
    "answerkey" VARCHAR(1000),
    "creationdate" TIMESTAMP(6),
    "version" BIGINT,
    "allowsattachments" BOOLEAN,
    "aiutilization" INTEGER,
    PRIMARY KEY ("questionid", "questionversionid")
);
