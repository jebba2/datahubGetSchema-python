-- Data set: SCORM Objective Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objective-attempts
CREATE TABLE "scorm_objective_attempts" (
    "visitid" UUID NOT NULL,
    "objectiveid" UUID NOT NULL,
    "attemptnumber" INTEGER NOT NULL,
    "score" DOUBLE PRECISION,
    "scoreraw" DOUBLE PRECISION,
    "success" VARCHAR(100),
    "completion" VARCHAR(100),
    "progress" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("visitid", "objectiveid", "attemptnumber")
);
CREATE INDEX "ix_scorm_objective_attempts_objectiveid" ON "scorm_objective_attempts" ("objectiveid");
