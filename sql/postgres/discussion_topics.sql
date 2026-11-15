-- Data set: Discussion Topics
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topics
CREATE TABLE "discussion_topics" (
    "orgunitid" INTEGER,
    "topicid" BIGINT NOT NULL,
    "forumid" BIGINT,
    "name" VARCHAR(1000),
    "description" VARCHAR(1000),
    "mustposttoparticipate" BOOLEAN,
    "allowanon" BOOLEAN,
    "ishidden" BOOLEAN,
    "requiresapproval" BOOLEAN,
    "lastpostdate" TIMESTAMP(6),
    "lastpostuserid" BIGINT,
    "numviews" BIGINT,
    "sortorder" INTEGER,
    "isdeleted" BOOLEAN,
    "deleteddate" TIMESTAMP(6),
    "deletedbyuserid" INTEGER,
    "gradeitemid" INTEGER,
    "scoreoutof" DOUBLE PRECISION,
    "scorecalculationmethod" VARCHAR(19),
    "includenonscoredvalues" BOOLEAN,
    "version" BIGINT,
    "resultid" INTEGER,
    "startdate" TIMESTAMP(6),
    "startdateavailabilitytype" SMALLINT,
    "enddate" TIMESTAMP(6),
    "enddateavailabilitytype" SMALLINT,
    "aiutilization" INTEGER,
    "duedate" TIMESTAMP(6),
    PRIMARY KEY ("topicid")
);
CREATE INDEX "ix_discussion_topics_orgunitid" ON "discussion_topics" ("orgunitid");
CREATE INDEX "ix_discussion_topics_forumid" ON "discussion_topics" ("forumid");
CREATE INDEX "ix_discussion_topics_deletedbyuserid" ON "discussion_topics" ("deletedbyuserid");
CREATE INDEX "ix_discussion_topics_gradeitemid" ON "discussion_topics" ("gradeitemid");
CREATE INDEX "ix_discussion_topics_resultid" ON "discussion_topics" ("resultid");
