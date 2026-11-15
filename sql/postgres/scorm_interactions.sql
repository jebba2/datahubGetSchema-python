-- Data set: SCORM Interactions
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interactions
CREATE TABLE "scorm_interactions" (
    "interactionid" UUID NOT NULL,
    "activityid" UUID,
    "internalid" VARCHAR(255),
    "interactiontype" VARCHAR(100),
    "description" VARCHAR(250),
    "weighting" DOUBLE PRECISION,
    "correctresponses" VARCHAR(2000),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("interactionid")
);
CREATE INDEX "ix_scorm_interactions_activityid" ON "scorm_interactions" ("activityid");
