-- Data set: SCORM Interaction Objectives
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-objectives
CREATE TABLE "scorm_interaction_objectives" (
    "interactionid" UUID NOT NULL,
    "objectiveid" UUID NOT NULL,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("interactionid", "objectiveid")
);
CREATE INDEX "ix_scorm_interaction_objectives_objectiveid" ON "scorm_interaction_objectives" ("objectiveid");
