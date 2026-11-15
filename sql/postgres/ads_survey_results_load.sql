-- Data set: ADS Survey Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#survey-results
CREATE TABLE "ads_survey_results_load" (
    "surveyid" TEXT,
    "surveyname" TEXT,
    "attemptid" TEXT,
    "activestatus" TEXT,
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "parentdepartmentname" TEXT,
    "parentdepartmentcode" TEXT,
    "respondentuserid" TEXT,
    "respondentusername" TEXT,
    "respondentfirstname" TEXT,
    "respondentlastname" TEXT,
    "categoryname" TEXT,
    "submissiondate" TEXT,
    "questionnumber" TEXT,
    "question" TEXT,
    "answer" TEXT
);
