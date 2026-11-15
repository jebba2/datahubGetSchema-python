-- Data set: Question Relationships
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-relationships
CREATE TABLE "question_relationships" (
    "collectionid" BIGINT,
    "questionid" BIGINT,
    "questionversionid" BIGINT,
    "order" BIGINT,
    "sectionid" BIGINT,
    "isquestionpool" BOOLEAN,
    "creationdate" TIMESTAMP(6),
    "createdby" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" BIGINT,
    "points" NUMERIC(19,9),
    "difficulty" INTEGER,
    "isbonus" BOOLEAN,
    "ismandatory" BOOLEAN,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    "objectid" BIGINT NOT NULL,
    PRIMARY KEY ("objectid")
);
CREATE INDEX "ix_question_relationships_collectionid" ON "question_relationships" ("collectionid");
CREATE INDEX "ix_question_relationships_questionid" ON "question_relationships" ("questionid");
CREATE INDEX "ix_question_relationships_questionversionid" ON "question_relationships" ("questionversionid");
