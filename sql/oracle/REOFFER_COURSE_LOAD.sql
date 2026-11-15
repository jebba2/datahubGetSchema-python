-- Data set: Reoffer Course (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/33182-reoffer-course-data-sets#reoffer-course
CREATE TABLE "REOFFER_COURSE_LOAD" (
    "COURSEOFFERINGID" NUMBER(10) NOT NULL,
    "SOURCECOURSEID" NUMBER(10) NOT NULL,
    "CREATEDBY" NUMBER(10),
    "REOFFERDATE" TIMESTAMP(7),
    PRIMARY KEY ("COURSEOFFERINGID", "SOURCECOURSEID")
);
