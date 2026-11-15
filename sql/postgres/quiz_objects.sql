-- Data set: Quiz Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-objects
CREATE TABLE "quiz_objects" (
    "quizid" BIGINT NOT NULL,
    "quizname" VARCHAR(256),
    "quizdescription" VARCHAR(1000),
    "quizcategory" VARCHAR(256),
    "isactive" BOOLEAN,
    "orgunitid" INTEGER,
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "duedate" TIMESTAMP(6),
    "creationdate" TIMESTAMP(6),
    "createdby" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" BIGINT,
    "gradeobjectid" BIGINT,
    "overallscorecalculation" VARCHAR(23),
    "quizscoredenominator" NUMERIC(19,9),
    "haspassword" BOOLEAN,
    "iprestricted" BOOLEAN,
    "timelimit" INTEGER,
    "timelimitenforced" BOOLEAN,
    "attemptsallowed" INTEGER,
    "preventmovingbackwards" BOOLEAN,
    "allowhints" BOOLEAN,
    "notificationemail" VARCHAR(1000),
    "disablepageraccess" BOOLEAN,
    "displayincalendar" BOOLEAN,
    "isattemptrldb" BOOLEAN,
    "issubviewrldb" BOOLEAN,
    "sortorder" INTEGER,
    "categoryid" BIGINT,
    "resultid" BIGINT,
    "isretakeincorrectonly" BOOLEAN,
    "pagingtypeid" INTEGER,
    "issynchronous" BOOLEAN,
    "deductionpercentage" INTEGER,
    "aistudysupport" BOOLEAN,
    "hidequestionpoints" BOOLEAN,
    "issinglesession" BOOLEAN,
    "hideannotationtools" BOOLEAN,
    PRIMARY KEY ("quizid")
);
CREATE INDEX "ix_quiz_objects_orgunitid" ON "quiz_objects" ("orgunitid");
CREATE INDEX "ix_quiz_objects_createdby" ON "quiz_objects" ("createdby");
CREATE INDEX "ix_quiz_objects_lastmodifiedby" ON "quiz_objects" ("lastmodifiedby");
CREATE INDEX "ix_quiz_objects_gradeobjectid" ON "quiz_objects" ("gradeobjectid");
CREATE INDEX "ix_quiz_objects_resultid" ON "quiz_objects" ("resultid");
