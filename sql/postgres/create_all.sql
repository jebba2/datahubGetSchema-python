-- Data set: ADS All Grades
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#all-grades
CREATE TABLE "ads_all_grades" (
    "userid" TEXT,
    "orgdefinedid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "isactive" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "coursesectionid" TEXT,
    "coursesectioncode" TEXT,
    "coursesectionname" TEXT,
    "gradeitemcategoryid" TEXT,
    "gradeitemcategoryname" TEXT,
    "gradeitemid" TEXT,
    "gradeitemname" TEXT,
    "gradeitemweight" TEXT,
    "gradeitemstartdate" TEXT,
    "gradeitemenddate" TEXT,
    "pointsnumerator" TEXT,
    "pointsdenominator" TEXT,
    "gradevalue" TEXT,
    "gradelastmodified" TEXT,
    "gradecomments" TEXT,
    "graderuserid" TEXT,
    "graderorgdefinedid" TEXT,
    "graderusername" TEXT,
    "graderfirstname" TEXT,
    "graderlastname" TEXT,
    "excludefromfinalgrade" TEXT,
    "gradeobjecttype" TEXT
);

-- Data set: ADS All Grades (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#all-grades
CREATE TABLE "ads_all_grades_load" (
    "userid" TEXT,
    "orgdefinedid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "isactive" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "coursesectionid" TEXT,
    "coursesectioncode" TEXT,
    "coursesectionname" TEXT,
    "gradeitemcategoryid" TEXT,
    "gradeitemcategoryname" TEXT,
    "gradeitemid" TEXT,
    "gradeitemname" TEXT,
    "gradeitemweight" TEXT,
    "gradeitemstartdate" TEXT,
    "gradeitemenddate" TEXT,
    "pointsnumerator" TEXT,
    "pointsdenominator" TEXT,
    "gradevalue" TEXT,
    "gradelastmodified" TEXT,
    "gradecomments" TEXT,
    "graderuserid" TEXT,
    "graderorgdefinedid" TEXT,
    "graderusername" TEXT,
    "graderfirstname" TEXT,
    "graderlastname" TEXT,
    "excludefromfinalgrade" TEXT,
    "gradeobjecttype" TEXT
);

-- Data set: ADS Attendance
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#attendance
CREATE TABLE "ads_attendance" (
    "userid" TEXT,
    "orgdefinedid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "rolename" TEXT,
    "roleid" TEXT,
    "attendanceregisterid" TEXT,
    "attendanceregistername" TEXT,
    "attendancesessionid" TEXT,
    "attendancesessionname" TEXT,
    "schemesymbolid" TEXT,
    "symbolname" TEXT,
    "symbolvalue" TEXT,
    "percentage" TEXT,
    "lastmodified" TEXT,
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "coursesectionid" TEXT,
    "coursesectioncode" TEXT,
    "coursesectionname" TEXT,
    "parentdepartmentname" TEXT,
    "semestername" TEXT
);

-- Data set: ADS Attendance (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#attendance
CREATE TABLE "ads_attendance_load" (
    "userid" TEXT,
    "orgdefinedid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "rolename" TEXT,
    "roleid" TEXT,
    "attendanceregisterid" TEXT,
    "attendanceregistername" TEXT,
    "attendancesessionid" TEXT,
    "attendancesessionname" TEXT,
    "schemesymbolid" TEXT,
    "symbolname" TEXT,
    "symbolvalue" TEXT,
    "percentage" TEXT,
    "lastmodified" TEXT,
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "coursesectionid" TEXT,
    "coursesectioncode" TEXT,
    "coursesectionname" TEXT,
    "parentdepartmentname" TEXT,
    "semestername" TEXT
);

-- Data set: ADS Awards Issued
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#awards-issued
CREATE TABLE "ads_awards_issued" (
    "awardid" TEXT,
    "name" TEXT,
    "type" TEXT,
    "credits" TEXT,
    "userid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "orgdefinedid" TEXT,
    "issuedby" TEXT,
    "issuerusername" TEXT,
    "issuerfirstname" TEXT,
    "issuerlastname" TEXT,
    "issuedate" TEXT,
    "revokedid" TEXT,
    "criteria" TEXT,
    "evidence" TEXT,
    "expirydate" TEXT,
    "orgunitid" TEXT,
    "orgunitname" TEXT,
    "orgunitcode" TEXT
);

-- Data set: ADS Awards Issued (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#awards-issued
CREATE TABLE "ads_awards_issued_load" (
    "awardid" TEXT,
    "name" TEXT,
    "type" TEXT,
    "credits" TEXT,
    "userid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "orgdefinedid" TEXT,
    "issuedby" TEXT,
    "issuerusername" TEXT,
    "issuerfirstname" TEXT,
    "issuerlastname" TEXT,
    "issuedate" TEXT,
    "revokedid" TEXT,
    "criteria" TEXT,
    "evidence" TEXT,
    "expirydate" TEXT,
    "orgunitid" TEXT,
    "orgunitname" TEXT,
    "orgunitcode" TEXT
);

-- Data set: ADS CPD Job Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-job-targets
CREATE TABLE "ads_cpd_job_targets" (
    "jobtitle" TEXT,
    "startdate" TEXT,
    "subjectid" TEXT,
    "subjectname" TEXT,
    "structuredminutes" TEXT,
    "unstructuredminutes" TEXT,
    "structuredrecordcount" TEXT,
    "unstructuredrecordcount" TEXT
);

-- Data set: ADS CPD Job Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-job-targets
CREATE TABLE "ads_cpd_job_targets_load" (
    "jobtitle" TEXT,
    "startdate" TEXT,
    "subjectid" TEXT,
    "subjectname" TEXT,
    "structuredminutes" TEXT,
    "unstructuredminutes" TEXT,
    "structuredrecordcount" TEXT,
    "unstructuredrecordcount" TEXT
);

-- Data set: ADS CPD Records
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-records
CREATE TABLE "ads_cpd_records" (
    "userid" TEXT,
    "recordid" TEXT,
    "recordname" TEXT,
    "creditsinminutes" TEXT,
    "datecompleted" TEXT,
    "subject" TEXT,
    "type" TEXT,
    "method" TEXT,
    "grade" TEXT,
    "evidence" TEXT,
    "answer1n" TEXT,
    "state" TEXT
);

-- Data set: ADS CPD Records (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-records
CREATE TABLE "ads_cpd_records_load" (
    "userid" TEXT,
    "recordid" TEXT,
    "recordname" TEXT,
    "creditsinminutes" TEXT,
    "datecompleted" TEXT,
    "subject" TEXT,
    "type" TEXT,
    "method" TEXT,
    "grade" TEXT,
    "evidence" TEXT,
    "answer1n" TEXT,
    "state" TEXT
);

-- Data set: ADS CPD User Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-user-targets
CREATE TABLE "ads_cpd_user_targets" (
    "userid" TEXT,
    "startdate" TEXT,
    "subjectid" TEXT,
    "subjectname" TEXT,
    "structuredminutes" TEXT,
    "unstructuredminutes" TEXT,
    "structuredrecordcount" TEXT,
    "unstructuredrecordcount" TEXT
);

-- Data set: ADS CPD User Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#cpd-user-targets
CREATE TABLE "ads_cpd_user_targets_load" (
    "userid" TEXT,
    "startdate" TEXT,
    "subjectid" TEXT,
    "subjectname" TEXT,
    "structuredminutes" TEXT,
    "unstructuredminutes" TEXT,
    "structuredrecordcount" TEXT,
    "unstructuredrecordcount" TEXT
);

-- Data set: ADS Content Progress
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#content-progress
CREATE TABLE "ads_content_progress" (
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "coursesectionid" TEXT,
    "coursesectioncode" TEXT,
    "coursesectionname" TEXT,
    "semesterid" TEXT,
    "semestercode" TEXT,
    "semestername" TEXT,
    "userid" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "contenttopicid" TEXT,
    "contenttopicname" TEXT,
    "moduleid" TEXT,
    "modulename" TEXT,
    "contenttopicvisits" TEXT,
    "totaltimespent" TEXT,
    "lastvisiteddate" TEXT
);

-- Data set: ADS Content Progress (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#content-progress
CREATE TABLE "ads_content_progress_load" (
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "coursesectionid" TEXT,
    "coursesectioncode" TEXT,
    "coursesectionname" TEXT,
    "semesterid" TEXT,
    "semestercode" TEXT,
    "semestername" TEXT,
    "userid" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "contenttopicid" TEXT,
    "contenttopicname" TEXT,
    "moduleid" TEXT,
    "modulename" TEXT,
    "contenttopicvisits" TEXT,
    "totaltimespent" TEXT,
    "lastvisiteddate" TEXT
);

-- Data set: ADS Course Learning Outcome Evaluation
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-learning-outcome-evaluation
CREATE TABLE "ads_course_learning_outcome_evaluation" (
    "programenrollment" TEXT,
    "orgunitid" TEXT,
    "orgunitname" TEXT,
    "orgunitcode" TEXT,
    "orgunittypeid" TEXT,
    "orgunittypename" TEXT,
    "outcomeid" TEXT,
    "outcometype" TEXT,
    "outcomename" TEXT,
    "readyforevaluation" TEXT,
    "courseofferingid" TEXT,
    "courseofferingname" TEXT,
    "courseofferingcode" TEXT,
    "semestername" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "userid" TEXT,
    "rolename" TEXT,
    "roleid" TEXT,
    "activityid" TEXT,
    "activitytype" TEXT,
    "activityname" TEXT,
    "assessmenttype" TEXT,
    "rubricid" TEXT,
    "rubricname" TEXT,
    "rubricmeasurement" TEXT,
    "assessmentthreshold" TEXT,
    "assessmentthresholdcriteria" TEXT,
    "rubriclevelachieved" TEXT,
    "rubricpoints" TEXT,
    "activitygradepoints" TEXT,
    "activitygrademaxpoints" TEXT,
    "activitygradepercent" TEXT,
    "activitythresholdachieved" TEXT
);

-- Data set: ADS Course Learning Outcome Evaluation (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-learning-outcome-evaluation
CREATE TABLE "ads_course_learning_outcome_evaluation_load" (
    "programenrollment" TEXT,
    "orgunitid" TEXT,
    "orgunitname" TEXT,
    "orgunitcode" TEXT,
    "orgunittypeid" TEXT,
    "orgunittypename" TEXT,
    "outcomeid" TEXT,
    "outcometype" TEXT,
    "outcomename" TEXT,
    "readyforevaluation" TEXT,
    "courseofferingid" TEXT,
    "courseofferingname" TEXT,
    "courseofferingcode" TEXT,
    "semestername" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "userid" TEXT,
    "rolename" TEXT,
    "roleid" TEXT,
    "activityid" TEXT,
    "activitytype" TEXT,
    "activityname" TEXT,
    "assessmenttype" TEXT,
    "rubricid" TEXT,
    "rubricname" TEXT,
    "rubricmeasurement" TEXT,
    "assessmentthreshold" TEXT,
    "assessmentthresholdcriteria" TEXT,
    "rubriclevelachieved" TEXT,
    "rubricpoints" TEXT,
    "activitygradepoints" TEXT,
    "activitygrademaxpoints" TEXT,
    "activitygradepercent" TEXT,
    "activitythresholdachieved" TEXT
);

-- Data set: ADS Course Offering Enrollments
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-offering-enrollments
CREATE TABLE "ads_course_offering_enrollments" (
    "userid" TEXT,
    "orgunitid" TEXT,
    "roleid" TEXT,
    "enrollmentdate" TEXT,
    "enrollmenttype" TEXT
);

-- Data set: ADS Course Offering Enrollments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#course-offering-enrollments
CREATE TABLE "ads_course_offering_enrollments_load" (
    "userid" TEXT,
    "orgunitid" TEXT,
    "roleid" TEXT,
    "enrollmentdate" TEXT,
    "enrollmenttype" TEXT
);

-- Data set: ADS Enrollments and Withdrawals
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#enrollments-and-withdrawals
CREATE TABLE "ads_enrollments_and_withdrawals" (
    "logid" TEXT,
    "orgunitid" TEXT,
    "orgunitname" TEXT,
    "orgunitcode" TEXT,
    "orgunittype" TEXT,
    "userid" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "logeventtype" TEXT,
    "logdate" TEXT
);

-- Data set: ADS Enrollments and Withdrawals (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#enrollments-and-withdrawals
CREATE TABLE "ads_enrollments_and_withdrawals_load" (
    "logid" TEXT,
    "orgunitid" TEXT,
    "orgunitname" TEXT,
    "orgunitcode" TEXT,
    "orgunittype" TEXT,
    "userid" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "logeventtype" TEXT,
    "logdate" TEXT
);

-- Data set: ADS Final Grades
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#final-grades
CREATE TABLE "ads_final_grades" (
    "userid" TEXT,
    "orgdefinedid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "semesterid" TEXT,
    "semestername" TEXT,
    "semestercode" TEXT,
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "coursesectionname" TEXT,
    "finalcalculatedgradepercentage" TEXT,
    "finalcalculatedgradelastmodifieddate" TEXT,
    "finaladjustedgradepercentage" TEXT,
    "finaladjustedlastmodifieddate" TEXT,
    "finaladjustedcomments" TEXT,
    "finaladjustedgradeisreleased" TEXT,
    "finaladjustedlastmodifiedby" TEXT
);

-- Data set: ADS Final Grades (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#final-grades
CREATE TABLE "ads_final_grades_load" (
    "userid" TEXT,
    "orgdefinedid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "semesterid" TEXT,
    "semestername" TEXT,
    "semestercode" TEXT,
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "coursesectionname" TEXT,
    "finalcalculatedgradepercentage" TEXT,
    "finalcalculatedgradelastmodifieddate" TEXT,
    "finaladjustedgradepercentage" TEXT,
    "finaladjustedlastmodifieddate" TEXT,
    "finaladjustedcomments" TEXT,
    "finaladjustedgradeisreleased" TEXT,
    "finaladjustedlastmodifiedby" TEXT
);

-- Data set: ADS Impersonated Session History
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#impersonated-session-history
CREATE TABLE "ads_impersonated_session_history" (
    "sessionid" INTEGER,
    "userid" INTEGER,
    "username" VARCHAR(540),
    "datestarted" TIMESTAMP(6),
    "dateended" TIMESTAMP(6),
    "impersonatinguserid" INTEGER,
    "impersonatingusername" VARCHAR(540)
);

-- Data set: ADS Impersonated Session History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#impersonated-session-history
CREATE TABLE "ads_impersonated_session_history_load" (
    "sessionid" INTEGER,
    "userid" INTEGER,
    "username" VARCHAR(540),
    "datestarted" TIMESTAMP(6),
    "dateended" TIMESTAMP(6),
    "impersonatinguserid" INTEGER,
    "impersonatingusername" VARCHAR(540)
);

-- Data set: ADS Instructor Usage
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#instructor-usage
CREATE TABLE "ads_instructor_usage" (
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "orgdefinedid" TEXT,
    "userid" TEXT,
    "rolename" TEXT,
    "roleid" TEXT,
    "isactive" TEXT,
    "courseofferingname" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingid" TEXT,
    "numberofcontenttopicsvisited" TEXT,
    "lastaccesstocourseofferingcontent" TEXT,
    "numberofassignments" TEXT,
    "numberofassignmentsubmissionscommentedon" TEXT,
    "numberofgradeitems" TEXT,
    "numberofgradedgradeitems" TEXT,
    "lastmodificationofagradeitem" TEXT,
    "numberofdiscussionposts" TEXT,
    "numberofdiscussionpostsauthored" TEXT,
    "lastdiscussionpostdate" TEXT,
    "lastaccesstocourseoffering" TEXT,
    "numberofloginstothesystem" TEXT,
    "lastsentmaildate" TEXT
);

-- Data set: ADS Instructor Usage (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#instructor-usage
CREATE TABLE "ads_instructor_usage_load" (
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "orgdefinedid" TEXT,
    "userid" TEXT,
    "rolename" TEXT,
    "roleid" TEXT,
    "isactive" TEXT,
    "courseofferingname" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingid" TEXT,
    "numberofcontenttopicsvisited" TEXT,
    "lastaccesstocourseofferingcontent" TEXT,
    "numberofassignments" TEXT,
    "numberofassignmentsubmissionscommentedon" TEXT,
    "numberofgradeitems" TEXT,
    "numberofgradedgradeitems" TEXT,
    "lastmodificationofagradeitem" TEXT,
    "numberofdiscussionposts" TEXT,
    "numberofdiscussionpostsauthored" TEXT,
    "lastdiscussionpostdate" TEXT,
    "lastaccesstocourseoffering" TEXT,
    "numberofloginstothesystem" TEXT,
    "lastsentmaildate" TEXT
);

-- Data set: ADS Learner Usage
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#learner-usage
CREATE TABLE "ads_learner_usage" (
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "parentdepartmentname" TEXT,
    "parentdepartmentcode" TEXT,
    "semesterid" TEXT,
    "semestercode" TEXT,
    "semestername" TEXT,
    "userid" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "isactive" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "contentcompleted" TEXT,
    "contentrequired" TEXT,
    "checklistcompleted" TEXT,
    "quizcompleted" TEXT,
    "totalquizattempts" TEXT,
    "discussionpostcreated" TEXT,
    "discussionpostreplies" TEXT,
    "discussionpostread" TEXT,
    "lastdiscussionpostdate" TEXT,
    "numberofassignmentsubmissions" TEXT,
    "lastassignmentsubmissiondate" TEXT,
    "totaltimespentincontent" TEXT,
    "lastvisiteddate" TEXT,
    "lastsystemlogin" TEXT,
    "numberofloginstothesystem" TEXT,
    "auditorname" TEXT,
    "lastquizattemptdate" TEXT,
    "lastscormcompletiondate" TEXT,
    "lastscormvisitdate" TEXT
);

-- Data set: ADS Learner Usage (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#learner-usage
CREATE TABLE "ads_learner_usage_load" (
    "courseofferingid" TEXT,
    "courseofferingcode" TEXT,
    "courseofferingname" TEXT,
    "parentdepartmentname" TEXT,
    "parentdepartmentcode" TEXT,
    "semesterid" TEXT,
    "semestercode" TEXT,
    "semestername" TEXT,
    "userid" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "isactive" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "contentcompleted" TEXT,
    "contentrequired" TEXT,
    "checklistcompleted" TEXT,
    "quizcompleted" TEXT,
    "totalquizattempts" TEXT,
    "discussionpostcreated" TEXT,
    "discussionpostreplies" TEXT,
    "discussionpostread" TEXT,
    "lastdiscussionpostdate" TEXT,
    "numberofassignmentsubmissions" TEXT,
    "lastassignmentsubmissiondate" TEXT,
    "totaltimespentincontent" TEXT,
    "lastvisiteddate" TEXT,
    "lastsystemlogin" TEXT,
    "numberofloginstothesystem" TEXT,
    "auditorname" TEXT,
    "lastquizattemptdate" TEXT,
    "lastscormcompletiondate" TEXT,
    "lastscormvisitdate" TEXT
);

-- Data set: ADS Program Level Outcomes Evaluation (PLOE)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#program-level-outcomes-evaluation-ploe
CREATE TABLE "ads_program_level_outcomes_evaluation_ploe" (
    "orgunitid" TEXT,
    "orgunitname" TEXT,
    "orgunitcode" TEXT,
    "program" TEXT,
    "outcomeid" TEXT,
    "outcometype" TEXT,
    "outcomename" TEXT,
    "outcomestatus" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "userid" TEXT,
    "rolename" TEXT,
    "roleid" TEXT,
    "isachieved" TEXT,
    "achievementdatetime" TEXT
);

-- Data set: ADS Program Level Outcomes Evaluation (PLOE) (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#program-level-outcomes-evaluation-ploe
CREATE TABLE "ads_program_level_outcomes_evaluation_ploe_load" (
    "orgunitid" TEXT,
    "orgunitname" TEXT,
    "orgunitcode" TEXT,
    "program" TEXT,
    "outcomeid" TEXT,
    "outcometype" TEXT,
    "outcomename" TEXT,
    "outcomestatus" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "userid" TEXT,
    "rolename" TEXT,
    "roleid" TEXT,
    "isachieved" TEXT,
    "achievementdatetime" TEXT
);

-- Data set: ADS Rubric Assessments
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#rubric-assessments
CREATE TABLE "ads_rubric_assessments" (
    "courseorgunitid" TEXT,
    "coursename" TEXT,
    "coursecode" TEXT,
    "parentdepartmentname" TEXT,
    "parentsemestername" TEXT,
    "parentcoursetemplatename" TEXT,
    "coursesectionid" TEXT,
    "coursesectionname" TEXT,
    "coursesectioncode" TEXT,
    "rubricid" TEXT,
    "rubricname" TEXT,
    "activityid" TEXT,
    "activitytype" TEXT,
    "activityname" TEXT,
    "userid" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "criterionid" TEXT,
    "criterion" TEXT,
    "level" TEXT,
    "points" TEXT,
    "overalllevelachieved" TEXT,
    "isscoreoverridden" TEXT,
    "evaluationdate" TEXT,
    "assessoruserid" TEXT,
    "assessorfirstname" TEXT,
    "assessorlastname" TEXT,
    "assessorusername" TEXT,
    "assessororgdefinedid" TEXT
);

-- Data set: ADS Rubric Assessments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#rubric-assessments
CREATE TABLE "ads_rubric_assessments_load" (
    "courseorgunitid" TEXT,
    "coursename" TEXT,
    "coursecode" TEXT,
    "parentdepartmentname" TEXT,
    "parentsemestername" TEXT,
    "parentcoursetemplatename" TEXT,
    "coursesectionid" TEXT,
    "coursesectionname" TEXT,
    "coursesectioncode" TEXT,
    "rubricid" TEXT,
    "rubricname" TEXT,
    "activityid" TEXT,
    "activitytype" TEXT,
    "activityname" TEXT,
    "userid" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "username" TEXT,
    "orgdefinedid" TEXT,
    "roleid" TEXT,
    "rolename" TEXT,
    "criterionid" TEXT,
    "criterion" TEXT,
    "level" TEXT,
    "points" TEXT,
    "overalllevelachieved" TEXT,
    "isscoreoverridden" TEXT,
    "evaluationdate" TEXT,
    "assessoruserid" TEXT,
    "assessorfirstname" TEXT,
    "assessorlastname" TEXT,
    "assessorusername" TEXT,
    "assessororgdefinedid" TEXT
);

-- Data set: ADS Survey Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#survey-results
CREATE TABLE "ads_survey_results" (
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

-- Data set: ADS Terms & Conditions - Activity Report
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#terms-conditions-activity-report
CREATE TABLE "ads_terms_conditions_activity_report" (
    "userid" TEXT,
    "orgdefinedid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "isactive" TEXT,
    "date" TEXT,
    "hasaccepted" TEXT,
    "versioncomments" TEXT,
    "title" TEXT,
    "versionid" TEXT
);

-- Data set: ADS Terms & Conditions - Activity Report (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#terms-conditions-activity-report
CREATE TABLE "ads_terms_conditions_activity_report_load" (
    "userid" TEXT,
    "orgdefinedid" TEXT,
    "username" TEXT,
    "firstname" TEXT,
    "lastname" TEXT,
    "isactive" TEXT,
    "date" TEXT,
    "hasaccepted" TEXT,
    "versioncomments" TEXT,
    "title" TEXT,
    "versionid" TEXT
);

-- Data set: ADS Terms & Conditions - Version History Report
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#terms-conditions-version-history-report
CREATE TABLE "ads_terms_conditions_version_history_report" (
    "versionid" TEXT,
    "orgid" TEXT,
    "language" TEXT,
    "title" TEXT,
    "termsandconditions" TEXT,
    "comments" TEXT,
    "versioncreateddate" TEXT,
    "versioncreatedbyid" TEXT,
    "versioncreatedbyfirstname" TEXT,
    "versioncreatedbylastname" TEXT
);

-- Data set: ADS Terms & Conditions - Version History Report (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4539-list-of-advanced-data-sets#terms-conditions-version-history-report
CREATE TABLE "ads_terms_conditions_version_history_report_load" (
    "versionid" TEXT,
    "orgid" TEXT,
    "language" TEXT,
    "title" TEXT,
    "termsandconditions" TEXT,
    "comments" TEXT,
    "versioncreateddate" TEXT,
    "versioncreatedbyid" TEXT,
    "versioncreatedbyfirstname" TEXT,
    "versioncreatedbylastname" TEXT
);

-- Data set: AI Consumption
-- Source: https://community.d2l.com/brightspace/kb/articles/34440-ai-consumption-data-sets#ai-consumption
CREATE TABLE "ai_consumption" (
    "consumptionid" VARCHAR(255) NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "date" TIMESTAMP(6),
    "generationcount" INTEGER,
    "consumptionsource" INTEGER,
    PRIMARY KEY ("consumptionid")
);
CREATE INDEX "ix_ai_consumption_userid" ON "ai_consumption" ("userid");
CREATE INDEX "ix_ai_consumption_orgunitid" ON "ai_consumption" ("orgunitid");

-- Data set: AI Consumption (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/34440-ai-consumption-data-sets#ai-consumption
CREATE TABLE "ai_consumption_load" (
    "consumptionid" VARCHAR(255) NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "date" TIMESTAMP(6),
    "generationcount" INTEGER,
    "consumptionsource" INTEGER,
    PRIMARY KEY ("consumptionid")
);

-- Data set: Accommodations Profile Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4752-accommodations-data-sets#accommodations-profile-log
CREATE TABLE "accommodations_profile_log" (
    "accommodateduserid" BIGINT NOT NULL,
    "orgunitid" BIGINT NOT NULL,
    "quiztimelimitmultiplier" NUMERIC(5,2),
    "quiztimelimitextratime" INTEGER,
    "quizcontrolalwaysallowrightclick" BOOLEAN,
    "modifiedby" BIGINT,
    "lastmodified" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("accommodateduserid", "orgunitid", "lastmodified")
);
CREATE INDEX "ix_accommodations_profile_log_orgunitid" ON "accommodations_profile_log" ("orgunitid");
CREATE INDEX "ix_accommodations_profile_log_modifiedby" ON "accommodations_profile_log" ("modifiedby");

-- Data set: Accommodations Profile Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4752-accommodations-data-sets#accommodations-profile-log
CREATE TABLE "accommodations_profile_log_load" (
    "accommodateduserid" BIGINT NOT NULL,
    "orgunitid" BIGINT NOT NULL,
    "quiztimelimitmultiplier" NUMERIC(5,2),
    "quiztimelimitextratime" INTEGER,
    "quizcontrolalwaysallowrightclick" BOOLEAN,
    "modifiedby" BIGINT,
    "lastmodified" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("accommodateduserid", "orgunitid", "lastmodified")
);

-- Data set: Activity Exemptions Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4526-exemptions-data-sets#activity-exemptions-log
CREATE TABLE "activity_exemptions_log" (
    "orgunitid" INTEGER,
    "userid" INTEGER,
    "objectid" INTEGER,
    "activityid" VARCHAR(225),
    "logtypename" VARCHAR(50),
    "lastmodifiedutc" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "activityexemptionslogid" BIGINT NOT NULL,
    "toolid" INTEGER,
    PRIMARY KEY ("activityexemptionslogid")
);
CREATE INDEX "ix_activity_exemptions_log_orgunitid" ON "activity_exemptions_log" ("orgunitid");
CREATE INDEX "ix_activity_exemptions_log_userid" ON "activity_exemptions_log" ("userid");
CREATE INDEX "ix_activity_exemptions_log_lastmodifiedby" ON "activity_exemptions_log" ("lastmodifiedby");
CREATE INDEX "ix_activity_exemptions_log_toolid" ON "activity_exemptions_log" ("toolid");

-- Data set: Activity Exemptions Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4526-exemptions-data-sets#activity-exemptions-log
CREATE TABLE "activity_exemptions_log_load" (
    "orgunitid" INTEGER,
    "userid" INTEGER,
    "objectid" INTEGER,
    "activityid" VARCHAR(225),
    "logtypename" VARCHAR(50),
    "lastmodifiedutc" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "activityexemptionslogid" BIGINT NOT NULL,
    "toolid" INTEGER,
    PRIMARY KEY ("activityexemptionslogid")
);

-- Data set: Activity Feed Comment Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-log
CREATE TABLE "activity_feed_comment_log" (
    "logid" UUID NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "commentid" UUID,
    "action" VARCHAR(16),
    "actiondate" TIMESTAMP(6),
    "content" VARCHAR(3072),
    "postid" UUID,
    PRIMARY KEY ("logid")
);
CREATE INDEX "ix_activity_feed_comment_log_userid" ON "activity_feed_comment_log" ("userid");
CREATE INDEX "ix_activity_feed_comment_log_orgunitid" ON "activity_feed_comment_log" ("orgunitid");
CREATE INDEX "ix_activity_feed_comment_log_postid" ON "activity_feed_comment_log" ("postid");

-- Data set: Activity Feed Comment Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-log
CREATE TABLE "activity_feed_comment_log_load" (
    "logid" UUID NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "commentid" UUID,
    "action" VARCHAR(16),
    "actiondate" TIMESTAMP(6),
    "content" VARCHAR(3072),
    "postid" UUID,
    PRIMARY KEY ("logid")
);

-- Data set: Activity Feed Comment Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-objects
CREATE TABLE "activity_feed_comment_objects" (
    "orgunitid" INTEGER,
    "commentid" UUID NOT NULL,
    "lastmodifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "content" VARCHAR(3072),
    "isdeleted" BOOLEAN,
    "postid" UUID,
    "version" BIGINT,
    PRIMARY KEY ("commentid")
);
CREATE INDEX "ix_activity_feed_comment_objects_orgunitid" ON "activity_feed_comment_objects" ("orgunitid");
CREATE INDEX "ix_activity_feed_comment_objects_lastmodifiedby" ON "activity_feed_comment_objects" ("lastmodifiedby");
CREATE INDEX "ix_activity_feed_comment_objects_postid" ON "activity_feed_comment_objects" ("postid");

-- Data set: Activity Feed Comment Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-comment-objects
CREATE TABLE "activity_feed_comment_objects_load" (
    "orgunitid" INTEGER,
    "commentid" UUID NOT NULL,
    "lastmodifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "content" VARCHAR(3072),
    "isdeleted" BOOLEAN,
    "postid" UUID,
    "version" BIGINT,
    PRIMARY KEY ("commentid")
);

-- Data set: Activity Feed Post Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-log
CREATE TABLE "activity_feed_post_log" (
    "logid" UUID NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "postid" UUID,
    "posttype" VARCHAR(16),
    "action" VARCHAR(16),
    "actiondate" TIMESTAMP(6),
    "dropboxid" BIGINT,
    "content" VARCHAR(3072),
    "commentcount" INTEGER,
    "attachmentcount" INTEGER,
    PRIMARY KEY ("logid")
);
CREATE INDEX "ix_activity_feed_post_log_userid" ON "activity_feed_post_log" ("userid");
CREATE INDEX "ix_activity_feed_post_log_orgunitid" ON "activity_feed_post_log" ("orgunitid");
CREATE INDEX "ix_activity_feed_post_log_dropboxid" ON "activity_feed_post_log" ("dropboxid");

-- Data set: Activity Feed Post Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-log
CREATE TABLE "activity_feed_post_log_load" (
    "logid" UUID NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "postid" UUID,
    "posttype" VARCHAR(16),
    "action" VARCHAR(16),
    "actiondate" TIMESTAMP(6),
    "dropboxid" BIGINT,
    "content" VARCHAR(3072),
    "commentcount" INTEGER,
    "attachmentcount" INTEGER,
    PRIMARY KEY ("logid")
);

-- Data set: Activity Feed Post Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-objects
CREATE TABLE "activity_feed_post_objects" (
    "orgunitid" INTEGER,
    "postid" UUID NOT NULL,
    "posttype" VARCHAR(16),
    "lastmodifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "dropboxid" BIGINT,
    "content" VARCHAR(3072),
    "isdeleted" BOOLEAN,
    "commentcount" INTEGER,
    "attachmentcount" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("postid")
);
CREATE INDEX "ix_activity_feed_post_objects_orgunitid" ON "activity_feed_post_objects" ("orgunitid");
CREATE INDEX "ix_activity_feed_post_objects_lastmodifiedby" ON "activity_feed_post_objects" ("lastmodifiedby");
CREATE INDEX "ix_activity_feed_post_objects_dropboxid" ON "activity_feed_post_objects" ("dropboxid");

-- Data set: Activity Feed Post Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4712-activity-feed-data-sets#activity-feed-post-objects
CREATE TABLE "activity_feed_post_objects_load" (
    "orgunitid" INTEGER,
    "postid" UUID NOT NULL,
    "posttype" VARCHAR(16),
    "lastmodifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "dropboxid" BIGINT,
    "content" VARCHAR(3072),
    "isdeleted" BOOLEAN,
    "commentcount" INTEGER,
    "attachmentcount" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("postid")
);

-- Data set: Announcements
-- Source: https://community.d2l.com/brightspace/kb/articles/4723-announcements-data-sets#announcements
CREATE TABLE "announcements" (
    "announcementid" BIGINT NOT NULL,
    "orgunitid" BIGINT,
    "title" VARCHAR(400),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isglobal" BOOLEAN,
    "isdraft" BOOLEAN,
    "numattachments" INTEGER,
    "deleteddate" TIMESTAMP(6),
    "deletedbyuserid" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "createdby" INTEGER,
    "isauthorinfoshown" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "resultid" BIGINT,
    PRIMARY KEY ("announcementid")
);
CREATE INDEX "ix_announcements_orgunitid" ON "announcements" ("orgunitid");
CREATE INDEX "ix_announcements_deletedbyuserid" ON "announcements" ("deletedbyuserid");
CREATE INDEX "ix_announcements_resultid" ON "announcements" ("resultid");

-- Data set: Announcements (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4723-announcements-data-sets#announcements
CREATE TABLE "announcements_load" (
    "announcementid" BIGINT NOT NULL,
    "orgunitid" BIGINT,
    "title" VARCHAR(400),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isglobal" BOOLEAN,
    "isdraft" BOOLEAN,
    "numattachments" INTEGER,
    "deleteddate" TIMESTAMP(6),
    "deletedbyuserid" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "createdby" INTEGER,
    "isauthorinfoshown" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "resultid" BIGINT,
    PRIMARY KEY ("announcementid")
);

-- Data set: Assignment Special Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-special-access
CREATE TABLE "assignment_special_access" (
    "dropboxid" BIGINT NOT NULL,
    "userid" INTEGER NOT NULL,
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "duedate" TIMESTAMP(6),
    "modifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "startdateavailabilitytype" SMALLINT,
    "enddateavailabilitytype" SMALLINT,
    PRIMARY KEY ("dropboxid", "userid")
);
CREATE INDEX "ix_assignment_special_access_userid" ON "assignment_special_access" ("userid");
CREATE INDEX "ix_assignment_special_access_modifiedby" ON "assignment_special_access" ("modifiedby");

-- Data set: Assignment Special Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-special-access
CREATE TABLE "assignment_special_access_load" (
    "dropboxid" BIGINT NOT NULL,
    "userid" INTEGER NOT NULL,
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "duedate" TIMESTAMP(6),
    "modifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "startdateavailabilitytype" SMALLINT,
    "enddateavailabilitytype" SMALLINT,
    PRIMARY KEY ("dropboxid", "userid")
);

-- Data set: Assignment Submission Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submission-details
CREATE TABLE "assignment_submission_details" (
    "submissionid" BIGINT NOT NULL,
    "dropboxid" BIGINT,
    "userid" BIGINT,
    "groupid" BIGINT,
    "numberoffilessubmitted" INTEGER,
    "totalfilesize" BIGINT,
    "submittedbyuserid" INTEGER,
    "datesubmitted" TIMESTAMP(6),
    "comments" VARCHAR(1000),
    "isturnitinexempt" BOOLEAN,
    "isdeleted" BOOLEAN,
    "ispreview" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("submissionid")
);
CREATE INDEX "ix_assignment_submission_details_dropboxid" ON "assignment_submission_details" ("dropboxid");
CREATE INDEX "ix_assignment_submission_details_userid" ON "assignment_submission_details" ("userid");
CREATE INDEX "ix_assignment_submission_details_submittedbyuserid" ON "assignment_submission_details" ("submittedbyuserid");

-- Data set: Assignment Submission Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submission-details
CREATE TABLE "assignment_submission_details_load" (
    "submissionid" BIGINT NOT NULL,
    "dropboxid" BIGINT,
    "userid" BIGINT,
    "groupid" BIGINT,
    "numberoffilessubmitted" INTEGER,
    "totalfilesize" BIGINT,
    "submittedbyuserid" INTEGER,
    "datesubmitted" TIMESTAMP(6),
    "comments" VARCHAR(1000),
    "isturnitinexempt" BOOLEAN,
    "isdeleted" BOOLEAN,
    "ispreview" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("submissionid")
);

-- Data set: Assignment Submissions
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submissions
-- No primary key: D2L documents key column SubmitterType as nullable.
CREATE TABLE "assignment_submissions" (
    "dropboxid" BIGINT,
    "orgunitid" INTEGER,
    "submitterid" BIGINT,
    "submittertype" VARCHAR(5),
    "filesubmissioncount" INTEGER,
    "totalfilesize" BIGINT,
    "feedbackuserid" INTEGER,
    "feedbackisread" BOOLEAN,
    "score" NUMERIC(19,9),
    "isgraded" BOOLEAN,
    "lastsubmissiondate" TIMESTAMP(6),
    "feedback" VARCHAR(1000),
    "feedbacklastmodified" TIMESTAMP(6),
    "feedbackreaddate" TIMESTAMP(6),
    "completiondate" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "version" BIGINT
);
CREATE INDEX "ix_assignment_submissions_dropboxid" ON "assignment_submissions" ("dropboxid");
CREATE INDEX "ix_assignment_submissions_orgunitid" ON "assignment_submissions" ("orgunitid");
CREATE INDEX "ix_assignment_submissions_submitterid" ON "assignment_submissions" ("submitterid");
CREATE INDEX "ix_assignment_submissions_feedbackuserid" ON "assignment_submissions" ("feedbackuserid");

-- Data set: Assignment Submissions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-submissions
-- No primary key: D2L documents key column SubmitterType as nullable.
CREATE TABLE "assignment_submissions_load" (
    "dropboxid" BIGINT,
    "orgunitid" INTEGER,
    "submitterid" BIGINT,
    "submittertype" VARCHAR(5),
    "filesubmissioncount" INTEGER,
    "totalfilesize" BIGINT,
    "feedbackuserid" INTEGER,
    "feedbackisread" BOOLEAN,
    "score" NUMERIC(19,9),
    "isgraded" BOOLEAN,
    "lastsubmissiondate" TIMESTAMP(6),
    "feedback" VARCHAR(1000),
    "feedbacklastmodified" TIMESTAMP(6),
    "feedbackreaddate" TIMESTAMP(6),
    "completiondate" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "version" BIGINT
);

-- Data set: Assignment Summary
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-summary
CREATE TABLE "assignment_summary" (
    "dropboxid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(128),
    "category" VARCHAR(128),
    "type" VARCHAR(10),
    "gradeitemid" BIGINT,
    "possiblescore" NUMERIC(19,9),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "duedate" TIMESTAMP(6),
    "isrestricted" BOOLEAN,
    "isdeleted" BOOLEAN,
    "turnitinenabled" BOOLEAN,
    "ishidden" BOOLEAN,
    "sortorder" INTEGER,
    "submissiontype" VARCHAR(18),
    "completiontype" VARCHAR(27),
    "resultid" INTEGER,
    "categoryid" BIGINT,
    "version" BIGINT,
    "startdateavailabilitytype" SMALLINT,
    "enddateavailabilitytype" SMALLINT,
    "aiutilization" INTEGER,
    "instructions" VARCHAR(10000),
    PRIMARY KEY ("dropboxid")
);
CREATE INDEX "ix_assignment_summary_orgunitid" ON "assignment_summary" ("orgunitid");
CREATE INDEX "ix_assignment_summary_gradeitemid" ON "assignment_summary" ("gradeitemid");
CREATE INDEX "ix_assignment_summary_resultid" ON "assignment_summary" ("resultid");

-- Data set: Assignment Summary (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#assignment-summary
CREATE TABLE "assignment_summary_load" (
    "dropboxid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(128),
    "category" VARCHAR(128),
    "type" VARCHAR(10),
    "gradeitemid" BIGINT,
    "possiblescore" NUMERIC(19,9),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "duedate" TIMESTAMP(6),
    "isrestricted" BOOLEAN,
    "isdeleted" BOOLEAN,
    "turnitinenabled" BOOLEAN,
    "ishidden" BOOLEAN,
    "sortorder" INTEGER,
    "submissiontype" VARCHAR(18),
    "completiontype" VARCHAR(27),
    "resultid" INTEGER,
    "categoryid" BIGINT,
    "version" BIGINT,
    "startdateavailabilitytype" SMALLINT,
    "enddateavailabilitytype" SMALLINT,
    "aiutilization" INTEGER,
    "instructions" VARCHAR(10000),
    PRIMARY KEY ("dropboxid")
);

-- Data set: Attendance Registers
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-registers
CREATE TABLE "attendance_registers" (
    "attendanceregisterid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(128),
    "description" VARCHAR(1000),
    "schemeid" BIGINT,
    "isvisible" BOOLEAN,
    "includeallusers" BOOLEAN,
    "causeforconcern" NUMERIC(19,9),
    "version" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("attendanceregisterid")
);
CREATE INDEX "ix_attendance_registers_orgunitid" ON "attendance_registers" ("orgunitid");
CREATE INDEX "ix_attendance_registers_schemeid" ON "attendance_registers" ("schemeid");

-- Data set: Attendance Registers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-registers
CREATE TABLE "attendance_registers_load" (
    "attendanceregisterid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(128),
    "description" VARCHAR(1000),
    "schemeid" BIGINT,
    "isvisible" BOOLEAN,
    "includeallusers" BOOLEAN,
    "causeforconcern" NUMERIC(19,9),
    "version" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("attendanceregisterid")
);

-- Data set: Attendance Schemes
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-schemes
CREATE TABLE "attendance_schemes" (
    "schemeid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "schemename" VARCHAR(128),
    "schemesymbolid" BIGINT NOT NULL,
    "symbolname" VARCHAR(128),
    "symbolvalue" VARCHAR(50),
    "percentage" NUMERIC(19,9),
    "version" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("schemeid", "schemesymbolid")
);
CREATE INDEX "ix_attendance_schemes_orgunitid" ON "attendance_schemes" ("orgunitid");

-- Data set: Attendance Schemes (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-schemes
CREATE TABLE "attendance_schemes_load" (
    "schemeid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "schemename" VARCHAR(128),
    "schemesymbolid" BIGINT NOT NULL,
    "symbolname" VARCHAR(128),
    "symbolvalue" VARCHAR(50),
    "percentage" NUMERIC(19,9),
    "version" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("schemeid", "schemesymbolid")
);

-- Data set: Attendance Sessions
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-sessions
CREATE TABLE "attendance_sessions" (
    "attendancesessionid" BIGINT NOT NULL,
    "attendanceregisterid" BIGINT,
    "name" VARCHAR(128),
    "description" VARCHAR(256),
    "sortorder" INTEGER,
    "version" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("attendancesessionid")
);
CREATE INDEX "ix_attendance_sessions_attendanceregisterid" ON "attendance_sessions" ("attendanceregisterid");

-- Data set: Attendance Sessions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-sessions
CREATE TABLE "attendance_sessions_load" (
    "attendancesessionid" BIGINT NOT NULL,
    "attendanceregisterid" BIGINT,
    "name" VARCHAR(128),
    "description" VARCHAR(256),
    "sortorder" INTEGER,
    "version" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("attendancesessionid")
);

-- Data set: Attendance User Sessions
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-user-sessions
CREATE TABLE "attendance_user_sessions" (
    "userid" INTEGER NOT NULL,
    "attendancesessionid" BIGINT NOT NULL,
    "schemesymbolid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("userid", "attendancesessionid")
);
CREATE INDEX "ix_attendance_user_sessions_attendancesessionid" ON "attendance_user_sessions" ("attendancesessionid");
CREATE INDEX "ix_attendance_user_sessions_schemesymbolid" ON "attendance_user_sessions" ("schemesymbolid");

-- Data set: Attendance User Sessions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4519-attendance-data-sets#attendance-user-sessions
CREATE TABLE "attendance_user_sessions_load" (
    "userid" INTEGER NOT NULL,
    "attendancesessionid" BIGINT NOT NULL,
    "schemesymbolid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("userid", "attendancesessionid")
);

-- Data set: Audio Video Processed
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#audio-video-processed
CREATE TABLE "audio_video_processed" (
    "contentid" UUID NOT NULL,
    "revisionid" UUID NOT NULL,
    "revisionnumber" INTEGER,
    "type" VARCHAR(5),
    "source" VARCHAR(32),
    "revisionsize" BIGINT,
    "duration" INTEGER,
    "requiredtranscoding" BOOLEAN,
    "requiredtranscribing" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("contentid", "revisionid")
);

-- Data set: Audio Video Processed (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#audio-video-processed
CREATE TABLE "audio_video_processed_load" (
    "contentid" UUID NOT NULL,
    "revisionid" UUID NOT NULL,
    "revisionnumber" INTEGER,
    "type" VARCHAR(5),
    "source" VARCHAR(32),
    "revisionsize" BIGINT,
    "duration" INTEGER,
    "requiredtranscoding" BOOLEAN,
    "requiredtranscribing" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("contentid", "revisionid")
);

-- Data set: Auditor Relationships Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#auditor-relationships-log
CREATE TABLE "auditor_relationships_log" (
    "auditorid" INTEGER NOT NULL,
    "usertoauditid" INTEGER NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "action" VARCHAR(16),
    "modifiedby" INTEGER,
    "modifieddate" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("auditorid", "usertoauditid", "orgunitid", "modifieddate")
);
CREATE INDEX "ix_auditor_relationships_log_usertoauditid" ON "auditor_relationships_log" ("usertoauditid");
CREATE INDEX "ix_auditor_relationships_log_orgunitid" ON "auditor_relationships_log" ("orgunitid");
CREATE INDEX "ix_auditor_relationships_log_modifiedby" ON "auditor_relationships_log" ("modifiedby");

-- Data set: Auditor Relationships Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#auditor-relationships-log
CREATE TABLE "auditor_relationships_log_load" (
    "auditorid" INTEGER NOT NULL,
    "usertoauditid" INTEGER NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "action" VARCHAR(16),
    "modifiedby" INTEGER,
    "modifieddate" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("auditorid", "usertoauditid", "orgunitid", "modifieddate")
);

-- Data set: Award Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#award-objects
CREATE TABLE "award_objects" (
    "awardid" BIGINT NOT NULL,
    "name" VARCHAR(256),
    "awardtypeid" INTEGER,
    "type" VARCHAR(128),
    "description" VARCHAR(512),
    "expirycalculationtype" VARCHAR(128),
    "expirynotificationtype" VARCHAR(128),
    "expirydate" TIMESTAMP(6),
    "imagepath" VARCHAR(1000),
    "createdbyuserid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "criteria" VARCHAR(1000),
    PRIMARY KEY ("awardid")
);

-- Data set: Award Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#award-objects
CREATE TABLE "award_objects_load" (
    "awardid" BIGINT NOT NULL,
    "name" VARCHAR(256),
    "awardtypeid" INTEGER,
    "type" VARCHAR(128),
    "description" VARCHAR(512),
    "expirycalculationtype" VARCHAR(128),
    "expirynotificationtype" VARCHAR(128),
    "expirydate" TIMESTAMP(6),
    "imagepath" VARCHAR(1000),
    "createdbyuserid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "criteria" VARCHAR(1000),
    PRIMARY KEY ("awardid")
);

-- Data set: Awards Issued
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#awards-issued
CREATE TABLE "awards_issued" (
    "awardid" BIGINT,
    "orgunitid" BIGINT,
    "userid" BIGINT,
    "issuedby" INTEGER,
    "issuedate" TIMESTAMP(6),
    "expirydate" TIMESTAMP(6),
    "issuedid" BIGINT NOT NULL,
    "criteria" VARCHAR(1000),
    "evidence" VARCHAR(1000),
    "revokeddate" TIMESTAMP(6),
    "revokedreason" VARCHAR(1000),
    "revokedby" BIGINT,
    "lastmodifiedby" BIGINT,
    "lastmodifieddate" TIMESTAMP(6),
    "version" BIGINT,
    "certificateid" VARCHAR(12),
    PRIMARY KEY ("issuedid")
);
CREATE INDEX "ix_awards_issued_awardid" ON "awards_issued" ("awardid");
CREATE INDEX "ix_awards_issued_orgunitid" ON "awards_issued" ("orgunitid");
CREATE INDEX "ix_awards_issued_userid" ON "awards_issued" ("userid");
CREATE INDEX "ix_awards_issued_issuedby" ON "awards_issued" ("issuedby");
CREATE INDEX "ix_awards_issued_revokedby" ON "awards_issued" ("revokedby");
CREATE INDEX "ix_awards_issued_lastmodifiedby" ON "awards_issued" ("lastmodifiedby");

-- Data set: Awards Issued (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#awards-issued
CREATE TABLE "awards_issued_load" (
    "awardid" BIGINT,
    "orgunitid" BIGINT,
    "userid" BIGINT,
    "issuedby" INTEGER,
    "issuedate" TIMESTAMP(6),
    "expirydate" TIMESTAMP(6),
    "issuedid" BIGINT NOT NULL,
    "criteria" VARCHAR(1000),
    "evidence" VARCHAR(1000),
    "revokeddate" TIMESTAMP(6),
    "revokedreason" VARCHAR(1000),
    "revokedby" BIGINT,
    "lastmodifiedby" BIGINT,
    "lastmodifieddate" TIMESTAMP(6),
    "version" BIGINT,
    "certificateid" VARCHAR(12),
    PRIMARY KEY ("issuedid")
);

-- Data set: Brightspace App Deployments
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-deployments
CREATE TABLE "brightspace_app_deployments" (
    "deploymentid" BIGINT NOT NULL,
    "appid" BIGINT,
    "deploymentname" VARCHAR(256),
    "enabled" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastupdateddate" TIMESTAMP(6),
    "lastupdatedby" INTEGER,
    "ouavailabilitysetid" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("deploymentid")
);
CREATE INDEX "ix_brightspace_app_deployments_appid" ON "brightspace_app_deployments" ("appid");
CREATE INDEX "ix_brightspace_app_deployments_createdby" ON "brightspace_app_deployments" ("createdby");
CREATE INDEX "ix_brightspace_app_deployments_lastupdatedby" ON "brightspace_app_deployments" ("lastupdatedby");

-- Data set: Brightspace App Deployments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-deployments
CREATE TABLE "brightspace_app_deployments_load" (
    "deploymentid" BIGINT NOT NULL,
    "appid" BIGINT,
    "deploymentname" VARCHAR(256),
    "enabled" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastupdateddate" TIMESTAMP(6),
    "lastupdatedby" INTEGER,
    "ouavailabilitysetid" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("deploymentid")
);

-- Data set: Brightspace App Details
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-details
CREATE TABLE "brightspace_app_details" (
    "appid" BIGINT NOT NULL,
    "globalid" UUID,
    "name" VARCHAR(200),
    "islocal" BOOLEAN,
    "state" INTEGER,
    "installedversion" VARCHAR(100),
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastpublisheddate" TIMESTAMP(6),
    "lastpublishedby" INTEGER,
    "lastupdateddate" TIMESTAMP(6),
    "lastupdatedby" INTEGER,
    "categories" VARCHAR(500),
    "orgid" INTEGER,
    "defaultdeploymentid" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("appid")
);
CREATE INDEX "ix_brightspace_app_details_createdby" ON "brightspace_app_details" ("createdby");
CREATE INDEX "ix_brightspace_app_details_lastpublishedby" ON "brightspace_app_details" ("lastpublishedby");
CREATE INDEX "ix_brightspace_app_details_lastupdatedby" ON "brightspace_app_details" ("lastupdatedby");
CREATE INDEX "ix_brightspace_app_details_orgid" ON "brightspace_app_details" ("orgid");
CREATE INDEX "ix_brightspace_app_details_defaultdeploymentid" ON "brightspace_app_details" ("defaultdeploymentid");

-- Data set: Brightspace App Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/35730-brightspace-apps-data-sets#brightspace-app-details
CREATE TABLE "brightspace_app_details_load" (
    "appid" BIGINT NOT NULL,
    "globalid" UUID,
    "name" VARCHAR(200),
    "islocal" BOOLEAN,
    "state" INTEGER,
    "installedversion" VARCHAR(100),
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastpublisheddate" TIMESTAMP(6),
    "lastpublishedby" INTEGER,
    "lastupdateddate" TIMESTAMP(6),
    "lastupdatedby" INTEGER,
    "categories" VARCHAR(500),
    "orgid" INTEGER,
    "defaultdeploymentid" BIGINT,
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("appid")
);

-- Data set: Brightspace Email Log
-- Source: https://community.d2l.com/brightspace/kb/articles/34145-email-data-sets#brightspace-email-log
CREATE TABLE "brightspace_email_log" (
    "mailid" INTEGER NOT NULL,
    "senderuserid" INTEGER,
    "senderaddress" VARCHAR(256),
    "recipientaddress" VARCHAR(256) NOT NULL,
    "recipienttype" VARCHAR(4) NOT NULL,
    "datetimesent" TIMESTAMP(6),
    "subject" VARCHAR(1000),
    PRIMARY KEY ("mailid", "recipientaddress", "recipienttype")
);
CREATE INDEX "ix_brightspace_email_log_senderuserid" ON "brightspace_email_log" ("senderuserid");

-- Data set: Brightspace Email Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/34145-email-data-sets#brightspace-email-log
CREATE TABLE "brightspace_email_log_load" (
    "mailid" INTEGER NOT NULL,
    "senderuserid" INTEGER,
    "senderaddress" VARCHAR(256),
    "recipientaddress" VARCHAR(256) NOT NULL,
    "recipienttype" VARCHAR(4) NOT NULL,
    "datetimesent" TIMESTAMP(6),
    "subject" VARCHAR(1000),
    PRIMARY KEY ("mailid", "recipientaddress", "recipienttype")
);

-- Data set: CPD Categories
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-categories
CREATE TABLE "cpd_categories" (
    "categoryid" INTEGER NOT NULL,
    "name" VARCHAR(256),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("categoryid")
);

-- Data set: CPD Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-categories
CREATE TABLE "cpd_categories_load" (
    "categoryid" INTEGER NOT NULL,
    "name" VARCHAR(256),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("categoryid")
);

-- Data set: CPD Job Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-job-targets
CREATE TABLE "cpd_job_targets" (
    "principalid" INTEGER NOT NULL,
    "categoryid" INTEGER NOT NULL,
    "jobtitle" VARCHAR(256),
    "structuredminutes" INTEGER,
    "unstructuredminutes" INTEGER,
    "structuredrecordcount" INTEGER,
    "unstructuredrecordcount" INTEGER,
    "startdate" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("principalid", "categoryid")
);
CREATE INDEX "ix_cpd_job_targets_categoryid" ON "cpd_job_targets" ("categoryid");

-- Data set: CPD Job Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-job-targets
CREATE TABLE "cpd_job_targets_load" (
    "principalid" INTEGER NOT NULL,
    "categoryid" INTEGER NOT NULL,
    "jobtitle" VARCHAR(256),
    "structuredminutes" INTEGER,
    "unstructuredminutes" INTEGER,
    "structuredrecordcount" INTEGER,
    "unstructuredrecordcount" INTEGER,
    "startdate" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("principalid", "categoryid")
);

-- Data set: CPD Methods
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-methods
CREATE TABLE "cpd_methods" (
    "methodid" INTEGER NOT NULL,
    "name" VARCHAR(4000),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("methodid")
);

-- Data set: CPD Methods (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-methods
CREATE TABLE "cpd_methods_load" (
    "methodid" INTEGER NOT NULL,
    "name" VARCHAR(4000),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("methodid")
);

-- Data set: CPD Question Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-question-answers
CREATE TABLE "cpd_question_answers" (
    "answerid" INTEGER NOT NULL,
    "answertext" VARCHAR(4000),
    "questionid" INTEGER,
    "recordid" INTEGER,
    "userid" INTEGER,
    "action" VARCHAR(16),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("answerid")
);
CREATE INDEX "ix_cpd_question_answers_questionid" ON "cpd_question_answers" ("questionid");
CREATE INDEX "ix_cpd_question_answers_recordid" ON "cpd_question_answers" ("recordid");
CREATE INDEX "ix_cpd_question_answers_userid" ON "cpd_question_answers" ("userid");

-- Data set: CPD Question Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-question-answers
CREATE TABLE "cpd_question_answers_load" (
    "answerid" INTEGER NOT NULL,
    "answertext" VARCHAR(4000),
    "questionid" INTEGER,
    "recordid" INTEGER,
    "userid" INTEGER,
    "action" VARCHAR(16),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("answerid")
);

-- Data set: CPD Questions
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-questions
CREATE TABLE "cpd_questions" (
    "questionid" INTEGER NOT NULL,
    "questiontext" VARCHAR(4000),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("questionid")
);

-- Data set: CPD Questions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-questions
CREATE TABLE "cpd_questions_load" (
    "questionid" INTEGER NOT NULL,
    "questiontext" VARCHAR(4000),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("questionid")
);

-- Data set: CPD User Records
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-records
CREATE TABLE "cpd_user_records" (
    "recordid" INTEGER NOT NULL,
    "recordname" VARCHAR(256),
    "state" VARCHAR(50),
    "userid" BIGINT,
    "category" BIGINT,
    "method" BIGINT,
    "creditminutes" BIGINT,
    "evidence" VARCHAR(4000),
    "type" VARCHAR(50),
    "grade" NUMERIC(4,3),
    "datecompleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("recordid")
);
CREATE INDEX "ix_cpd_user_records_userid" ON "cpd_user_records" ("userid");
CREATE INDEX "ix_cpd_user_records_category" ON "cpd_user_records" ("category");
CREATE INDEX "ix_cpd_user_records_method" ON "cpd_user_records" ("method");

-- Data set: CPD User Records (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-records
CREATE TABLE "cpd_user_records_load" (
    "recordid" INTEGER NOT NULL,
    "recordname" VARCHAR(256),
    "state" VARCHAR(50),
    "userid" BIGINT,
    "category" BIGINT,
    "method" BIGINT,
    "creditminutes" BIGINT,
    "evidence" VARCHAR(4000),
    "type" VARCHAR(50),
    "grade" NUMERIC(4,3),
    "datecompleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("recordid")
);

-- Data set: CPD User Targets
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-targets
CREATE TABLE "cpd_user_targets" (
    "principalid" INTEGER NOT NULL,
    "categoryid" INTEGER NOT NULL,
    "userid" INTEGER,
    "structuredminutes" INTEGER,
    "unstructuredminutes" INTEGER,
    "structuredrecordcount" INTEGER,
    "unstructuredrecordcount" INTEGER,
    "startdate" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("principalid", "categoryid")
);
CREATE INDEX "ix_cpd_user_targets_categoryid" ON "cpd_user_targets" ("categoryid");
CREATE INDEX "ix_cpd_user_targets_userid" ON "cpd_user_targets" ("userid");

-- Data set: CPD User Targets (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26020-continuous-professional-development-cpd-data-sets#cpd-user-targets
CREATE TABLE "cpd_user_targets_load" (
    "principalid" INTEGER NOT NULL,
    "categoryid" INTEGER NOT NULL,
    "userid" INTEGER,
    "structuredminutes" INTEGER,
    "unstructuredminutes" INTEGER,
    "structuredrecordcount" INTEGER,
    "unstructuredrecordcount" INTEGER,
    "startdate" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("principalid", "categoryid")
);

-- Data set: Calendar Events
-- Source: https://community.d2l.com/brightspace/kb/articles/4521-calendar-data-sets#calendar-events
CREATE TABLE "calendar_events" (
    "scheduleid" BIGINT NOT NULL,
    "orgunitid" BIGINT,
    "userid" BIGINT,
    "title" VARCHAR(256),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "timezoneidentifier" VARCHAR(256),
    "isalldayevent" BOOLEAN,
    "recurrencetype" VARCHAR(7),
    "recurrenceinterval" INTEGER,
    "createdbyuserid" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "eventobjecttypename" VARCHAR(200),
    "objectlookupid1" BIGINT,
    "objectlookupid2" BIGINT,
    PRIMARY KEY ("scheduleid")
);
CREATE INDEX "ix_calendar_events_orgunitid" ON "calendar_events" ("orgunitid");
CREATE INDEX "ix_calendar_events_userid" ON "calendar_events" ("userid");
CREATE INDEX "ix_calendar_events_createdbyuserid" ON "calendar_events" ("createdbyuserid");

-- Data set: Calendar Events (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4521-calendar-data-sets#calendar-events
CREATE TABLE "calendar_events_load" (
    "scheduleid" BIGINT NOT NULL,
    "orgunitid" BIGINT,
    "userid" BIGINT,
    "title" VARCHAR(256),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "timezoneidentifier" VARCHAR(256),
    "isalldayevent" BOOLEAN,
    "recurrencetype" VARCHAR(7),
    "recurrenceinterval" INTEGER,
    "createdbyuserid" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "eventobjecttypename" VARCHAR(200),
    "objectlookupid1" BIGINT,
    "objectlookupid2" BIGINT,
    PRIMARY KEY ("scheduleid")
);

-- Data set: Checklist Category Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-category-details
CREATE TABLE "checklist_category_details" (
    "categoryid" BIGINT NOT NULL,
    "checklistid" BIGINT,
    "name" VARCHAR(512),
    "description" VARCHAR(1000),
    "descriptionishtml" BOOLEAN,
    "sortorder" INTEGER,
    "lastmodifiedutc" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("categoryid")
);
CREATE INDEX "ix_checklist_category_details_checklistid" ON "checklist_category_details" ("checklistid");
CREATE INDEX "ix_checklist_category_details_deletedby" ON "checklist_category_details" ("deletedby");

-- Data set: Checklist Category Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-category-details
CREATE TABLE "checklist_category_details_load" (
    "categoryid" BIGINT NOT NULL,
    "checklistid" BIGINT,
    "name" VARCHAR(512),
    "description" VARCHAR(1000),
    "descriptionishtml" BOOLEAN,
    "sortorder" INTEGER,
    "lastmodifiedutc" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("categoryid")
);

-- Data set: Checklist Completions
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-completions
CREATE TABLE "checklist_completions" (
    "userid" INTEGER NOT NULL,
    "datecompleted" TIMESTAMP(6),
    "itemid" BIGINT NOT NULL,
    "lastmodified" TIMESTAMP(6),
    "iscompleted" BOOLEAN,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("userid", "itemid")
);
CREATE INDEX "ix_checklist_completions_itemid" ON "checklist_completions" ("itemid");
CREATE INDEX "ix_checklist_completions_deletedby" ON "checklist_completions" ("deletedby");

-- Data set: Checklist Completions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-completions
CREATE TABLE "checklist_completions_load" (
    "userid" INTEGER NOT NULL,
    "datecompleted" TIMESTAMP(6),
    "itemid" BIGINT NOT NULL,
    "lastmodified" TIMESTAMP(6),
    "iscompleted" BOOLEAN,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("userid", "itemid")
);

-- Data set: Checklist Item Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-item-details
CREATE TABLE "checklist_item_details" (
    "itemid" BIGINT NOT NULL,
    "categoryid" BIGINT,
    "name" VARCHAR(512),
    "description" VARCHAR(1000),
    "descriptionishtml" BOOLEAN,
    "duedate" TIMESTAMP(6),
    "scheduleid" INTEGER,
    "sortorder" INTEGER,
    "isautochecked" BOOLEAN,
    "lastmodifiedutc" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("itemid")
);
CREATE INDEX "ix_checklist_item_details_categoryid" ON "checklist_item_details" ("categoryid");
CREATE INDEX "ix_checklist_item_details_scheduleid" ON "checklist_item_details" ("scheduleid");
CREATE INDEX "ix_checklist_item_details_deletedby" ON "checklist_item_details" ("deletedby");

-- Data set: Checklist Item Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-item-details
CREATE TABLE "checklist_item_details_load" (
    "itemid" BIGINT NOT NULL,
    "categoryid" BIGINT,
    "name" VARCHAR(512),
    "description" VARCHAR(1000),
    "descriptionishtml" BOOLEAN,
    "duedate" TIMESTAMP(6),
    "scheduleid" INTEGER,
    "sortorder" INTEGER,
    "isautochecked" BOOLEAN,
    "lastmodifiedutc" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("itemid")
);

-- Data set: Checklist Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-objects
CREATE TABLE "checklist_objects" (
    "checklistid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(512),
    "description" VARCHAR(1000),
    "descriptionishtml" BOOLEAN,
    "shareduserid" INTEGER,
    "displayinnewwindow" BOOLEAN,
    "sortorder" INTEGER,
    "version" BIGINT,
    "resultid" INTEGER,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("checklistid")
);
CREATE INDEX "ix_checklist_objects_orgunitid" ON "checklist_objects" ("orgunitid");
CREATE INDEX "ix_checklist_objects_shareduserid" ON "checklist_objects" ("shareduserid");
CREATE INDEX "ix_checklist_objects_resultid" ON "checklist_objects" ("resultid");
CREATE INDEX "ix_checklist_objects_deletedby" ON "checklist_objects" ("deletedby");

-- Data set: Checklist Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4523-checklist-data-sets#checklist-objects
CREATE TABLE "checklist_objects_load" (
    "checklistid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(512),
    "description" VARCHAR(1000),
    "descriptionishtml" BOOLEAN,
    "shareduserid" INTEGER,
    "displayinnewwindow" BOOLEAN,
    "sortorder" INTEGER,
    "version" BIGINT,
    "resultid" INTEGER,
    "datedeleted" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("checklistid")
);

-- Data set: Competency Activities
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activities
CREATE TABLE "competency_activities" (
    "activityid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "activityname" VARCHAR(256),
    "activitytypeid" INTEGER,
    "assessmenttype" VARCHAR(7),
    "objectlookupid" BIGINT,
    "rubricid" BIGINT,
    "levelid" BIGINT,
    "rubriccriterionid" BIGINT,
    "assessmentthresholdcriteria" VARCHAR(2),
    "assessmentthreshold" NUMERIC(19,9),
    "isautoeval" BOOLEAN,
    "rubricname" VARCHAR(256),
    "rubriclevelrequired" VARCHAR(256),
    "objectid" BIGINT,
    "activitytype" VARCHAR(50),
    "version" BIGINT,
    PRIMARY KEY ("activityid")
);
CREATE INDEX "ix_competency_activities_orgunitid" ON "competency_activities" ("orgunitid");
CREATE INDEX "ix_competency_activities_objectid" ON "competency_activities" ("objectid");

-- Data set: Competency Activities (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activities
CREATE TABLE "competency_activities_load" (
    "activityid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "activityname" VARCHAR(256),
    "activitytypeid" INTEGER,
    "assessmenttype" VARCHAR(7),
    "objectlookupid" BIGINT,
    "rubricid" BIGINT,
    "levelid" BIGINT,
    "rubriccriterionid" BIGINT,
    "assessmentthresholdcriteria" VARCHAR(2),
    "assessmentthreshold" NUMERIC(19,9),
    "isautoeval" BOOLEAN,
    "rubricname" VARCHAR(256),
    "rubriclevelrequired" VARCHAR(256),
    "objectid" BIGINT,
    "activitytype" VARCHAR(50),
    "version" BIGINT,
    PRIMARY KEY ("activityid")
);

-- Data set: Competency Activity Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-log
CREATE TABLE "competency_activity_log" (
    "activityid" BIGINT NOT NULL,
    "activitylogid" BIGINT NOT NULL,
    "logtypeid" INTEGER,
    "logtypename" VARCHAR(19),
    "logdatetime" TIMESTAMP(6),
    "modifiedby" BIGINT,
    PRIMARY KEY ("activityid", "activitylogid")
);
CREATE INDEX "ix_competency_activity_log_modifiedby" ON "competency_activity_log" ("modifiedby");

-- Data set: Competency Activity Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-log
CREATE TABLE "competency_activity_log_load" (
    "activityid" BIGINT NOT NULL,
    "activitylogid" BIGINT NOT NULL,
    "logtypeid" INTEGER,
    "logtypename" VARCHAR(19),
    "logdatetime" TIMESTAMP(6),
    "modifiedby" BIGINT,
    PRIMARY KEY ("activityid", "activitylogid")
);

-- Data set: Competency Activity Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-results
CREATE TABLE "competency_activity_results" (
    "activityid" BIGINT NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "learningobjectid" BIGINT NOT NULL,
    "isachieved" BOOLEAN,
    "percentachieved" NUMERIC(19,9),
    "rubricscore" NUMERIC(19,9),
    "rubriclevelachieved" VARCHAR(256),
    "rubricid" BIGINT,
    "rubriccriterionid" BIGINT,
    "achieveddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("activityid", "orgunitid", "userid", "learningobjectid")
);
CREATE INDEX "ix_competency_activity_results_orgunitid" ON "competency_activity_results" ("orgunitid");
CREATE INDEX "ix_competency_activity_results_userid" ON "competency_activity_results" ("userid");
CREATE INDEX "ix_competency_activity_results_learningobjectid" ON "competency_activity_results" ("learningobjectid");

-- Data set: Competency Activity Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-activity-results
CREATE TABLE "competency_activity_results_load" (
    "activityid" BIGINT NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "learningobjectid" BIGINT NOT NULL,
    "isachieved" BOOLEAN,
    "percentachieved" NUMERIC(19,9),
    "rubricscore" NUMERIC(19,9),
    "rubriclevelachieved" VARCHAR(256),
    "rubricid" BIGINT,
    "rubriccriterionid" BIGINT,
    "achieveddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("activityid", "orgunitid", "userid", "learningobjectid")
);

-- Data set: Competency Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-log
CREATE TABLE "competency_log" (
    "competencylogid" BIGINT NOT NULL,
    "logtypeid" INTEGER,
    "logtypename" VARCHAR(19),
    "objectid" BIGINT,
    "objecttypeid" INTEGER,
    "objecttypename" VARCHAR(18),
    "objectversion" INTEGER,
    "logdatetime" TIMESTAMP(6),
    "modifiedby" BIGINT,
    "indirectobjectid" BIGINT,
    "indirectobjecttypename" VARCHAR(18),
    "indirectobjecttypeid" INTEGER,
    "indirectobjectversion" INTEGER,
    PRIMARY KEY ("competencylogid")
);
CREATE INDEX "ix_competency_log_objectid" ON "competency_log" ("objectid");
CREATE INDEX "ix_competency_log_modifiedby" ON "competency_log" ("modifiedby");

-- Data set: Competency Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-log
CREATE TABLE "competency_log_load" (
    "competencylogid" BIGINT NOT NULL,
    "logtypeid" INTEGER,
    "logtypename" VARCHAR(19),
    "objectid" BIGINT,
    "objecttypeid" INTEGER,
    "objecttypename" VARCHAR(18),
    "objectversion" INTEGER,
    "logdatetime" TIMESTAMP(6),
    "modifiedby" BIGINT,
    "indirectobjectid" BIGINT,
    "indirectobjecttypename" VARCHAR(18),
    "indirectobjecttypeid" INTEGER,
    "indirectobjectversion" INTEGER,
    PRIMARY KEY ("competencylogid")
);

-- Data set: Competency Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-objects
CREATE TABLE "competency_objects" (
    "objectid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(256),
    "type" VARCHAR(256),
    "readyforevaluation" BOOLEAN,
    "status" VARCHAR(9),
    "description" VARCHAR(1000),
    "needreevaluation" BOOLEAN,
    "reevaluationifachieved" BOOLEAN,
    "reevaluationifnotachieved" BOOLEAN,
    "additionalidentifier" VARCHAR(512),
    "ishidden" BOOLEAN,
    PRIMARY KEY ("objectid")
);
CREATE INDEX "ix_competency_objects_orgunitid" ON "competency_objects" ("orgunitid");

-- Data set: Competency Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-objects
CREATE TABLE "competency_objects_load" (
    "objectid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(256),
    "type" VARCHAR(256),
    "readyforevaluation" BOOLEAN,
    "status" VARCHAR(9),
    "description" VARCHAR(1000),
    "needreevaluation" BOOLEAN,
    "reevaluationifachieved" BOOLEAN,
    "reevaluationifnotachieved" BOOLEAN,
    "additionalidentifier" VARCHAR(512),
    "ishidden" BOOLEAN,
    PRIMARY KEY ("objectid")
);

-- Data set: Competency Structure
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-structure
CREATE TABLE "competency_structure" (
    "objectid" BIGINT NOT NULL,
    "parentobjectid" BIGINT NOT NULL,
    "baseobjectid" BIGINT NOT NULL,
    "depth" INTEGER,
    "entrytime" INTEGER NOT NULL,
    PRIMARY KEY ("objectid", "parentobjectid", "baseobjectid", "entrytime")
);
CREATE INDEX "ix_competency_structure_parentobjectid" ON "competency_structure" ("parentobjectid");
CREATE INDEX "ix_competency_structure_baseobjectid" ON "competency_structure" ("baseobjectid");

-- Data set: Competency Structure (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4754-competency-data-sets#competency-structure
CREATE TABLE "competency_structure_load" (
    "objectid" BIGINT NOT NULL,
    "parentobjectid" BIGINT NOT NULL,
    "baseobjectid" BIGINT NOT NULL,
    "depth" INTEGER,
    "entrytime" INTEGER NOT NULL,
    PRIMARY KEY ("objectid", "parentobjectid", "baseobjectid", "entrytime")
);

-- Data set: Content Files Properties Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-files-properties-log
CREATE TABLE "content_files_properties_log" (
    "orgunitid" INTEGER NOT NULL,
    "contentobjectid" INTEGER NOT NULL,
    "action" VARCHAR(10),
    "filepath" VARCHAR(10000),
    "filename" VARCHAR(512),
    "fileextension" VARCHAR(512),
    "filesizebytes" BIGINT,
    "uploaddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("orgunitid", "contentobjectid", "lastmodified")
);
CREATE INDEX "ix_content_files_properties_log_contentobjectid" ON "content_files_properties_log" ("contentobjectid");
CREATE INDEX "ix_content_files_properties_log_lastmodifiedby" ON "content_files_properties_log" ("lastmodifiedby");

-- Data set: Content Files Properties Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-files-properties-log
CREATE TABLE "content_files_properties_log_load" (
    "orgunitid" INTEGER NOT NULL,
    "contentobjectid" INTEGER NOT NULL,
    "action" VARCHAR(10),
    "filepath" VARCHAR(10000),
    "filename" VARCHAR(512),
    "fileextension" VARCHAR(512),
    "filesizebytes" BIGINT,
    "uploaddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "lastmodified" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("orgunitid", "contentobjectid", "lastmodified")
);

-- Data set: Content Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-objects
CREATE TABLE "content_objects" (
    "contentobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "title" VARCHAR(150),
    "contentobjecttype" VARCHAR(6),
    "completiontype" VARCHAR(7),
    "parentcontentobjectid" INTEGER,
    "location" VARCHAR(1024),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "duedate" TIMESTAMP(6),
    "objectid1" INTEGER,
    "objectid2" INTEGER,
    "objectid3" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "sortorder" INTEGER,
    "depth" INTEGER,
    "toolid" INTEGER,
    "ishidden" BOOLEAN,
    "resultid" INTEGER,
    "deleteddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifiedby" INTEGER,
    "deletedby" INTEGER,
    "aiutilization" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("contentobjectid")
);
CREATE INDEX "ix_content_objects_orgunitid" ON "content_objects" ("orgunitid");
CREATE INDEX "ix_content_objects_toolid" ON "content_objects" ("toolid");

-- Data set: Content Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-objects
CREATE TABLE "content_objects_load" (
    "contentobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "title" VARCHAR(150),
    "contentobjecttype" VARCHAR(6),
    "completiontype" VARCHAR(7),
    "parentcontentobjectid" INTEGER,
    "location" VARCHAR(1024),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "duedate" TIMESTAMP(6),
    "objectid1" INTEGER,
    "objectid2" INTEGER,
    "objectid3" INTEGER,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "sortorder" INTEGER,
    "depth" INTEGER,
    "toolid" INTEGER,
    "ishidden" BOOLEAN,
    "resultid" INTEGER,
    "deleteddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifiedby" INTEGER,
    "deletedby" INTEGER,
    "aiutilization" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("contentobjectid")
);

-- Data set: Content User Completion
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-completion
CREATE TABLE "content_user_completion" (
    "contentobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "userid" INTEGER NOT NULL,
    "datecompleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "automaticdatecompleted" TIMESTAMP(6),
    "manualdatecompleted" TIMESTAMP(6),
    PRIMARY KEY ("contentobjectid", "userid")
);
CREATE INDEX "ix_content_user_completion_orgunitid" ON "content_user_completion" ("orgunitid");
CREATE INDEX "ix_content_user_completion_userid" ON "content_user_completion" ("userid");

-- Data set: Content User Completion (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-completion
CREATE TABLE "content_user_completion_load" (
    "contentobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "userid" INTEGER NOT NULL,
    "datecompleted" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "automaticdatecompleted" TIMESTAMP(6),
    "manualdatecompleted" TIMESTAMP(6),
    PRIMARY KEY ("contentobjectid", "userid")
);

-- Data set: Content User Progress
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-progress
CREATE TABLE "content_user_progress" (
    "contentobjectid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "completeddate" TIMESTAMP(6),
    "lastvisited" TIMESTAMP(6),
    "isread" BOOLEAN,
    "numrealvisits" INTEGER,
    "numfakevisits" INTEGER,
    "totaltime" BIGINT,
    "isvisited" BOOLEAN,
    "iscurrentbookmark" BOOLEAN,
    "isselfassesscomplete" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("contentobjectid", "userid")
);
CREATE INDEX "ix_content_user_progress_userid" ON "content_user_progress" ("userid");

-- Data set: Content User Progress (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4713-content-data-sets#content-user-progress
CREATE TABLE "content_user_progress_load" (
    "contentobjectid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "completeddate" TIMESTAMP(6),
    "lastvisited" TIMESTAMP(6),
    "isread" BOOLEAN,
    "numrealvisits" INTEGER,
    "numfakevisits" INTEGER,
    "totaltime" BIGINT,
    "isvisited" BOOLEAN,
    "iscurrentbookmark" BOOLEAN,
    "isselfassesscomplete" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("contentobjectid", "userid")
);

-- Data set: Course Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access
CREATE TABLE "course_access" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "dayaccessed" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("orgunitid", "userid", "dayaccessed")
);
CREATE INDEX "ix_course_access_userid" ON "course_access" ("userid");

-- Data set: Course Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access
CREATE TABLE "course_access_load" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "dayaccessed" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("orgunitid", "userid", "dayaccessed")
);

-- Data set: Course Access Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access-log
CREATE TABLE "course_access_log" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "source" VARCHAR(20) NOT NULL,
    PRIMARY KEY ("orgunitid", "userid", "timestamp", "source")
);
CREATE INDEX "ix_course_access_log_userid" ON "course_access_log" ("userid");

-- Data set: Course Access Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#course-access-log
CREATE TABLE "course_access_log_load" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "source" VARCHAR(20) NOT NULL,
    PRIMARY KEY ("orgunitid", "userid", "timestamp", "source")
);

-- Data set: Course Awards
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#course-awards
CREATE TABLE "course_awards" (
    "associationid" BIGINT NOT NULL,
    "awardid" BIGINT,
    "orgunitid" BIGINT,
    "datecreated" TIMESTAMP(6),
    "hiddenaward" BOOLEAN,
    "conditionsetid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "credits" NUMERIC(9,2),
    "isassociated" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("associationid")
);
CREATE INDEX "ix_course_awards_awardid" ON "course_awards" ("awardid");
CREATE INDEX "ix_course_awards_orgunitid" ON "course_awards" ("orgunitid");

-- Data set: Course Awards (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4520-awards-data-sets#course-awards
CREATE TABLE "course_awards_load" (
    "associationid" BIGINT NOT NULL,
    "awardid" BIGINT,
    "orgunitid" BIGINT,
    "datecreated" TIMESTAMP(6),
    "hiddenaward" BOOLEAN,
    "conditionsetid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "credits" NUMERIC(9,2),
    "isassociated" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("associationid")
);

-- Data set: Course Copy Logs
-- Source: https://community.d2l.com/brightspace/kb/articles/4725-course-copy-data-sets#course-copy-logs
CREATE TABLE "course_copy_logs" (
    "sourceorgunitid" INTEGER,
    "destinationorgunitid" INTEGER,
    "userid" BIGINT,
    "status" VARCHAR(128),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isdestinationnew" BOOLEAN,
    "copyprotectedresources" BOOLEAN,
    "copycoursejobid" BIGINT NOT NULL,
    "statusid" INTEGER,
    PRIMARY KEY ("copycoursejobid")
);
CREATE INDEX "ix_course_copy_logs_sourceorgunitid" ON "course_copy_logs" ("sourceorgunitid");
CREATE INDEX "ix_course_copy_logs_destinationorgunitid" ON "course_copy_logs" ("destinationorgunitid");
CREATE INDEX "ix_course_copy_logs_userid" ON "course_copy_logs" ("userid");

-- Data set: Course Copy Logs (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4725-course-copy-data-sets#course-copy-logs
CREATE TABLE "course_copy_logs_load" (
    "sourceorgunitid" INTEGER,
    "destinationorgunitid" INTEGER,
    "userid" BIGINT,
    "status" VARCHAR(128),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isdestinationnew" BOOLEAN,
    "copyprotectedresources" BOOLEAN,
    "copycoursejobid" BIGINT NOT NULL,
    "statusid" INTEGER,
    PRIMARY KEY ("copycoursejobid")
);

-- Data set: Course Publisher Launches
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-launches
CREATE TABLE "course_publisher_launches" (
    "launchid" UUID NOT NULL,
    "orgunitid" BIGINT,
    "recipientid" UUID,
    "userid" BIGINT,
    "roleid" BIGINT,
    "launchmethod" VARCHAR(256),
    "externaluserid" VARCHAR(256),
    "externallmstype" VARCHAR(256),
    "isnewuser" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("launchid")
);
CREATE INDEX "ix_course_publisher_launches_orgunitid" ON "course_publisher_launches" ("orgunitid");
CREATE INDEX "ix_course_publisher_launches_recipientid" ON "course_publisher_launches" ("recipientid");
CREATE INDEX "ix_course_publisher_launches_userid" ON "course_publisher_launches" ("userid");
CREATE INDEX "ix_course_publisher_launches_roleid" ON "course_publisher_launches" ("roleid");

-- Data set: Course Publisher Launches (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-launches
CREATE TABLE "course_publisher_launches_load" (
    "launchid" UUID NOT NULL,
    "orgunitid" BIGINT,
    "recipientid" UUID,
    "userid" BIGINT,
    "roleid" BIGINT,
    "launchmethod" VARCHAR(256),
    "externaluserid" VARCHAR(256),
    "externallmstype" VARCHAR(256),
    "isnewuser" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("launchid")
);

-- Data set: Course Publisher Recipients
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-recipients
CREATE TABLE "course_publisher_recipients" (
    "recipientid" UUID NOT NULL,
    "name" VARCHAR(256),
    "createdat" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("recipientid")
);

-- Data set: Course Publisher Recipients (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4524-course-publisher-data-sets#course-publisher-recipients
CREATE TABLE "course_publisher_recipients_load" (
    "recipientid" UUID NOT NULL,
    "name" VARCHAR(256),
    "createdat" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("recipientid")
);

-- Data set: Creator+ Practices Adoption
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-adoption
CREATE TABLE "creator_practices_adoption" (
    "activityinstanceid" INTEGER NOT NULL,
    "createdbyid" INTEGER,
    "orgunitid" INTEGER,
    "practicetype" VARCHAR(32),
    "practicetitle" VARCHAR(255),
    "providerobjectid" INTEGER,
    "createddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("activityinstanceid")
);
CREATE INDEX "ix_creator_practices_adoption_createdbyid" ON "creator_practices_adoption" ("createdbyid");
CREATE INDEX "ix_creator_practices_adoption_orgunitid" ON "creator_practices_adoption" ("orgunitid");

-- Data set: Creator+ Practices Adoption (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-adoption
CREATE TABLE "creator_practices_adoption_load" (
    "activityinstanceid" INTEGER NOT NULL,
    "createdbyid" INTEGER,
    "orgunitid" INTEGER,
    "practicetype" VARCHAR(32),
    "practicetitle" VARCHAR(255),
    "providerobjectid" INTEGER,
    "createddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("activityinstanceid")
);

-- Data set: Creator+ Practices Engagement
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-engagement
CREATE TABLE "creator_practices_engagement" (
    "practiceengagementid" INTEGER NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "completionstatus" VARCHAR(10),
    "activityinstanceid" INTEGER,
    "completiondate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("practiceengagementid")
);
CREATE INDEX "ix_creator_practices_engagement_userid" ON "creator_practices_engagement" ("userid");
CREATE INDEX "ix_creator_practices_engagement_orgunitid" ON "creator_practices_engagement" ("orgunitid");
CREATE INDEX "ix_creator_practices_engagement_activityinstanceid" ON "creator_practices_engagement" ("activityinstanceid");

-- Data set: Creator+ Practices Engagement (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/26161-creator-data-sets#creator-practices-engagement
CREATE TABLE "creator_practices_engagement_load" (
    "practiceengagementid" INTEGER NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "completionstatus" VARCHAR(10),
    "activityinstanceid" INTEGER,
    "completiondate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("practiceengagementid")
);

-- Data set: Discussion Forums
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-forums
CREATE TABLE "discussion_forums" (
    "orgunitid" INTEGER,
    "forumid" BIGINT NOT NULL,
    "name" VARCHAR(400),
    "description" VARCHAR(1000),
    "mustposttoparticipate" BOOLEAN,
    "allowanon" BOOLEAN,
    "ishidden" BOOLEAN,
    "requiresapproval" BOOLEAN,
    "sortorder" INTEGER,
    "isdeleted" BOOLEAN,
    "deleteddate" TIMESTAMP(6),
    "deletedbyuserid" INTEGER,
    "resultid" INTEGER,
    "startdate" TIMESTAMP(6),
    "startdateavailabilitytype" SMALLINT,
    "enddate" TIMESTAMP(6),
    "enddateavailabilitytype" SMALLINT,
    "version" BIGINT,
    PRIMARY KEY ("forumid")
);
CREATE INDEX "ix_discussion_forums_orgunitid" ON "discussion_forums" ("orgunitid");
CREATE INDEX "ix_discussion_forums_deletedbyuserid" ON "discussion_forums" ("deletedbyuserid");
CREATE INDEX "ix_discussion_forums_resultid" ON "discussion_forums" ("resultid");

-- Data set: Discussion Forums (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-forums
CREATE TABLE "discussion_forums_load" (
    "orgunitid" INTEGER,
    "forumid" BIGINT NOT NULL,
    "name" VARCHAR(400),
    "description" VARCHAR(1000),
    "mustposttoparticipate" BOOLEAN,
    "allowanon" BOOLEAN,
    "ishidden" BOOLEAN,
    "requiresapproval" BOOLEAN,
    "sortorder" INTEGER,
    "isdeleted" BOOLEAN,
    "deleteddate" TIMESTAMP(6),
    "deletedbyuserid" INTEGER,
    "resultid" INTEGER,
    "startdate" TIMESTAMP(6),
    "startdateavailabilitytype" SMALLINT,
    "enddate" TIMESTAMP(6),
    "enddateavailabilitytype" SMALLINT,
    "version" BIGINT,
    PRIMARY KEY ("forumid")
);

-- Data set: Discussion Posts
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts
CREATE TABLE "discussion_posts" (
    "orgunitid" INTEGER,
    "topicid" BIGINT,
    "userid" INTEGER,
    "postid" BIGINT NOT NULL,
    "threadid" BIGINT,
    "isreply" BOOLEAN,
    "parentpostid" BIGINT,
    "numreplies" INTEGER,
    "dateposted" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "ratingsum" BIGINT,
    "numratings" BIGINT,
    "score" NUMERIC(19,9),
    "lasteditdate" TIMESTAMP(6),
    "sortorder" INTEGER,
    "depth" INTEGER,
    "thread" VARCHAR(400),
    "wordcount" INTEGER,
    "attachmentcount" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("postid")
);
CREATE INDEX "ix_discussion_posts_orgunitid" ON "discussion_posts" ("orgunitid");
CREATE INDEX "ix_discussion_posts_topicid" ON "discussion_posts" ("topicid");
CREATE INDEX "ix_discussion_posts_userid" ON "discussion_posts" ("userid");
CREATE INDEX "ix_discussion_posts_parentpostid" ON "discussion_posts" ("parentpostid");

-- Data set: Discussion Posts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts
CREATE TABLE "discussion_posts_load" (
    "orgunitid" INTEGER,
    "topicid" BIGINT,
    "userid" INTEGER,
    "postid" BIGINT NOT NULL,
    "threadid" BIGINT,
    "isreply" BOOLEAN,
    "parentpostid" BIGINT,
    "numreplies" INTEGER,
    "dateposted" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "ratingsum" BIGINT,
    "numratings" BIGINT,
    "score" NUMERIC(19,9),
    "lasteditdate" TIMESTAMP(6),
    "sortorder" INTEGER,
    "depth" INTEGER,
    "thread" VARCHAR(400),
    "wordcount" INTEGER,
    "attachmentcount" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("postid")
);

-- Data set: Discussion Posts Read Status
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts-read-status
CREATE TABLE "discussion_posts_read_status" (
    "topicid" BIGINT,
    "userid" INTEGER NOT NULL,
    "postid" BIGINT NOT NULL,
    "isread" BOOLEAN,
    "firstreaddate" TIMESTAMP(6),
    "lastreaddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("userid", "postid")
);
CREATE INDEX "ix_discussion_posts_read_status_topicid" ON "discussion_posts_read_status" ("topicid");
CREATE INDEX "ix_discussion_posts_read_status_postid" ON "discussion_posts_read_status" ("postid");

-- Data set: Discussion Posts Read Status (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-posts-read-status
CREATE TABLE "discussion_posts_read_status_load" (
    "topicid" BIGINT,
    "userid" INTEGER NOT NULL,
    "postid" BIGINT NOT NULL,
    "isread" BOOLEAN,
    "firstreaddate" TIMESTAMP(6),
    "lastreaddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("userid", "postid")
);

-- Data set: Discussion Topic User Scores
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topic-user-scores
CREATE TABLE "discussion_topic_user_scores" (
    "userid" INTEGER NOT NULL,
    "topicid" BIGINT NOT NULL,
    "score" NUMERIC(19,9),
    "isgraded" BOOLEAN,
    "version" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("userid", "topicid")
);
CREATE INDEX "ix_discussion_topic_user_scores_topicid" ON "discussion_topic_user_scores" ("topicid");

-- Data set: Discussion Topic User Scores (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topic-user-scores
CREATE TABLE "discussion_topic_user_scores_load" (
    "userid" INTEGER NOT NULL,
    "topicid" BIGINT NOT NULL,
    "score" NUMERIC(19,9),
    "isgraded" BOOLEAN,
    "version" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("userid", "topicid")
);

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

-- Data set: Discussion Topics (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4525-discussions-data-sets#discussion-topics
CREATE TABLE "discussion_topics_load" (
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

-- Data set: Enrollments and Withdrawals
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#enrollments-and-withdrawals
CREATE TABLE "enrollments_and_withdrawals" (
    "logid" BIGINT NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "roleid" INTEGER,
    "action" VARCHAR(50),
    "modifiedbyuserid" INTEGER,
    "enrollmentdate" TIMESTAMP(6),
    PRIMARY KEY ("logid")
);
CREATE INDEX "ix_enrollments_and_withdrawals_userid" ON "enrollments_and_withdrawals" ("userid");
CREATE INDEX "ix_enrollments_and_withdrawals_orgunitid" ON "enrollments_and_withdrawals" ("orgunitid");
CREATE INDEX "ix_enrollments_and_withdrawals_roleid" ON "enrollments_and_withdrawals" ("roleid");

-- Data set: Enrollments and Withdrawals (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#enrollments-and-withdrawals
CREATE TABLE "enrollments_and_withdrawals_load" (
    "logid" BIGINT NOT NULL,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "roleid" INTEGER,
    "action" VARCHAR(50),
    "modifiedbyuserid" INTEGER,
    "enrollmentdate" TIMESTAMP(6),
    PRIMARY KEY ("logid")
);

-- Data set: Grade Book Settings
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-book-settings
CREATE TABLE "grade_book_settings" (
    "orgunitid" INTEGER NOT NULL,
    "gradeschemeid" BIGINT NOT NULL,
    "gradingsystem" VARCHAR(8),
    "ungradeditems" VARCHAR(25),
    "isadjustedfinalgradereleased" BOOLEAN,
    "iscalculatedfinalgradereleased" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "gradeschemeid")
);

-- Data set: Grade Book Settings (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-book-settings
CREATE TABLE "grade_book_settings_load" (
    "orgunitid" INTEGER NOT NULL,
    "gradeschemeid" BIGINT NOT NULL,
    "gradingsystem" VARCHAR(8),
    "ungradeditems" VARCHAR(25),
    "isadjustedfinalgradereleased" BOOLEAN,
    "iscalculatedfinalgradereleased" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "gradeschemeid")
);

-- Data set: Grade Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects
CREATE TABLE "grade_objects" (
    "gradeobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "parentgradeobjectid" INTEGER,
    "name" VARCHAR(128),
    "typename" VARCHAR(50),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isautopointed" BOOLEAN,
    "isformula" BOOLEAN,
    "isbonus" BOOLEAN,
    "maxpoints" NUMERIC(19,9),
    "canexceedmaxgrade" BOOLEAN,
    "excludefromfinalgradecalc" BOOLEAN,
    "gradeschemeid" BIGINT,
    "weight" NUMERIC(19,9),
    "numlowestgradestodrop" INTEGER,
    "numhighestgradestodrop" INTEGER,
    "weightdistributiontype" VARCHAR(8),
    "createddate" TIMESTAMP(6),
    "toolname" VARCHAR(50),
    "associatedtoolitemid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "shortname" VARCHAR(128),
    "gradeobjecttypeid" INTEGER,
    "sortorder" INTEGER,
    "isdeleted" BOOLEAN,
    "deleteddate" TIMESTAMP(6),
    "deletedbyuserid" INTEGER,
    "resultid" INTEGER,
    "toolid" INTEGER,
    "version" INTEGER,
    PRIMARY KEY ("gradeobjectid")
);
CREATE INDEX "ix_grade_objects_orgunitid" ON "grade_objects" ("orgunitid");
CREATE INDEX "ix_grade_objects_parentgradeobjectid" ON "grade_objects" ("parentgradeobjectid");
CREATE INDEX "ix_grade_objects_deletedbyuserid" ON "grade_objects" ("deletedbyuserid");
CREATE INDEX "ix_grade_objects_resultid" ON "grade_objects" ("resultid");

-- Data set: Grade Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects
CREATE TABLE "grade_objects_load" (
    "gradeobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "parentgradeobjectid" INTEGER,
    "name" VARCHAR(128),
    "typename" VARCHAR(50),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isautopointed" BOOLEAN,
    "isformula" BOOLEAN,
    "isbonus" BOOLEAN,
    "maxpoints" NUMERIC(19,9),
    "canexceedmaxgrade" BOOLEAN,
    "excludefromfinalgradecalc" BOOLEAN,
    "gradeschemeid" BIGINT,
    "weight" NUMERIC(19,9),
    "numlowestgradestodrop" INTEGER,
    "numhighestgradestodrop" INTEGER,
    "weightdistributiontype" VARCHAR(8),
    "createddate" TIMESTAMP(6),
    "toolname" VARCHAR(50),
    "associatedtoolitemid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "shortname" VARCHAR(128),
    "gradeobjecttypeid" INTEGER,
    "sortorder" INTEGER,
    "isdeleted" BOOLEAN,
    "deleteddate" TIMESTAMP(6),
    "deletedbyuserid" INTEGER,
    "resultid" INTEGER,
    "toolid" INTEGER,
    "version" INTEGER,
    PRIMARY KEY ("gradeobjectid")
);

-- Data set: Grade Objects Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects-log
CREATE TABLE "grade_objects_log" (
    "logid" BIGINT NOT NULL,
    "name" VARCHAR(50),
    "gradeobjectid" INTEGER,
    "userid" INTEGER,
    "gradesymbolstring" VARCHAR(50),
    "pointsdenominator" NUMERIC(19,9),
    "pointsnumerator" NUMERIC(19,9),
    "weighteddenominator" NUMERIC(19,9),
    "weightednumerator" NUMERIC(19,9),
    "modified" TIMESTAMP(6),
    "modifiedby" INTEGER,
    PRIMARY KEY ("logid")
);
CREATE INDEX "ix_grade_objects_log_gradeobjectid" ON "grade_objects_log" ("gradeobjectid");
CREATE INDEX "ix_grade_objects_log_userid" ON "grade_objects_log" ("userid");

-- Data set: Grade Objects Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-objects-log
CREATE TABLE "grade_objects_log_load" (
    "logid" BIGINT NOT NULL,
    "name" VARCHAR(50),
    "gradeobjectid" INTEGER,
    "userid" INTEGER,
    "gradesymbolstring" VARCHAR(50),
    "pointsdenominator" NUMERIC(19,9),
    "pointsnumerator" NUMERIC(19,9),
    "weighteddenominator" NUMERIC(19,9),
    "weightednumerator" NUMERIC(19,9),
    "modified" TIMESTAMP(6),
    "modifiedby" INTEGER,
    PRIMARY KEY ("logid")
);

-- Data set: Grade Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-results
CREATE TABLE "grade_results" (
    "gradeobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "pointsnumerator" NUMERIC(19,9),
    "pointsdenominator" NUMERIC(19,9),
    "weightednumerator" NUMERIC(19,9),
    "weighteddenominator" NUMERIC(19,9),
    "isreleased" BOOLEAN,
    "isdropped" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "comments" VARCHAR(1000),
    "privatecomments" VARCHAR(1000),
    "gradetext" VARCHAR(50),
    "gradereleaseddate" TIMESTAMP(6),
    "version" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("gradeobjectid", "orgunitid", "userid")
);
CREATE INDEX "ix_grade_results_orgunitid" ON "grade_results" ("orgunitid");
CREATE INDEX "ix_grade_results_userid" ON "grade_results" ("userid");
CREATE INDEX "ix_grade_results_lastmodifiedby" ON "grade_results" ("lastmodifiedby");

-- Data set: Grade Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-results
CREATE TABLE "grade_results_load" (
    "gradeobjectid" INTEGER NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "pointsnumerator" NUMERIC(19,9),
    "pointsdenominator" NUMERIC(19,9),
    "weightednumerator" NUMERIC(19,9),
    "weighteddenominator" NUMERIC(19,9),
    "isreleased" BOOLEAN,
    "isdropped" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "comments" VARCHAR(1000),
    "privatecomments" VARCHAR(1000),
    "gradetext" VARCHAR(50),
    "gradereleaseddate" TIMESTAMP(6),
    "version" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("gradeobjectid", "orgunitid", "userid")
);

-- Data set: Grade Scheme Ranges
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-scheme-ranges
CREATE TABLE "grade_scheme_ranges" (
    "gradeschemerangeid" BIGINT NOT NULL,
    "gradeschemeid" BIGINT NOT NULL,
    "symbolstring" VARCHAR(100),
    "assignedvalue" NUMERIC(19,9),
    "rangestart" NUMERIC(19,9),
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("gradeschemerangeid", "gradeschemeid")
);
CREATE INDEX "ix_grade_scheme_ranges_gradeschemeid" ON "grade_scheme_ranges" ("gradeschemeid");

-- Data set: Grade Scheme Ranges (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-scheme-ranges
CREATE TABLE "grade_scheme_ranges_load" (
    "gradeschemerangeid" BIGINT NOT NULL,
    "gradeschemeid" BIGINT NOT NULL,
    "symbolstring" VARCHAR(100),
    "assignedvalue" NUMERIC(19,9),
    "rangestart" NUMERIC(19,9),
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("gradeschemerangeid", "gradeschemeid")
);

-- Data set: Grade Schemes
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-schemes
CREATE TABLE "grade_schemes" (
    "gradeschemeid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "schemename" VARCHAR(128),
    "deleteddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("gradeschemeid")
);
CREATE INDEX "ix_grade_schemes_orgunitid" ON "grade_schemes" ("orgunitid");

-- Data set: Grade Schemes (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4527-grades-data-sets#grade-schemes
CREATE TABLE "grade_schemes_load" (
    "gradeschemeid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "schemename" VARCHAR(128),
    "deleteddate" TIMESTAMP(6),
    "version" BIGINT,
    PRIMARY KEY ("gradeschemeid")
);

-- Data set: Intelligent Agent Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-objects
CREATE TABLE "intelligent_agent_objects" (
    "agentid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "agentname" VARCHAR(128),
    "description" VARCHAR(1000),
    "enabled" BOOLEAN,
    "specificroles" VARCHAR(1000),
    "loginconditionenabled" BOOLEAN,
    "loginconditionthreshold" INTEGER,
    "loginconditiontype" VARCHAR(14),
    "accessconditionenabled" BOOLEAN,
    "accessconditionthreshold" INTEGER,
    "accessconditiontype" VARCHAR(20),
    "resultid" BIGINT,
    "repeattype" VARCHAR(10),
    "emailwhensatisfied" BOOLEAN,
    "enableschedule" BOOLEAN,
    "scheduletype" VARCHAR(10),
    "schedulerepeatsevery" INTEGER,
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("agentid")
);
CREATE INDEX "ix_intelligent_agent_objects_orgunitid" ON "intelligent_agent_objects" ("orgunitid");
CREATE INDEX "ix_intelligent_agent_objects_resultid" ON "intelligent_agent_objects" ("resultid");
CREATE INDEX "ix_intelligent_agent_objects_lastmodifiedby" ON "intelligent_agent_objects" ("lastmodifiedby");

-- Data set: Intelligent Agent Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-objects
CREATE TABLE "intelligent_agent_objects_load" (
    "agentid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "agentname" VARCHAR(128),
    "description" VARCHAR(1000),
    "enabled" BOOLEAN,
    "specificroles" VARCHAR(1000),
    "loginconditionenabled" BOOLEAN,
    "loginconditionthreshold" INTEGER,
    "loginconditiontype" VARCHAR(14),
    "accessconditionenabled" BOOLEAN,
    "accessconditionthreshold" INTEGER,
    "accessconditiontype" VARCHAR(20),
    "resultid" BIGINT,
    "repeattype" VARCHAR(10),
    "emailwhensatisfied" BOOLEAN,
    "enableschedule" BOOLEAN,
    "scheduletype" VARCHAR(10),
    "schedulerepeatsevery" INTEGER,
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("agentid")
);

-- Data set: Intelligent Agent Run Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-log
CREATE TABLE "intelligent_agent_run_log" (
    "agentid" BIGINT,
    "agentrunid" BIGINT NOT NULL,
    "ispracticerun" BOOLEAN,
    "isrunnow" BOOLEAN,
    "numusers" INTEGER,
    "numuserswitherrors" INTEGER,
    "numuserswithinfos" INTEGER,
    "numuserswithwarnings" INTEGER,
    "runuserid" INTEGER,
    "rundate" TIMESTAMP(6),
    PRIMARY KEY ("agentrunid")
);
CREATE INDEX "ix_intelligent_agent_run_log_agentid" ON "intelligent_agent_run_log" ("agentid");
CREATE INDEX "ix_intelligent_agent_run_log_runuserid" ON "intelligent_agent_run_log" ("runuserid");

-- Data set: Intelligent Agent Run Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-log
CREATE TABLE "intelligent_agent_run_log_load" (
    "agentid" BIGINT,
    "agentrunid" BIGINT NOT NULL,
    "ispracticerun" BOOLEAN,
    "isrunnow" BOOLEAN,
    "numusers" INTEGER,
    "numuserswitherrors" INTEGER,
    "numuserswithinfos" INTEGER,
    "numuserswithwarnings" INTEGER,
    "runuserid" INTEGER,
    "rundate" TIMESTAMP(6),
    PRIMARY KEY ("agentrunid")
);

-- Data set: Intelligent Agent Run Users
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-users
CREATE TABLE "intelligent_agent_run_users" (
    "agentid" BIGINT NOT NULL,
    "agentrunid" BIGINT NOT NULL,
    "userid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "actiontypename" VARCHAR(50),
    "actionhaserror" BOOLEAN,
    "actionhasinfo" BOOLEAN,
    "actionhaswarning" BOOLEAN,
    "shouldretry" BOOLEAN,
    PRIMARY KEY ("agentid", "agentrunid", "userid")
);
CREATE INDEX "ix_intelligent_agent_run_users_agentrunid" ON "intelligent_agent_run_users" ("agentrunid");
CREATE INDEX "ix_intelligent_agent_run_users_userid" ON "intelligent_agent_run_users" ("userid");
CREATE INDEX "ix_intelligent_agent_run_users_orgunitid" ON "intelligent_agent_run_users" ("orgunitid");

-- Data set: Intelligent Agent Run Users (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4528-intelligent-agents-data-sets#intelligent-agent-run-users
CREATE TABLE "intelligent_agent_run_users_load" (
    "agentid" BIGINT NOT NULL,
    "agentrunid" BIGINT NOT NULL,
    "userid" INTEGER NOT NULL,
    "orgunitid" INTEGER,
    "actiontypename" VARCHAR(50),
    "actionhaserror" BOOLEAN,
    "actionhasinfo" BOOLEAN,
    "actionhaswarning" BOOLEAN,
    "shouldretry" BOOLEAN,
    PRIMARY KEY ("agentid", "agentrunid", "userid")
);

-- Data set: JIT Provisioned Users Log
-- Source: https://community.d2l.com/brightspace/kb/articles/5782-jit-provisioning-data-sets#jit-provisioned-users-log
CREATE TABLE "jit_provisioned_users_log" (
    "userid" INTEGER NOT NULL,
    "mappingfield" VARCHAR(32),
    "mappingfieldvalue" VARCHAR(270),
    "providertype" VARCHAR(32),
    "providerid" VARCHAR(1024),
    "roleid" INTEGER,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "action" VARCHAR(16),
    PRIMARY KEY ("userid", "timestamp")
);
CREATE INDEX "ix_jit_provisioned_users_log_roleid" ON "jit_provisioned_users_log" ("roleid");

-- Data set: JIT Provisioned Users Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/5782-jit-provisioning-data-sets#jit-provisioned-users-log
CREATE TABLE "jit_provisioned_users_log_load" (
    "userid" INTEGER NOT NULL,
    "mappingfield" VARCHAR(32),
    "mappingfieldvalue" VARCHAR(270),
    "providertype" VARCHAR(32),
    "providerid" VARCHAR(1024),
    "roleid" INTEGER,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "action" VARCHAR(16),
    PRIMARY KEY ("userid", "timestamp")
);

-- Data set: LTI Advantage Deployment Audit
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-deployment-audit
CREATE TABLE "lti_advantage_deployment_audit" (
    "action" VARCHAR(10),
    "deploymentid" VARCHAR(36) NOT NULL,
    "clientid" VARCHAR(36),
    "deploymentname" VARCHAR(200),
    "isdeploymentenabled" BOOLEAN,
    "hasassignmentsandgrades" BOOLEAN,
    "hasdeeplinking" BOOLEAN,
    "hasnamesandroles" BOOLEAN,
    "hassubmissionreview" BOOLEAN,
    "hasactivityitemprofile" BOOLEAN,
    "hasplatformnotificationservice" BOOLEAN,
    "hascontextcopy" BOOLEAN,
    "modifiedby" BIGINT,
    "anonymous" BOOLEAN,
    "preprovisioningenabled" BOOLEAN,
    "sendorgunitinfo" BOOLEAN,
    "senduserfirstname" BOOLEAN,
    "sendusermiddlename" BOOLEAN,
    "senduserlastname" BOOLEAN,
    "senduseremail" BOOLEAN,
    "sendbrightspaceuserid" BOOLEAN,
    "sendbrightspaceusername" BOOLEAN,
    "sendbrightspaceorgdefinedid" BOOLEAN,
    "sendlinktitle" BOOLEAN,
    "sendlinkdescription" BOOLEAN,
    "openasexternal" BOOLEAN,
    "automigratelinks" BOOLEAN,
    "issharedtomanyorgunits" BOOLEAN,
    "autocreategrades" BOOLEAN,
    "includeinfinalgrade" BOOLEAN,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "hasassetprocessor" BOOLEAN,
    PRIMARY KEY ("deploymentid", "timestamp")
);
CREATE INDEX "ix_lti_advantage_deployment_audit_clientid" ON "lti_advantage_deployment_audit" ("clientid");
CREATE INDEX "ix_lti_advantage_deployment_audit_modifiedby" ON "lti_advantage_deployment_audit" ("modifiedby");

-- Data set: LTI Advantage Deployment Audit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-deployment-audit
CREATE TABLE "lti_advantage_deployment_audit_load" (
    "action" VARCHAR(10),
    "deploymentid" VARCHAR(36) NOT NULL,
    "clientid" VARCHAR(36),
    "deploymentname" VARCHAR(200),
    "isdeploymentenabled" BOOLEAN,
    "hasassignmentsandgrades" BOOLEAN,
    "hasdeeplinking" BOOLEAN,
    "hasnamesandroles" BOOLEAN,
    "hassubmissionreview" BOOLEAN,
    "hasactivityitemprofile" BOOLEAN,
    "hasplatformnotificationservice" BOOLEAN,
    "hascontextcopy" BOOLEAN,
    "modifiedby" BIGINT,
    "anonymous" BOOLEAN,
    "preprovisioningenabled" BOOLEAN,
    "sendorgunitinfo" BOOLEAN,
    "senduserfirstname" BOOLEAN,
    "sendusermiddlename" BOOLEAN,
    "senduserlastname" BOOLEAN,
    "senduseremail" BOOLEAN,
    "sendbrightspaceuserid" BOOLEAN,
    "sendbrightspaceusername" BOOLEAN,
    "sendbrightspaceorgdefinedid" BOOLEAN,
    "sendlinktitle" BOOLEAN,
    "sendlinkdescription" BOOLEAN,
    "openasexternal" BOOLEAN,
    "automigratelinks" BOOLEAN,
    "issharedtomanyorgunits" BOOLEAN,
    "autocreategrades" BOOLEAN,
    "includeinfinalgrade" BOOLEAN,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "hasassetprocessor" BOOLEAN,
    PRIMARY KEY ("deploymentid", "timestamp")
);

-- Data set: LTI Advantage Registration Audit
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-registration-audit
CREATE TABLE "lti_advantage_registration_audit" (
    "action" VARCHAR(10),
    "clientid" VARCHAR(255) NOT NULL,
    "toolname" VARCHAR(200),
    "domain" VARCHAR(2083),
    "redirecturls" VARCHAR(2083),
    "keyseturl" VARCHAR(255),
    "loginurl" VARCHAR(255),
    "ltiversion" VARCHAR(12),
    "isregistrationenabled" BOOLEAN,
    "sendinstitutionrole" BOOLEAN,
    "targetlinkuri" VARCHAR(255),
    "modifiedby" BIGINT,
    "hasassignmentandgradeservices" BOOLEAN,
    "hassubmissionreview" BOOLEAN,
    "hasdeeplinking" BOOLEAN,
    "hasnamesandroleprovisioningservices" BOOLEAN,
    "hasactivityitemprofile" BOOLEAN,
    "hasplatformnotificationservice" BOOLEAN,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "hasassetprocessor" BOOLEAN,
    PRIMARY KEY ("clientid", "timestamp")
);
CREATE INDEX "ix_lti_advantage_registration_audit_modifiedby" ON "lti_advantage_registration_audit" ("modifiedby");

-- Data set: LTI Advantage Registration Audit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-advantage-registration-audit
CREATE TABLE "lti_advantage_registration_audit_load" (
    "action" VARCHAR(10),
    "clientid" VARCHAR(255) NOT NULL,
    "toolname" VARCHAR(200),
    "domain" VARCHAR(2083),
    "redirecturls" VARCHAR(2083),
    "keyseturl" VARCHAR(255),
    "loginurl" VARCHAR(255),
    "ltiversion" VARCHAR(12),
    "isregistrationenabled" BOOLEAN,
    "sendinstitutionrole" BOOLEAN,
    "targetlinkuri" VARCHAR(255),
    "modifiedby" BIGINT,
    "hasassignmentandgradeservices" BOOLEAN,
    "hassubmissionreview" BOOLEAN,
    "hasdeeplinking" BOOLEAN,
    "hasnamesandroleprovisioningservices" BOOLEAN,
    "hasactivityitemprofile" BOOLEAN,
    "hasplatformnotificationservice" BOOLEAN,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "hasassetprocessor" BOOLEAN,
    PRIMARY KEY ("clientid", "timestamp")
);

-- Data set: LTI Launches
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-launches
CREATE TABLE "lti_launches" (
    "ltilaunchid" UUID NOT NULL,
    "userid" INTEGER,
    "imsrolenames" VARCHAR(10000),
    "impersonatinguserid" BIGINT,
    "impersonatinguserimsrolenames" VARCHAR(10000),
    "launchdate" TIMESTAMP(6),
    "orgunitid" BIGINT,
    "ltilinkid" BIGINT,
    "deploymentid" UUID,
    "clientid" UUID,
    "toolproviderid" VARCHAR(300),
    "contenttopicid" BIGINT,
    "parentmoduleid" BIGINT,
    "placement" VARCHAR(10),
    "messageversion" VARCHAR(10),
    "requesttype" VARCHAR(30),
    PRIMARY KEY ("ltilaunchid")
);
CREATE INDEX "ix_lti_launches_ltilinkid" ON "lti_launches" ("ltilinkid");

-- Data set: LTI Launches (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-launches
CREATE TABLE "lti_launches_load" (
    "ltilaunchid" UUID NOT NULL,
    "userid" INTEGER,
    "imsrolenames" VARCHAR(10000),
    "impersonatinguserid" BIGINT,
    "impersonatinguserimsrolenames" VARCHAR(10000),
    "launchdate" TIMESTAMP(6),
    "orgunitid" BIGINT,
    "ltilinkid" BIGINT,
    "deploymentid" UUID,
    "clientid" UUID,
    "toolproviderid" VARCHAR(300),
    "contenttopicid" BIGINT,
    "parentmoduleid" BIGINT,
    "placement" VARCHAR(10),
    "messageversion" VARCHAR(10),
    "requesttype" VARCHAR(30),
    PRIMARY KEY ("ltilaunchid")
);

-- Data set: LTI Link Migration Audit
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-link-migration-audit
CREATE TABLE "lti_link_migration_audit" (
    "ltimigrationid" UUID NOT NULL,
    "userid" BIGINT,
    "migrationdate" TIMESTAMP(6),
    "orgunitid" BIGINT,
    "linkid" BIGINT,
    "linkurl" VARCHAR(2000),
    "linkname" VARCHAR(200),
    "clientid" VARCHAR(255),
    "registrationdomain" VARCHAR(2083),
    "deploymentid" UUID,
    "jobid" BIGINT,
    "status" SMALLINT,
    "failurecode" SMALLINT,
    "migrationtype" SMALLINT,
    "legacyurl" VARCHAR(2083),
    PRIMARY KEY ("ltimigrationid")
);
CREATE INDEX "ix_lti_link_migration_audit_userid" ON "lti_link_migration_audit" ("userid");
CREATE INDEX "ix_lti_link_migration_audit_orgunitid" ON "lti_link_migration_audit" ("orgunitid");
CREATE INDEX "ix_lti_link_migration_audit_linkid" ON "lti_link_migration_audit" ("linkid");

-- Data set: LTI Link Migration Audit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-link-migration-audit
CREATE TABLE "lti_link_migration_audit_load" (
    "ltimigrationid" UUID NOT NULL,
    "userid" BIGINT,
    "migrationdate" TIMESTAMP(6),
    "orgunitid" BIGINT,
    "linkid" BIGINT,
    "linkurl" VARCHAR(2000),
    "linkname" VARCHAR(200),
    "clientid" VARCHAR(255),
    "registrationdomain" VARCHAR(2083),
    "deploymentid" UUID,
    "jobid" BIGINT,
    "status" SMALLINT,
    "failurecode" SMALLINT,
    "migrationtype" SMALLINT,
    "legacyurl" VARCHAR(2083),
    PRIMARY KEY ("ltimigrationid")
);

-- Data set: LTI Links
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-links
CREATE TABLE "lti_links" (
    "ltilinkid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "title" VARCHAR(200),
    "linktype" INTEGER,
    "ltiversion" VARCHAR(12),
    "url" VARCHAR(2000),
    "description" VARCHAR(1000),
    "isvisible" BOOLEAN,
    "sendtcinfo" BOOLEAN,
    "sendcontextinfo" BOOLEAN,
    "sendcourseinfo" BOOLEAN,
    "sendorgunitinfo" BOOLEAN,
    "senduserid" BOOLEAN,
    "sendusername" BOOLEAN,
    "senduseremail" BOOLEAN,
    "sendlinktitle" BOOLEAN,
    "sendlinkdescription" BOOLEAN,
    "sendd2lusername" BOOLEAN,
    "sendd2lorgdefinedid" BOOLEAN,
    "sendd2lorgroleid" BOOLEAN,
    "sendbrightspaceuserid" BOOLEAN,
    "anonymous" BOOLEAN,
    "shared" BOOLEAN,
    "usetoolprovidersecuritysettings" BOOLEAN,
    "lastmodifieddate" TIMESTAMP(6),
    "ouavailabilitysetid" BIGINT,
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "deploymentid" UUID,
    "linksubtype" INTEGER,
    PRIMARY KEY ("ltilinkid")
);
CREATE INDEX "ix_lti_links_orgunitid" ON "lti_links" ("orgunitid");
CREATE INDEX "ix_lti_links_lastmodifiedby" ON "lti_links" ("lastmodifiedby");
CREATE INDEX "ix_lti_links_deploymentid" ON "lti_links" ("deploymentid");

-- Data set: LTI Links (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4727-lti-data-sets#lti-links
CREATE TABLE "lti_links_load" (
    "ltilinkid" BIGINT NOT NULL,
    "orgunitid" INTEGER,
    "title" VARCHAR(200),
    "linktype" INTEGER,
    "ltiversion" VARCHAR(12),
    "url" VARCHAR(2000),
    "description" VARCHAR(1000),
    "isvisible" BOOLEAN,
    "sendtcinfo" BOOLEAN,
    "sendcontextinfo" BOOLEAN,
    "sendcourseinfo" BOOLEAN,
    "sendorgunitinfo" BOOLEAN,
    "senduserid" BOOLEAN,
    "sendusername" BOOLEAN,
    "senduseremail" BOOLEAN,
    "sendlinktitle" BOOLEAN,
    "sendlinkdescription" BOOLEAN,
    "sendd2lusername" BOOLEAN,
    "sendd2lorgdefinedid" BOOLEAN,
    "sendd2lorgroleid" BOOLEAN,
    "sendbrightspaceuserid" BOOLEAN,
    "anonymous" BOOLEAN,
    "shared" BOOLEAN,
    "usetoolprovidersecuritysettings" BOOLEAN,
    "lastmodifieddate" TIMESTAMP(6),
    "ouavailabilitysetid" BIGINT,
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "deploymentid" UUID,
    "linksubtype" INTEGER,
    PRIMARY KEY ("ltilinkid")
);

-- Data set: Local Authentication Security Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4714-local-authentication-data-sets#local-authentication-security-log
CREATE TABLE "local_authentication_security_log" (
    "userid" INTEGER NOT NULL,
    "action" VARCHAR(70) NOT NULL,
    "modifiedby" INTEGER NOT NULL,
    "modifieddate" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("userid", "action", "modifiedby", "modifieddate")
);
CREATE INDEX "ix_local_authentication_security_log_modifiedby" ON "local_authentication_security_log" ("modifiedby");

-- Data set: Local Authentication Security Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4714-local-authentication-data-sets#local-authentication-security-log
CREATE TABLE "local_authentication_security_log_load" (
    "userid" INTEGER NOT NULL,
    "action" VARCHAR(70) NOT NULL,
    "modifiedby" INTEGER NOT NULL,
    "modifieddate" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("userid", "action", "modifiedby", "modifieddate")
);

-- Data set: Media Consumption Log
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-consumption-log
CREATE TABLE "media_consumption_log" (
    "logid" UUID NOT NULL,
    "userid" INTEGER,
    "contentid" UUID,
    "revisionid" UUID,
    "contenttype" VARCHAR(5),
    "clientapp" VARCHAR(32),
    "dateconsumed" TIMESTAMP(6),
    "durationpercentagewatched" INTEGER,
    PRIMARY KEY ("logid")
);
CREATE INDEX "ix_media_consumption_log_userid" ON "media_consumption_log" ("userid");
CREATE INDEX "ix_media_consumption_log_contentid" ON "media_consumption_log" ("contentid");

-- Data set: Media Consumption Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-consumption-log
CREATE TABLE "media_consumption_log_load" (
    "logid" UUID NOT NULL,
    "userid" INTEGER,
    "contentid" UUID,
    "revisionid" UUID,
    "contenttype" VARCHAR(5),
    "clientapp" VARCHAR(32),
    "dateconsumed" TIMESTAMP(6),
    "durationpercentagewatched" INTEGER,
    PRIMARY KEY ("logid")
);

-- Data set: Media Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-objects
CREATE TABLE "media_objects" (
    "contentid" UUID NOT NULL,
    "title" VARCHAR(1000),
    "revisioncount" INTEGER,
    "ownerid" INTEGER,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("contentid")
);
CREATE INDEX "ix_media_objects_ownerid" ON "media_objects" ("ownerid");

-- Data set: Media Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/22812-content-service-data-sets#media-objects
CREATE TABLE "media_objects_load" (
    "contentid" UUID NOT NULL,
    "title" VARCHAR(1000),
    "revisioncount" INTEGER,
    "ownerid" INTEGER,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("contentid")
);

-- Data set: Organizational Unit Ancestors
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-ancestors
CREATE TABLE "organizational_unit_ancestors" (
    "orgunitid" INTEGER NOT NULL,
    "ancestororgunitid" INTEGER NOT NULL,
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "ancestororgunitid")
);
CREATE INDEX "ix_organizational_unit_ancestors_ancestororgunitid" ON "organizational_unit_ancestors" ("ancestororgunitid");

-- Data set: Organizational Unit Ancestors (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-ancestors
CREATE TABLE "organizational_unit_ancestors_load" (
    "orgunitid" INTEGER NOT NULL,
    "ancestororgunitid" INTEGER NOT NULL,
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "ancestororgunitid")
);

-- Data set: Organizational Unit Descendants
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-descendants
CREATE TABLE "organizational_unit_descendants" (
    "orgunitid" INTEGER NOT NULL,
    "descendantorgunitid" INTEGER NOT NULL,
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "descendantorgunitid")
);
CREATE INDEX "ix_organizational_unit_descendants_descendantorgunitid" ON "organizational_unit_descendants" ("descendantorgunitid");

-- Data set: Organizational Unit Descendants (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-descendants
CREATE TABLE "organizational_unit_descendants_load" (
    "orgunitid" INTEGER NOT NULL,
    "descendantorgunitid" INTEGER NOT NULL,
    "lastmodified" TIMESTAMP(6),
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "descendantorgunitid")
);

-- Data set: Organizational Unit Parents
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-parents
CREATE TABLE "organizational_unit_parents" (
    "orgunitid" INTEGER NOT NULL,
    "parentorgunitid" INTEGER NOT NULL,
    "rowversion" BIGINT,
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "parentorgunitid")
);
CREATE INDEX "ix_organizational_unit_parents_parentorgunitid" ON "organizational_unit_parents" ("parentorgunitid");

-- Data set: Organizational Unit Parents (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-parents
CREATE TABLE "organizational_unit_parents_load" (
    "orgunitid" INTEGER NOT NULL,
    "parentorgunitid" INTEGER NOT NULL,
    "rowversion" BIGINT,
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "parentorgunitid")
);

-- Data set: Organizational Unit Recent Access
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-recent-access
CREATE TABLE "organizational_unit_recent_access" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "lastaccesseddate" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "userid")
);
CREATE INDEX "ix_organizational_unit_recent_access_userid" ON "organizational_unit_recent_access" ("userid");

-- Data set: Organizational Unit Recent Access (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-unit-recent-access
CREATE TABLE "organizational_unit_recent_access_load" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "lastaccesseddate" TIMESTAMP(6),
    PRIMARY KEY ("orgunitid", "userid")
);

-- Data set: Organizational Units
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-units
CREATE TABLE "organizational_units" (
    "orgunitid" INTEGER NOT NULL,
    "organization" VARCHAR(50),
    "type" VARCHAR(50),
    "name" VARCHAR(128),
    "code" VARCHAR(50),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isactive" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "deleteddate" TIMESTAMP(6),
    "recycleddate" TIMESTAMP(6),
    "version" BIGINT,
    "orgunittypeid" INTEGER,
    PRIMARY KEY ("orgunitid")
);

-- Data set: Organizational Units (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4529-organizational-units-data-sets#organizational-units
CREATE TABLE "organizational_units_load" (
    "orgunitid" INTEGER NOT NULL,
    "organization" VARCHAR(50),
    "type" VARCHAR(50),
    "name" VARCHAR(128),
    "code" VARCHAR(50),
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "isactive" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    "deleteddate" TIMESTAMP(6),
    "recycleddate" TIMESTAMP(6),
    "version" BIGINT,
    "orgunittypeid" INTEGER,
    PRIMARY KEY ("orgunitid")
);

-- Data set: Outcome Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcome-details
CREATE TABLE "outcome_details" (
    "outcomeid" UUID NOT NULL,
    "outcomedefinitionsource" VARCHAR(1000),
    "outcomedefinitionid" VARCHAR(128),
    "parentoutcomeid" UUID,
    "description" VARCHAR(1000),
    "notation" VARCHAR(1000),
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("outcomeid")
);
CREATE INDEX "ix_outcome_details_createdby" ON "outcome_details" ("createdby");
CREATE INDEX "ix_outcome_details_lastmodifiedby" ON "outcome_details" ("lastmodifiedby");

-- Data set: Outcome Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcome-details
CREATE TABLE "outcome_details_load" (
    "outcomeid" UUID NOT NULL,
    "outcomedefinitionsource" VARCHAR(1000),
    "outcomedefinitionid" VARCHAR(128),
    "parentoutcomeid" UUID,
    "description" VARCHAR(1000),
    "notation" VARCHAR(1000),
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("outcomeid")
);

-- Data set: Outcomes Aligned to Tool Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-aligned-to-tool-objects
CREATE TABLE "outcomes_aligned_to_tool_objects" (
    "objecttype" INTEGER NOT NULL,
    "objectid" VARCHAR(255) NOT NULL,
    "outcomeid" UUID NOT NULL,
    "registryid" UUID NOT NULL,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "aiutilization" INTEGER,
    PRIMARY KEY ("objecttype", "objectid", "outcomeid", "registryid")
);
CREATE INDEX "ix_outcomes_aligned_to_tool_objects_objectid" ON "outcomes_aligned_to_tool_objects" ("objectid");
CREATE INDEX "ix_outcomes_aligned_to_tool_objects_createdby" ON "outcomes_aligned_to_tool_objects" ("createdby");
CREATE INDEX "ix_outcomes_aligned_to_tool_objects_lastmodifiedby" ON "outcomes_aligned_to_tool_objects" ("lastmodifiedby");

-- Data set: Outcomes Aligned to Tool Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-aligned-to-tool-objects
CREATE TABLE "outcomes_aligned_to_tool_objects_load" (
    "objecttype" INTEGER NOT NULL,
    "objectid" VARCHAR(255) NOT NULL,
    "outcomeid" UUID NOT NULL,
    "registryid" UUID NOT NULL,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "aiutilization" INTEGER,
    PRIMARY KEY ("objecttype", "objectid", "outcomeid", "registryid")
);

-- Data set: Outcomes Assessed Checkpoints
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-assessed-checkpoints
CREATE TABLE "outcomes_assessed_checkpoints" (
    "checkpointid" UUID NOT NULL,
    "demonstrationid" UUID NOT NULL,
    "feedback" VARCHAR(1000),
    "configdecayrate" INTEGER,
    "configaggregationmethod" INTEGER,
    "configincludedactivities" INTEGER,
    "configmultipleattemptstrategy" INTEGER,
    "configrecentlyassessedactivitycount" INTEGER,
    "configtiebreaker" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "hasmetachievementthreshold" BOOLEAN,
    "achievedlevelid" UUID,
    PRIMARY KEY ("checkpointid", "demonstrationid")
);
CREATE INDEX "ix_outcomes_assessed_checkpoints_demonstrationid" ON "outcomes_assessed_checkpoints" ("demonstrationid");

-- Data set: Outcomes Assessed Checkpoints (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-assessed-checkpoints
CREATE TABLE "outcomes_assessed_checkpoints_load" (
    "checkpointid" UUID NOT NULL,
    "demonstrationid" UUID NOT NULL,
    "feedback" VARCHAR(1000),
    "configdecayrate" INTEGER,
    "configaggregationmethod" INTEGER,
    "configincludedactivities" INTEGER,
    "configmultipleattemptstrategy" INTEGER,
    "configrecentlyassessedactivitycount" INTEGER,
    "configtiebreaker" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "hasmetachievementthreshold" BOOLEAN,
    "achievedlevelid" UUID,
    PRIMARY KEY ("checkpointid", "demonstrationid")
);

-- Data set: Outcomes Course Specific Scales
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-course-specific-scales
CREATE TABLE "outcomes_course_specific_scales" (
    "orgunitid" INTEGER NOT NULL,
    "registryid" UUID,
    "scaleid" UUID,
    "achievementthreshold" UUID,
    "createddate" TIMESTAMP(6),
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("orgunitid")
);
CREATE INDEX "ix_outcomes_course_specific_scales_registryid" ON "outcomes_course_specific_scales" ("registryid");
CREATE INDEX "ix_outcomes_course_specific_scales_scaleid" ON "outcomes_course_specific_scales" ("scaleid");
CREATE INDEX "ix_outcomes_course_specific_scales_achievementthreshold" ON "outcomes_course_specific_scales" ("achievementthreshold");
CREATE INDEX "ix_outcomes_course_specific_scales_lastmodifiedby" ON "outcomes_course_specific_scales" ("lastmodifiedby");

-- Data set: Outcomes Course Specific Scales (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-course-specific-scales
CREATE TABLE "outcomes_course_specific_scales_load" (
    "orgunitid" INTEGER NOT NULL,
    "registryid" UUID,
    "scaleid" UUID,
    "achievementthreshold" UUID,
    "createddate" TIMESTAMP(6),
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("orgunitid")
);

-- Data set: Outcomes Demonstrations
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-demonstrations
CREATE TABLE "outcomes_demonstrations" (
    "demonstrationid" UUID NOT NULL,
    "explicitlyenteredscalelevelid" UUID,
    "automaticallygeneratedscalelevelid" UUID,
    "alignedobjecttype" INTEGER,
    "alignedobjectid" VARCHAR(1000),
    "outcomeid" UUID,
    "registryid" UUID,
    "ispublished" BOOLEAN,
    "assesseduserid" INTEGER,
    "assesseddate" TIMESTAMP(6),
    "assessoruserid" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("demonstrationid")
);
CREATE INDEX "ix_outcomes_demonstrations_explicitlyenteredscalelevelid" ON "outcomes_demonstrations" ("explicitlyenteredscalelevelid");
CREATE INDEX "ix_outcomes_demonstrations_automaticallygeneratedscalelevelid" ON "outcomes_demonstrations" ("automaticallygeneratedscalelevelid");
CREATE INDEX "ix_outcomes_demonstrations_alignedobjectid" ON "outcomes_demonstrations" ("alignedobjectid");
CREATE INDEX "ix_outcomes_demonstrations_assesseduserid" ON "outcomes_demonstrations" ("assesseduserid");
CREATE INDEX "ix_outcomes_demonstrations_assessoruserid" ON "outcomes_demonstrations" ("assessoruserid");
CREATE INDEX "ix_outcomes_demonstrations_lastmodifiedby" ON "outcomes_demonstrations" ("lastmodifiedby");

-- Data set: Outcomes Demonstrations (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-demonstrations
CREATE TABLE "outcomes_demonstrations_load" (
    "demonstrationid" UUID NOT NULL,
    "explicitlyenteredscalelevelid" UUID,
    "automaticallygeneratedscalelevelid" UUID,
    "alignedobjecttype" INTEGER,
    "alignedobjectid" VARCHAR(1000),
    "outcomeid" UUID,
    "registryid" UUID,
    "ispublished" BOOLEAN,
    "assesseduserid" INTEGER,
    "assesseddate" TIMESTAMP(6),
    "assessoruserid" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("demonstrationid")
);

-- Data set: Outcomes Rubric Alignments
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-rubric-alignments
CREATE TABLE "outcomes_rubric_alignments" (
    "rubricid" BIGINT NOT NULL,
    "criterionid" BIGINT NOT NULL,
    "outcomeid" UUID NOT NULL,
    "registryid" UUID NOT NULL,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("rubricid", "criterionid", "outcomeid", "registryid")
);
CREATE INDEX "ix_outcomes_rubric_alignments_criterionid" ON "outcomes_rubric_alignments" ("criterionid");
CREATE INDEX "ix_outcomes_rubric_alignments_outcomeid" ON "outcomes_rubric_alignments" ("outcomeid");
CREATE INDEX "ix_outcomes_rubric_alignments_registryid" ON "outcomes_rubric_alignments" ("registryid");
CREATE INDEX "ix_outcomes_rubric_alignments_createdby" ON "outcomes_rubric_alignments" ("createdby");
CREATE INDEX "ix_outcomes_rubric_alignments_lastmodifiedby" ON "outcomes_rubric_alignments" ("lastmodifiedby");

-- Data set: Outcomes Rubric Alignments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-rubric-alignments
CREATE TABLE "outcomes_rubric_alignments_load" (
    "rubricid" BIGINT NOT NULL,
    "criterionid" BIGINT NOT NULL,
    "outcomeid" UUID NOT NULL,
    "registryid" UUID NOT NULL,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("rubricid", "criterionid", "outcomeid", "registryid")
);

-- Data set: Outcomes Scale Definition
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-definition
CREATE TABLE "outcomes_scale_definition" (
    "scaleid" UUID NOT NULL,
    "name" VARCHAR(1000),
    "isdefault" BOOLEAN,
    "usepercentages" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "achievementthreshold" UUID,
    PRIMARY KEY ("scaleid")
);
CREATE INDEX "ix_outcomes_scale_definition_createdby" ON "outcomes_scale_definition" ("createdby");
CREATE INDEX "ix_outcomes_scale_definition_lastmodifiedby" ON "outcomes_scale_definition" ("lastmodifiedby");
CREATE INDEX "ix_outcomes_scale_definition_achievementthreshold" ON "outcomes_scale_definition" ("achievementthreshold");

-- Data set: Outcomes Scale Definition (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-definition
CREATE TABLE "outcomes_scale_definition_load" (
    "scaleid" UUID NOT NULL,
    "name" VARCHAR(1000),
    "isdefault" BOOLEAN,
    "usepercentages" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "achievementthreshold" UUID,
    PRIMARY KEY ("scaleid")
);

-- Data set: Outcomes Scale Level Definition
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-level-definition
CREATE TABLE "outcomes_scale_level_definition" (
    "scalelevelid" UUID NOT NULL,
    "scaleid" UUID,
    "name" VARCHAR(1000),
    "sortorder" INTEGER,
    "percentagerangestart" INTEGER,
    "rgb" VARCHAR(40),
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("scalelevelid")
);
CREATE INDEX "ix_outcomes_scale_level_definition_scaleid" ON "outcomes_scale_level_definition" ("scaleid");
CREATE INDEX "ix_outcomes_scale_level_definition_createdby" ON "outcomes_scale_level_definition" ("createdby");
CREATE INDEX "ix_outcomes_scale_level_definition_lastmodifiedby" ON "outcomes_scale_level_definition" ("lastmodifiedby");

-- Data set: Outcomes Scale Level Definition (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-scale-level-definition
CREATE TABLE "outcomes_scale_level_definition_load" (
    "scalelevelid" UUID NOT NULL,
    "scaleid" UUID,
    "name" VARCHAR(1000),
    "sortorder" INTEGER,
    "percentagerangestart" INTEGER,
    "rgb" VARCHAR(40),
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("scalelevelid")
);

-- Data set: Outcomes Set Course
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-course
CREATE TABLE "outcomes_set_course" (
    "registryid" UUID NOT NULL,
    "orgunitid" BIGINT,
    "sourceoutcomesetid" BIGINT,
    "isprimary" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "scaleid" UUID,
    "achievementthreshold" UUID,
    PRIMARY KEY ("registryid")
);
CREATE INDEX "ix_outcomes_set_course_orgunitid" ON "outcomes_set_course" ("orgunitid");
CREATE INDEX "ix_outcomes_set_course_sourceoutcomesetid" ON "outcomes_set_course" ("sourceoutcomesetid");
CREATE INDEX "ix_outcomes_set_course_createdby" ON "outcomes_set_course" ("createdby");
CREATE INDEX "ix_outcomes_set_course_lastmodifiedby" ON "outcomes_set_course" ("lastmodifiedby");
CREATE INDEX "ix_outcomes_set_course_scaleid" ON "outcomes_set_course" ("scaleid");
CREATE INDEX "ix_outcomes_set_course_achievementthreshold" ON "outcomes_set_course" ("achievementthreshold");

-- Data set: Outcomes Set Course (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-course
CREATE TABLE "outcomes_set_course_load" (
    "registryid" UUID NOT NULL,
    "orgunitid" BIGINT,
    "sourceoutcomesetid" BIGINT,
    "isprimary" BOOLEAN,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "scaleid" UUID,
    "achievementthreshold" UUID,
    PRIMARY KEY ("registryid")
);

-- Data set: Outcomes Set Org
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-org
CREATE TABLE "outcomes_set_org" (
    "outcomesetid" BIGINT NOT NULL,
    "outcomesetname" VARCHAR(256),
    "registryid" UUID,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "scaleid" UUID,
    PRIMARY KEY ("outcomesetid")
);
CREATE INDEX "ix_outcomes_set_org_createdby" ON "outcomes_set_org" ("createdby");
CREATE INDEX "ix_outcomes_set_org_lastmodifiedby" ON "outcomes_set_org" ("lastmodifiedby");
CREATE INDEX "ix_outcomes_set_org_scaleid" ON "outcomes_set_org" ("scaleid");

-- Data set: Outcomes Set Org (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-set-org
CREATE TABLE "outcomes_set_org_load" (
    "outcomesetid" BIGINT NOT NULL,
    "outcomesetname" VARCHAR(256),
    "registryid" UUID,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "scaleid" UUID,
    PRIMARY KEY ("outcomesetid")
);

-- Data set: Outcomes in Registries
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-in-registries
CREATE TABLE "outcomes_in_registries" (
    "outcomeid" UUID NOT NULL,
    "registryid" UUID NOT NULL,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("outcomeid", "registryid")
);
CREATE INDEX "ix_outcomes_in_registries_createdby" ON "outcomes_in_registries" ("createdby");
CREATE INDEX "ix_outcomes_in_registries_lastmodifiedby" ON "outcomes_in_registries" ("lastmodifiedby");

-- Data set: Outcomes in Registries (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4796-outcomes-data-sets#outcomes-in-registries
CREATE TABLE "outcomes_in_registries_load" (
    "outcomeid" UUID NOT NULL,
    "registryid" UUID NOT NULL,
    "createddate" TIMESTAMP(6),
    "createdby" INTEGER,
    "lastmodifieddate" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("outcomeid", "registryid")
);

-- Data set: Portfolio Categories
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-categories
CREATE TABLE "portfolio_categories" (
    "categoryid" UUID NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(256),
    "isretired" BOOLEAN,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("categoryid")
);
CREATE INDEX "ix_portfolio_categories_orgunitid" ON "portfolio_categories" ("orgunitid");
CREATE INDEX "ix_portfolio_categories_lastmodifiedby" ON "portfolio_categories" ("lastmodifiedby");

-- Data set: Portfolio Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-categories
CREATE TABLE "portfolio_categories_load" (
    "categoryid" UUID NOT NULL,
    "orgunitid" INTEGER,
    "name" VARCHAR(256),
    "isretired" BOOLEAN,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("categoryid")
);

-- Data set: Portfolio Evidence Categories
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-categories
CREATE TABLE "portfolio_evidence_categories" (
    "categoryid" UUID NOT NULL,
    "evidenceid" UUID NOT NULL,
    "group" VARCHAR(30) NOT NULL,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("categoryid", "evidenceid", "group")
);
CREATE INDEX "ix_portfolio_evidence_categories_evidenceid" ON "portfolio_evidence_categories" ("evidenceid");
CREATE INDEX "ix_portfolio_evidence_categories_lastmodifiedby" ON "portfolio_evidence_categories" ("lastmodifiedby");

-- Data set: Portfolio Evidence Categories (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-categories
CREATE TABLE "portfolio_evidence_categories_load" (
    "categoryid" UUID NOT NULL,
    "evidenceid" UUID NOT NULL,
    "group" VARCHAR(30) NOT NULL,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("categoryid", "evidenceid", "group")
);

-- Data set: Portfolio Evidence Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-log
CREATE TABLE "portfolio_evidence_log" (
    "logid" UUID NOT NULL,
    "parentobjectid" UUID,
    "objectid" UUID,
    "objecttype" VARCHAR(40),
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "action" VARCHAR(16),
    "ismobile" BOOLEAN,
    "actiondate" TIMESTAMP(6),
    PRIMARY KEY ("logid")
);
CREATE INDEX "ix_portfolio_evidence_log_userid" ON "portfolio_evidence_log" ("userid");
CREATE INDEX "ix_portfolio_evidence_log_orgunitid" ON "portfolio_evidence_log" ("orgunitid");

-- Data set: Portfolio Evidence Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-log
CREATE TABLE "portfolio_evidence_log_load" (
    "logid" UUID NOT NULL,
    "parentobjectid" UUID,
    "objectid" UUID,
    "objecttype" VARCHAR(40),
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "action" VARCHAR(16),
    "ismobile" BOOLEAN,
    "actiondate" TIMESTAMP(6),
    PRIMARY KEY ("logid")
);

-- Data set: Portfolio Evidence Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-objects
CREATE TABLE "portfolio_evidence_objects" (
    "evidenceid" UUID NOT NULL,
    "ownerid" INTEGER,
    "orgunitid" INTEGER,
    "evidencetype" VARCHAR(30),
    "title" VARCHAR(1000),
    "isapproved" BOOLEAN,
    "isspotlighted" BOOLEAN,
    "issharedtoparents" BOOLEAN,
    "isdeleted" BOOLEAN,
    "isrecoverablebyinstructor" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "issharedwithinstructor" BOOLEAN,
    "datesharedwithinstructor" TIMESTAMP(6),
    PRIMARY KEY ("evidenceid")
);
CREATE INDEX "ix_portfolio_evidence_objects_ownerid" ON "portfolio_evidence_objects" ("ownerid");
CREATE INDEX "ix_portfolio_evidence_objects_orgunitid" ON "portfolio_evidence_objects" ("orgunitid");
CREATE INDEX "ix_portfolio_evidence_objects_lastmodifiedby" ON "portfolio_evidence_objects" ("lastmodifiedby");

-- Data set: Portfolio Evidence Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4530-portfolio-data-sets#portfolio-evidence-objects
CREATE TABLE "portfolio_evidence_objects_load" (
    "evidenceid" UUID NOT NULL,
    "ownerid" INTEGER,
    "orgunitid" INTEGER,
    "evidencetype" VARCHAR(30),
    "title" VARCHAR(1000),
    "isapproved" BOOLEAN,
    "isspotlighted" BOOLEAN,
    "issharedtoparents" BOOLEAN,
    "isdeleted" BOOLEAN,
    "isrecoverablebyinstructor" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "issharedwithinstructor" BOOLEAN,
    "datesharedwithinstructor" TIMESTAMP(6),
    PRIMARY KEY ("evidenceid")
);

-- Data set: PreRequisite Conditions Met
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#prerequisite-conditions-met
CREATE TABLE "prerequisite_conditions_met" (
    "prerequisiteid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "datemet" TIMESTAMP(6),
    "action" VARCHAR(7),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("prerequisiteid", "userid")
);
CREATE INDEX "ix_prerequisite_conditions_met_userid" ON "prerequisite_conditions_met" ("userid");

-- Data set: PreRequisite Conditions Met (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#prerequisite-conditions-met
CREATE TABLE "prerequisite_conditions_met_load" (
    "prerequisiteid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "datemet" TIMESTAMP(6),
    "action" VARCHAR(7),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("prerequisiteid", "userid")
);

-- Data set: Question Answer Options
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answer-options
CREATE TABLE "question_answer_options" (
    "answerid" BIGINT NOT NULL,
    "answertext" VARCHAR(1000),
    "weight" NUMERIC(19,9),
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "answeroptionid" INTEGER NOT NULL,
    PRIMARY KEY ("answerid", "questionid", "questionversionid", "answeroptionid")
);
CREATE INDEX "ix_question_answer_options_questionid" ON "question_answer_options" ("questionid");
CREATE INDEX "ix_question_answer_options_questionversionid" ON "question_answer_options" ("questionversionid");

-- Data set: Question Answer Options (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answer-options
CREATE TABLE "question_answer_options_load" (
    "answerid" BIGINT NOT NULL,
    "answertext" VARCHAR(1000),
    "weight" NUMERIC(19,9),
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "answeroptionid" INTEGER NOT NULL,
    PRIMARY KEY ("answerid", "questionid", "questionversionid", "answeroptionid")
);

-- Data set: Question Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answers
CREATE TABLE "question_answers" (
    "answerid" BIGINT NOT NULL,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "sortorder" INTEGER,
    "weight" NUMERIC(19,9),
    "answer" VARCHAR(1000),
    "comment" VARCHAR(1000),
    "description" VARCHAR(256),
    PRIMARY KEY ("answerid", "questionid", "questionversionid")
);
CREATE INDEX "ix_question_answers_questionid" ON "question_answers" ("questionid");
CREATE INDEX "ix_question_answers_questionversionid" ON "question_answers" ("questionversionid");

-- Data set: Question Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-answers
CREATE TABLE "question_answers_load" (
    "answerid" BIGINT NOT NULL,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "sortorder" INTEGER,
    "weight" NUMERIC(19,9),
    "answer" VARCHAR(1000),
    "comment" VARCHAR(1000),
    "description" VARCHAR(256),
    PRIMARY KEY ("answerid", "questionid", "questionversionid")
);

-- Data set: Question Library
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-library
CREATE TABLE "question_library" (
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

-- Data set: Question Pools
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-pools
CREATE TABLE "question_pools" (
    "sectionid" BIGINT NOT NULL,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("sectionid", "questionid", "questionversionid")
);
CREATE INDEX "ix_question_pools_questionid" ON "question_pools" ("questionid");
CREATE INDEX "ix_question_pools_questionversionid" ON "question_pools" ("questionversionid");

-- Data set: Question Pools (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-pools
CREATE TABLE "question_pools_load" (
    "sectionid" BIGINT NOT NULL,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("sectionid", "questionid", "questionversionid")
);

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

-- Data set: Question Relationships (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4531-questions-data-sets#question-relationships
CREATE TABLE "question_relationships_load" (
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

-- Data set: Quiz Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts
CREATE TABLE "quiz_attempts" (
    "attemptid" BIGINT NOT NULL,
    "quizid" BIGINT,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "attemptnumber" INTEGER,
    "timestarted" TIMESTAMP(6),
    "timecompleted" TIMESTAMP(6),
    "score" NUMERIC(19,9),
    "isgraded" BOOLEAN,
    "oldattemptnumber" INTEGER,
    "isdeleted" BOOLEAN,
    "possiblescore" NUMERIC(19,9),
    "isretakeincorrectonly" BOOLEAN,
    "duedate" TIMESTAMP(6),
    "timelimit" INTEGER,
    "timelimitenforced" BOOLEAN,
    "timelimitexceededbehaviour" VARCHAR(128),
    "issynchronous" BOOLEAN,
    "deductionpercentage" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("attemptid")
);
CREATE INDEX "ix_quiz_attempts_quizid" ON "quiz_attempts" ("quizid");
CREATE INDEX "ix_quiz_attempts_userid" ON "quiz_attempts" ("userid");
CREATE INDEX "ix_quiz_attempts_orgunitid" ON "quiz_attempts" ("orgunitid");

-- Data set: Quiz Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts
CREATE TABLE "quiz_attempts_load" (
    "attemptid" BIGINT NOT NULL,
    "quizid" BIGINT,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "attemptnumber" INTEGER,
    "timestarted" TIMESTAMP(6),
    "timecompleted" TIMESTAMP(6),
    "score" NUMERIC(19,9),
    "isgraded" BOOLEAN,
    "oldattemptnumber" INTEGER,
    "isdeleted" BOOLEAN,
    "possiblescore" NUMERIC(19,9),
    "isretakeincorrectonly" BOOLEAN,
    "duedate" TIMESTAMP(6),
    "timelimit" INTEGER,
    "timelimitenforced" BOOLEAN,
    "timelimitexceededbehaviour" VARCHAR(128),
    "issynchronous" BOOLEAN,
    "deductionpercentage" INTEGER,
    "version" BIGINT,
    PRIMARY KEY ("attemptid")
);

-- Data set: Quiz Attempts Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts-log
CREATE TABLE "quiz_attempts_log" (
    "logid" BIGINT NOT NULL,
    "attemptid" BIGINT,
    "eventtypeid" INTEGER,
    "name" VARCHAR(256),
    "description" VARCHAR(256),
    "eventtime" TIMESTAMP(6),
    "ipaddress" VARCHAR(45),
    "userid" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("logid")
);
CREATE INDEX "ix_quiz_attempts_log_attemptid" ON "quiz_attempts_log" ("attemptid");
CREATE INDEX "ix_quiz_attempts_log_userid" ON "quiz_attempts_log" ("userid");

-- Data set: Quiz Attempts Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-attempts-log
CREATE TABLE "quiz_attempts_log_load" (
    "logid" BIGINT NOT NULL,
    "attemptid" BIGINT,
    "eventtypeid" INTEGER,
    "name" VARCHAR(256),
    "description" VARCHAR(256),
    "eventtime" TIMESTAMP(6),
    "ipaddress" VARCHAR(45),
    "userid" INTEGER,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("logid")
);

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

-- Data set: Quiz Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-objects
CREATE TABLE "quiz_objects_load" (
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

-- Data set: Quiz Survey Sections (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-survey-sections
CREATE TABLE "quiz_survey_sections_load" (
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

-- Data set: Quiz User Answer Responses
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answer-responses
CREATE TABLE "quiz_user_answer_responses" (
    "attemptid" BIGINT NOT NULL,
    "attemptnumber" INTEGER,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "answerid" BIGINT NOT NULL,
    "sortorder" INTEGER,
    "iscorrect" BOOLEAN,
    "userselection" BIGINT,
    "useranswer" VARCHAR(1000),
    "filesetid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("attemptid", "questionid", "questionversionid", "answerid")
);
CREATE INDEX "ix_quiz_user_answer_responses_questionid" ON "quiz_user_answer_responses" ("questionid");
CREATE INDEX "ix_quiz_user_answer_responses_questionversionid" ON "quiz_user_answer_responses" ("questionversionid");
CREATE INDEX "ix_quiz_user_answer_responses_answerid" ON "quiz_user_answer_responses" ("answerid");

-- Data set: Quiz User Answer Responses (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answer-responses
CREATE TABLE "quiz_user_answer_responses_load" (
    "attemptid" BIGINT NOT NULL,
    "attemptnumber" INTEGER,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "answerid" BIGINT NOT NULL,
    "sortorder" INTEGER,
    "iscorrect" BOOLEAN,
    "userselection" BIGINT,
    "useranswer" VARCHAR(1000),
    "filesetid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("attemptid", "questionid", "questionversionid", "answerid")
);

-- Data set: Quiz User Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answers
CREATE TABLE "quiz_user_answers" (
    "attemptid" BIGINT NOT NULL,
    "questionid" BIGINT,
    "questionversionid" BIGINT,
    "timecompleted" TIMESTAMP(6),
    "questionnumber" INTEGER,
    "comment" VARCHAR(1000),
    "sortorder" INTEGER,
    "score" NUMERIC(19,9),
    "page" INTEGER,
    "sectionid" BIGINT,
    "objectid" BIGINT NOT NULL,
    "outof" NUMERIC(19,9),
    "timestarted" TIMESTAMP(6),
    "isbonus" BOOLEAN,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "quiztimecompleted" TIMESTAMP(6),
    PRIMARY KEY ("attemptid", "objectid")
);
CREATE INDEX "ix_quiz_user_answers_questionid" ON "quiz_user_answers" ("questionid");
CREATE INDEX "ix_quiz_user_answers_questionversionid" ON "quiz_user_answers" ("questionversionid");
CREATE INDEX "ix_quiz_user_answers_sectionid" ON "quiz_user_answers" ("sectionid");
CREATE INDEX "ix_quiz_user_answers_lastmodifiedby" ON "quiz_user_answers" ("lastmodifiedby");

-- Data set: Quiz User Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4532-quizzes-data-sets#quiz-user-answers
CREATE TABLE "quiz_user_answers_load" (
    "attemptid" BIGINT NOT NULL,
    "questionid" BIGINT,
    "questionversionid" BIGINT,
    "timecompleted" TIMESTAMP(6),
    "questionnumber" INTEGER,
    "comment" VARCHAR(1000),
    "sortorder" INTEGER,
    "score" NUMERIC(19,9),
    "page" INTEGER,
    "sectionid" BIGINT,
    "objectid" BIGINT NOT NULL,
    "outof" NUMERIC(19,9),
    "timestarted" TIMESTAMP(6),
    "isbonus" BOOLEAN,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "quiztimecompleted" TIMESTAMP(6),
    PRIMARY KEY ("attemptid", "objectid")
);

-- Data set: Release Condition Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-objects
CREATE TABLE "release_condition_objects" (
    "prerequisiteid" INTEGER NOT NULL,
    "resultid" INTEGER NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "name" VARCHAR(64),
    "isnegativecondition" BOOLEAN,
    "prerequisitetoolid" INTEGER,
    "id1" INTEGER,
    "id2" INTEGER,
    "resulttoolid" INTEGER,
    "usespercentage" BOOLEAN,
    "operatortypedesc" VARCHAR(3),
    "version" BIGINT,
    "guid1" UUID,
    "guid2" UUID,
    PRIMARY KEY ("prerequisiteid", "resultid", "orgunitid")
);
CREATE INDEX "ix_release_condition_objects_orgunitid" ON "release_condition_objects" ("orgunitid");
CREATE INDEX "ix_release_condition_objects_prerequisitetoolid" ON "release_condition_objects" ("prerequisitetoolid");
CREATE INDEX "ix_release_condition_objects_resulttoolid" ON "release_condition_objects" ("resulttoolid");

-- Data set: Release Condition Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-objects
CREATE TABLE "release_condition_objects_load" (
    "prerequisiteid" INTEGER NOT NULL,
    "resultid" INTEGER NOT NULL,
    "orgunitid" INTEGER NOT NULL,
    "name" VARCHAR(64),
    "isnegativecondition" BOOLEAN,
    "prerequisitetoolid" INTEGER,
    "id1" INTEGER,
    "id2" INTEGER,
    "resulttoolid" INTEGER,
    "usespercentage" BOOLEAN,
    "operatortypedesc" VARCHAR(3),
    "version" BIGINT,
    "guid1" UUID,
    "guid2" UUID,
    PRIMARY KEY ("prerequisiteid", "resultid", "orgunitid")
);

-- Data set: Release Condition Results
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-results
CREATE TABLE "release_condition_results" (
    "resultid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "met" VARCHAR(7),
    "version" BIGINT,
    "deleteddate" TIMESTAMP(6),
    PRIMARY KEY ("resultid", "userid")
);
CREATE INDEX "ix_release_condition_results_userid" ON "release_condition_results" ("userid");

-- Data set: Release Condition Results (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4533-release-conditions-data-sets#release-condition-results
CREATE TABLE "release_condition_results_load" (
    "resultid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "met" VARCHAR(7),
    "version" BIGINT,
    "deleteddate" TIMESTAMP(6),
    PRIMARY KEY ("resultid", "userid")
);

-- Data set: Reoffer Course
-- Source: https://community.d2l.com/brightspace/kb/articles/33182-reoffer-course-data-sets#reoffer-course
CREATE TABLE "reoffer_course" (
    "courseofferingid" INTEGER NOT NULL,
    "sourcecourseid" INTEGER NOT NULL,
    "createdby" INTEGER,
    "reofferdate" TIMESTAMP(6),
    PRIMARY KEY ("courseofferingid", "sourcecourseid")
);
CREATE INDEX "ix_reoffer_course_sourcecourseid" ON "reoffer_course" ("sourcecourseid");
CREATE INDEX "ix_reoffer_course_createdby" ON "reoffer_course" ("createdby");

-- Data set: Reoffer Course (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/33182-reoffer-course-data-sets#reoffer-course
CREATE TABLE "reoffer_course_load" (
    "courseofferingid" INTEGER NOT NULL,
    "sourcecourseid" INTEGER NOT NULL,
    "createdby" INTEGER,
    "reofferdate" TIMESTAMP(6),
    PRIMARY KEY ("courseofferingid", "sourcecourseid")
);

-- Data set: Role Details
-- Source: https://community.d2l.com/brightspace/kb/articles/4534-role-details-data-sets#role-details
CREATE TABLE "role_details" (
    "roleid" INTEGER NOT NULL,
    "rolename" VARCHAR(120),
    "description" VARCHAR(400),
    "iscascading" BOOLEAN,
    "inclasslist" BOOLEAN,
    "classlistrolename" VARCHAR(120),
    "classlistshowgroups" BOOLEAN,
    "classlistshowsections" BOOLEAN,
    "classlistdisplayrole" BOOLEAN,
    "accessinactiveco" BOOLEAN,
    "hasspecialaccess" BOOLEAN,
    "addtocourseofferinggroups" BOOLEAN,
    "canbeautoenrolledintogroups" BOOLEAN,
    "addtocourseofferingsections" BOOLEAN,
    "canbeautoenrolledintosections" BOOLEAN,
    "accesspastcourses" BOOLEAN,
    "accessfuturecourses" BOOLEAN,
    "sortorder" INTEGER,
    "showincontent" BOOLEAN,
    "showindiscussionassess" BOOLEAN,
    "showindiscussionstats" BOOLEAN,
    "showingrades" BOOLEAN,
    "showinattendance" BOOLEAN,
    "allowselfenrollingroups" BOOLEAN,
    "showinregistration" BOOLEAN,
    "showinuserprogress" BOOLEAN,
    "rolealias" VARCHAR(120),
    "rolecode" VARCHAR(100),
    "lastmodifieddate" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("roleid")
);
CREATE INDEX "ix_role_details_deletedby" ON "role_details" ("deletedby");

-- Data set: Role Details (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4534-role-details-data-sets#role-details
CREATE TABLE "role_details_load" (
    "roleid" INTEGER NOT NULL,
    "rolename" VARCHAR(120),
    "description" VARCHAR(400),
    "iscascading" BOOLEAN,
    "inclasslist" BOOLEAN,
    "classlistrolename" VARCHAR(120),
    "classlistshowgroups" BOOLEAN,
    "classlistshowsections" BOOLEAN,
    "classlistdisplayrole" BOOLEAN,
    "accessinactiveco" BOOLEAN,
    "hasspecialaccess" BOOLEAN,
    "addtocourseofferinggroups" BOOLEAN,
    "canbeautoenrolledintogroups" BOOLEAN,
    "addtocourseofferingsections" BOOLEAN,
    "canbeautoenrolledintosections" BOOLEAN,
    "accesspastcourses" BOOLEAN,
    "accessfuturecourses" BOOLEAN,
    "sortorder" INTEGER,
    "showincontent" BOOLEAN,
    "showindiscussionassess" BOOLEAN,
    "showindiscussionstats" BOOLEAN,
    "showingrades" BOOLEAN,
    "showinattendance" BOOLEAN,
    "allowselfenrollingroups" BOOLEAN,
    "showinregistration" BOOLEAN,
    "showinuserprogress" BOOLEAN,
    "rolealias" VARCHAR(120),
    "rolecode" VARCHAR(100),
    "lastmodifieddate" TIMESTAMP(6),
    "deletedby" INTEGER,
    PRIMARY KEY ("roleid")
);

-- Data set: Rubric Assessment
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment
CREATE TABLE "rubric_assessment" (
    "rubricid" BIGINT,
    "orgunitid" INTEGER,
    "userid" INTEGER NOT NULL,
    "score" NUMERIC(36,2),
    "assessedbyuserid" INTEGER,
    "assessmentdate" TIMESTAMP(6),
    "iscompleted" BOOLEAN,
    "activitytype" VARCHAR(50),
    "activityobjectid" BIGINT,
    "datecreated" TIMESTAMP(6),
    "assessmentid" BIGINT NOT NULL,
    "levelachievedid" BIGINT,
    "activityid" BIGINT NOT NULL,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("userid", "assessmentid", "activityid")
);
CREATE INDEX "ix_rubric_assessment_rubricid" ON "rubric_assessment" ("rubricid");
CREATE INDEX "ix_rubric_assessment_orgunitid" ON "rubric_assessment" ("orgunitid");
CREATE INDEX "ix_rubric_assessment_assessedbyuserid" ON "rubric_assessment" ("assessedbyuserid");
CREATE INDEX "ix_rubric_assessment_activityobjectid" ON "rubric_assessment" ("activityobjectid");
CREATE INDEX "ix_rubric_assessment_levelachievedid" ON "rubric_assessment" ("levelachievedid");

-- Data set: Rubric Assessment (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment
CREATE TABLE "rubric_assessment_load" (
    "rubricid" BIGINT,
    "orgunitid" INTEGER,
    "userid" INTEGER NOT NULL,
    "score" NUMERIC(36,2),
    "assessedbyuserid" INTEGER,
    "assessmentdate" TIMESTAMP(6),
    "iscompleted" BOOLEAN,
    "activitytype" VARCHAR(50),
    "activityobjectid" BIGINT,
    "datecreated" TIMESTAMP(6),
    "assessmentid" BIGINT NOT NULL,
    "levelachievedid" BIGINT,
    "activityid" BIGINT NOT NULL,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("userid", "assessmentid", "activityid")
);

-- Data set: Rubric Assessment Criteria
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment-criteria
CREATE TABLE "rubric_assessment_criteria" (
    "assessmentid" BIGINT NOT NULL,
    "rubricid" BIGINT,
    "score" NUMERIC(19,9),
    "feedback" VARCHAR(4000),
    "isscoreoverridden" BOOLEAN,
    "criterionid" BIGINT NOT NULL,
    "levelachievedid" BIGINT,
    "version" BIGINT,
    PRIMARY KEY ("assessmentid", "criterionid")
);
CREATE INDEX "ix_rubric_assessment_criteria_rubricid" ON "rubric_assessment_criteria" ("rubricid");
CREATE INDEX "ix_rubric_assessment_criteria_criterionid" ON "rubric_assessment_criteria" ("criterionid");
CREATE INDEX "ix_rubric_assessment_criteria_levelachievedid" ON "rubric_assessment_criteria" ("levelachievedid");

-- Data set: Rubric Assessment Criteria (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-assessment-criteria
CREATE TABLE "rubric_assessment_criteria_load" (
    "assessmentid" BIGINT NOT NULL,
    "rubricid" BIGINT,
    "score" NUMERIC(19,9),
    "feedback" VARCHAR(4000),
    "isscoreoverridden" BOOLEAN,
    "criterionid" BIGINT NOT NULL,
    "levelachievedid" BIGINT,
    "version" BIGINT,
    PRIMARY KEY ("assessmentid", "criterionid")
);

-- Data set: Rubric Criteria Levels
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-criteria-levels
CREATE TABLE "rubric_criteria_levels" (
    "rubricid" BIGINT NOT NULL,
    "criterionid" BIGINT NOT NULL,
    "description" VARCHAR(1000),
    "feedback" VARCHAR(1000),
    "value" NUMERIC(19,9),
    "levelid" BIGINT NOT NULL,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("rubricid", "criterionid", "levelid")
);

-- Data set: Rubric Criteria Levels (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-criteria-levels
CREATE TABLE "rubric_criteria_levels_load" (
    "rubricid" BIGINT NOT NULL,
    "criterionid" BIGINT NOT NULL,
    "description" VARCHAR(1000),
    "feedback" VARCHAR(1000),
    "value" NUMERIC(19,9),
    "levelid" BIGINT NOT NULL,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("rubricid", "criterionid", "levelid")
);

-- Data set: Rubric Object Criteria
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-criteria
CREATE TABLE "rubric_object_criteria" (
    "rubricid" BIGINT,
    "criterionid" BIGINT NOT NULL,
    "name" VARCHAR(500),
    "sortorder" INTEGER,
    "criteriagroupid" BIGINT,
    "groupname" VARCHAR(256),
    "groupsortorder" INTEGER,
    "levelsetid" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("criterionid")
);
CREATE INDEX "ix_rubric_object_criteria_rubricid" ON "rubric_object_criteria" ("rubricid");
CREATE INDEX "ix_rubric_object_criteria_levelsetid" ON "rubric_object_criteria" ("levelsetid");

-- Data set: Rubric Object Criteria (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-criteria
CREATE TABLE "rubric_object_criteria_load" (
    "rubricid" BIGINT,
    "criterionid" BIGINT NOT NULL,
    "name" VARCHAR(500),
    "sortorder" INTEGER,
    "criteriagroupid" BIGINT,
    "groupname" VARCHAR(256),
    "groupsortorder" INTEGER,
    "levelsetid" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("criterionid")
);

-- Data set: Rubric Object Levels
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-levels
CREATE TABLE "rubric_object_levels" (
    "rubricid" BIGINT,
    "levelid" BIGINT NOT NULL,
    "name" VARCHAR(256),
    "description" VARCHAR(1000),
    "feedback" VARCHAR(1000),
    "value" NUMERIC(19,9),
    "rangestartvalue" NUMERIC(19,9),
    "sortorder" INTEGER,
    "levelsetid" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("levelid")
);
CREATE INDEX "ix_rubric_object_levels_rubricid" ON "rubric_object_levels" ("rubricid");
CREATE INDEX "ix_rubric_object_levels_levelsetid" ON "rubric_object_levels" ("levelsetid");

-- Data set: Rubric Object Levels (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-object-levels
CREATE TABLE "rubric_object_levels_load" (
    "rubricid" BIGINT,
    "levelid" BIGINT NOT NULL,
    "name" VARCHAR(256),
    "description" VARCHAR(1000),
    "feedback" VARCHAR(1000),
    "value" NUMERIC(19,9),
    "rangestartvalue" NUMERIC(19,9),
    "sortorder" INTEGER,
    "levelsetid" BIGINT,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("levelid")
);

-- Data set: Rubric Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-objects
CREATE TABLE "rubric_objects" (
    "rubricid" BIGINT NOT NULL,
    "name" VARCHAR(256),
    "rubricstatus" VARCHAR(256),
    "description" VARCHAR(1000),
    "rubrictype" VARCHAR(256),
    "scoringmethods" VARCHAR(256),
    "isscorevisible" BOOLEAN,
    "orgunitid" INTEGER,
    "isshared" BOOLEAN,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("rubricid")
);
CREATE INDEX "ix_rubric_objects_orgunitid" ON "rubric_objects" ("orgunitid");

-- Data set: Rubric Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubric-objects
CREATE TABLE "rubric_objects_load" (
    "rubricid" BIGINT NOT NULL,
    "name" VARCHAR(256),
    "rubricstatus" VARCHAR(256),
    "description" VARCHAR(1000),
    "rubrictype" VARCHAR(256),
    "scoringmethods" VARCHAR(256),
    "isscorevisible" BOOLEAN,
    "orgunitid" INTEGER,
    "isshared" BOOLEAN,
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("rubricid")
);

-- Data set: Rubrics Edit
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubrics-edit
CREATE TABLE "rubrics_edit" (
    "auditlogid" UUID NOT NULL,
    "rubricid" BIGINT,
    "criterionid" BIGINT,
    "levelid" BIGINT,
    "modifiedby" INTEGER,
    "modifiedobjecttype" INTEGER,
    "criteriagroupid" BIGINT,
    "modifieddate" TIMESTAMP(6),
    "previousvalue" VARCHAR(4000),
    "modifiedvalue" VARCHAR(4000),
    "islocked" BOOLEAN,
    "version" INTEGER,
    PRIMARY KEY ("auditlogid")
);
CREATE INDEX "ix_rubrics_edit_rubricid" ON "rubrics_edit" ("rubricid");
CREATE INDEX "ix_rubrics_edit_criterionid" ON "rubrics_edit" ("criterionid");
CREATE INDEX "ix_rubrics_edit_levelid" ON "rubrics_edit" ("levelid");

-- Data set: Rubrics Edit (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4535-rubrics-data-sets#rubrics-edit
CREATE TABLE "rubrics_edit_load" (
    "auditlogid" UUID NOT NULL,
    "rubricid" BIGINT,
    "criterionid" BIGINT,
    "levelid" BIGINT,
    "modifiedby" INTEGER,
    "modifiedobjecttype" INTEGER,
    "criteriagroupid" BIGINT,
    "modifieddate" TIMESTAMP(6),
    "previousvalue" VARCHAR(4000),
    "modifiedvalue" VARCHAR(4000),
    "islocked" BOOLEAN,
    "version" INTEGER,
    PRIMARY KEY ("auditlogid")
);

-- Data set: SCORM Activities
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activities
CREATE TABLE "scorm_activities" (
    "activityid" UUID NOT NULL,
    "scormobjectid" UUID,
    "parentactivityid" UUID,
    "numchildren" INTEGER,
    "internalid" VARCHAR(255),
    "title" VARCHAR(200),
    "completionthreshold" DOUBLE PRECISION,
    "passingscore" DOUBLE PRECISION,
    "passingscoreused" BOOLEAN,
    "scoremin" DOUBLE PRECISION,
    "scoremax" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("activityid")
);
CREATE INDEX "ix_scorm_activities_scormobjectid" ON "scorm_activities" ("scormobjectid");
CREATE INDEX "ix_scorm_activities_parentactivityid" ON "scorm_activities" ("parentactivityid");

-- Data set: SCORM Activities (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activities
CREATE TABLE "scorm_activities_load" (
    "activityid" UUID NOT NULL,
    "scormobjectid" UUID,
    "parentactivityid" UUID,
    "numchildren" INTEGER,
    "internalid" VARCHAR(255),
    "title" VARCHAR(200),
    "completionthreshold" DOUBLE PRECISION,
    "passingscore" DOUBLE PRECISION,
    "passingscoreused" BOOLEAN,
    "scoremin" DOUBLE PRECISION,
    "scoremax" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("activityid")
);

-- Data set: SCORM Activity Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activity-attempts
CREATE TABLE "scorm_activity_attempts" (
    "visitid" UUID NOT NULL,
    "activityid" UUID NOT NULL,
    "attemptnumber" INTEGER NOT NULL,
    "completion" VARCHAR(100),
    "success" VARCHAR(100),
    "score" DOUBLE PRECISION,
    "scoreraw" DOUBLE PRECISION,
    "timespent" DOUBLE PRECISION,
    "progress" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("visitid", "activityid", "attemptnumber")
);
CREATE INDEX "ix_scorm_activity_attempts_activityid" ON "scorm_activity_attempts" ("activityid");

-- Data set: SCORM Activity Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-activity-attempts
CREATE TABLE "scorm_activity_attempts_load" (
    "visitid" UUID NOT NULL,
    "activityid" UUID NOT NULL,
    "attemptnumber" INTEGER NOT NULL,
    "completion" VARCHAR(100),
    "success" VARCHAR(100),
    "score" DOUBLE PRECISION,
    "scoreraw" DOUBLE PRECISION,
    "timespent" DOUBLE PRECISION,
    "progress" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("visitid", "activityid", "attemptnumber")
);

-- Data set: SCORM Interaction Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-attempts
CREATE TABLE "scorm_interaction_attempts" (
    "visitid" UUID NOT NULL,
    "interactionid" UUID NOT NULL,
    "attemptnumber" INTEGER NOT NULL,
    "activityid" UUID,
    "timestamp" TIMESTAMP(6),
    "response" VARCHAR(1000),
    "result" VARCHAR(100),
    "numericresult" DOUBLE PRECISION,
    "timespent" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("visitid", "interactionid", "attemptnumber")
);
CREATE INDEX "ix_scorm_interaction_attempts_interactionid" ON "scorm_interaction_attempts" ("interactionid");
CREATE INDEX "ix_scorm_interaction_attempts_activityid" ON "scorm_interaction_attempts" ("activityid");

-- Data set: SCORM Interaction Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-attempts
CREATE TABLE "scorm_interaction_attempts_load" (
    "visitid" UUID NOT NULL,
    "interactionid" UUID NOT NULL,
    "attemptnumber" INTEGER NOT NULL,
    "activityid" UUID,
    "timestamp" TIMESTAMP(6),
    "response" VARCHAR(1000),
    "result" VARCHAR(100),
    "numericresult" DOUBLE PRECISION,
    "timespent" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("visitid", "interactionid", "attemptnumber")
);

-- Data set: SCORM Interaction Objectives
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-objectives
CREATE TABLE "scorm_interaction_objectives" (
    "interactionid" UUID NOT NULL,
    "objectiveid" UUID NOT NULL,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("interactionid", "objectiveid")
);
CREATE INDEX "ix_scorm_interaction_objectives_objectiveid" ON "scorm_interaction_objectives" ("objectiveid");

-- Data set: SCORM Interaction Objectives (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interaction-objectives
CREATE TABLE "scorm_interaction_objectives_load" (
    "interactionid" UUID NOT NULL,
    "objectiveid" UUID NOT NULL,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("interactionid", "objectiveid")
);

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

-- Data set: SCORM Interactions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-interactions
CREATE TABLE "scorm_interactions_load" (
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

-- Data set: SCORM Objective Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objective-attempts
CREATE TABLE "scorm_objective_attempts_load" (
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

-- Data set: SCORM Objectives
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objectives
CREATE TABLE "scorm_objectives" (
    "objectiveid" UUID NOT NULL,
    "scormobjectid" UUID,
    "objectivetype" VARCHAR(100),
    "activityid" UUID,
    "internalid" VARCHAR(255),
    "isprimary" BOOLEAN,
    "description" VARCHAR(250),
    "scoremin" DOUBLE PRECISION,
    "scoremax" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("objectiveid")
);
CREATE INDEX "ix_scorm_objectives_scormobjectid" ON "scorm_objectives" ("scormobjectid");
CREATE INDEX "ix_scorm_objectives_activityid" ON "scorm_objectives" ("activityid");

-- Data set: SCORM Objectives (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objectives
CREATE TABLE "scorm_objectives_load" (
    "objectiveid" UUID NOT NULL,
    "scormobjectid" UUID,
    "objectivetype" VARCHAR(100),
    "activityid" UUID,
    "internalid" VARCHAR(255),
    "isprimary" BOOLEAN,
    "description" VARCHAR(250),
    "scoremin" DOUBLE PRECISION,
    "scoremax" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("objectiveid")
);

-- Data set: SCORM Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objects
CREATE TABLE "scorm_objects" (
    "scormobjectid" UUID NOT NULL,
    "orgunitid" INTEGER,
    "contentobjectid" INTEGER,
    "contentservicecontentid" UUID,
    "contentservicerevisionid" UUID,
    "contentservicetopicid" UUID,
    "title" VARCHAR(1000),
    "description" VARCHAR(1000),
    "learningstandard" VARCHAR(100),
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("scormobjectid")
);
CREATE INDEX "ix_scorm_objects_orgunitid" ON "scorm_objects" ("orgunitid");
CREATE INDEX "ix_scorm_objects_contentobjectid" ON "scorm_objects" ("contentobjectid");
CREATE INDEX "ix_scorm_objects_lastmodifiedby" ON "scorm_objects" ("lastmodifiedby");

-- Data set: SCORM Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-objects
CREATE TABLE "scorm_objects_load" (
    "scormobjectid" UUID NOT NULL,
    "orgunitid" INTEGER,
    "contentobjectid" INTEGER,
    "contentservicecontentid" UUID,
    "contentservicerevisionid" UUID,
    "contentservicetopicid" UUID,
    "title" VARCHAR(1000),
    "description" VARCHAR(1000),
    "learningstandard" VARCHAR(100),
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    PRIMARY KEY ("scormobjectid")
);

-- Data set: SCORM Visits
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-visits
CREATE TABLE "scorm_visits" (
    "visitid" UUID NOT NULL,
    "scormobjectid" UUID,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "firstaccessdate" TIMESTAMP(6),
    "lastaccessdate" TIMESTAMP(6),
    "completeddate" TIMESTAMP(6),
    "completion" VARCHAR(100),
    "success" VARCHAR(100),
    "score" DOUBLE PRECISION,
    "timespent" INTEGER,
    "progress" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("visitid")
);
CREATE INDEX "ix_scorm_visits_scormobjectid" ON "scorm_visits" ("scormobjectid");
CREATE INDEX "ix_scorm_visits_userid" ON "scorm_visits" ("userid");
CREATE INDEX "ix_scorm_visits_orgunitid" ON "scorm_visits" ("orgunitid");

-- Data set: SCORM Visits (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4536-scorm-data-sets#scorm-visits
CREATE TABLE "scorm_visits_load" (
    "visitid" UUID NOT NULL,
    "scormobjectid" UUID,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "firstaccessdate" TIMESTAMP(6),
    "lastaccessdate" TIMESTAMP(6),
    "completeddate" TIMESTAMP(6),
    "completion" VARCHAR(100),
    "success" VARCHAR(100),
    "score" DOUBLE PRECISION,
    "timespent" INTEGER,
    "progress" DOUBLE PRECISION,
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("visitid")
);

-- Data set: SIS Course Merge Log
-- Source: https://community.d2l.com/brightspace/kb/articles/19147-sis-course-merge-data-sets#sis-course-merge-log
CREATE TABLE "sis_course_merge_log" (
    "batchid" UUID NOT NULL,
    "jobtype" VARCHAR(32),
    "status" VARCHAR(32),
    "originaltargetorgunitid" BIGINT,
    "originalsourceorgunitid" BIGINT NOT NULL,
    "sourcesystemid" BIGINT,
    "numberofcoursesinbatch" INTEGER,
    "userid" BIGINT,
    "errortype" VARCHAR(48),
    "timestamp" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("batchid", "originalsourceorgunitid", "timestamp")
);
CREATE INDEX "ix_sis_course_merge_log_originaltargetorgunitid" ON "sis_course_merge_log" ("originaltargetorgunitid");
CREATE INDEX "ix_sis_course_merge_log_originalsourceorgunitid" ON "sis_course_merge_log" ("originalsourceorgunitid");
CREATE INDEX "ix_sis_course_merge_log_userid" ON "sis_course_merge_log" ("userid");

-- Data set: SIS Course Merge Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/19147-sis-course-merge-data-sets#sis-course-merge-log
CREATE TABLE "sis_course_merge_log_load" (
    "batchid" UUID NOT NULL,
    "jobtype" VARCHAR(32),
    "status" VARCHAR(32),
    "originaltargetorgunitid" BIGINT,
    "originalsourceorgunitid" BIGINT NOT NULL,
    "sourcesystemid" BIGINT,
    "numberofcoursesinbatch" INTEGER,
    "userid" BIGINT,
    "errortype" VARCHAR(48),
    "timestamp" TIMESTAMP(6) NOT NULL,
    PRIMARY KEY ("batchid", "originalsourceorgunitid", "timestamp")
);

-- Data set: Session History
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#session-history
CREATE TABLE "session_history" (
    "sessionid" BIGINT,
    "orgid" INTEGER,
    "userid" INTEGER,
    "datestarted" TIMESTAMP(6),
    "dateended" TIMESTAMP(6),
    "lastaccessed" TIMESTAMP(6),
    "timedout" BOOLEAN,
    "historyid" BIGINT NOT NULL,
    PRIMARY KEY ("historyid")
);
CREATE INDEX "ix_session_history_userid" ON "session_history" ("userid");

-- Data set: Session History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#session-history
CREATE TABLE "session_history_load" (
    "sessionid" BIGINT,
    "orgid" INTEGER,
    "userid" INTEGER,
    "datestarted" TIMESTAMP(6),
    "dateended" TIMESTAMP(6),
    "lastaccessed" TIMESTAMP(6),
    "timedout" BOOLEAN,
    "historyid" BIGINT NOT NULL,
    PRIMARY KEY ("historyid")
);

-- Data set: Source Course Deploy History
-- Source: https://community.d2l.com/brightspace/kb/articles/33427-source-course-deploy-data-sets#source-course-deploy-history
CREATE TABLE "source_course_deploy_history" (
    "sourcecoursedeployid" BIGINT NOT NULL,
    "sourcecourseorgunitid" INTEGER NOT NULL,
    "targetcourseorgunitid" INTEGER NOT NULL,
    "userid" INTEGER,
    "status" VARCHAR(128),
    "queuedtime" TIMESTAMP(6),
    "completiontime" TIMESTAMP(6),
    PRIMARY KEY ("sourcecoursedeployid", "sourcecourseorgunitid", "targetcourseorgunitid")
);
CREATE INDEX "ix_source_course_deploy_history_sourcecourseorgunitid" ON "source_course_deploy_history" ("sourcecourseorgunitid");
CREATE INDEX "ix_source_course_deploy_history_targetcourseorgunitid" ON "source_course_deploy_history" ("targetcourseorgunitid");
CREATE INDEX "ix_source_course_deploy_history_userid" ON "source_course_deploy_history" ("userid");

-- Data set: Source Course Deploy History (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/33427-source-course-deploy-data-sets#source-course-deploy-history
CREATE TABLE "source_course_deploy_history_load" (
    "sourcecoursedeployid" BIGINT NOT NULL,
    "sourcecourseorgunitid" INTEGER NOT NULL,
    "targetcourseorgunitid" INTEGER NOT NULL,
    "userid" INTEGER,
    "status" VARCHAR(128),
    "queuedtime" TIMESTAMP(6),
    "completiontime" TIMESTAMP(6),
    PRIMARY KEY ("sourcecoursedeployid", "sourcecourseorgunitid", "targetcourseorgunitid")
);

-- Data set: Survey Attempts
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-attempts
CREATE TABLE "survey_attempts" (
    "attemptid" BIGINT NOT NULL,
    "surveyid" BIGINT,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "attemptnumber" INTEGER,
    "timestarted" TIMESTAMP(6),
    "timecompleted" TIMESTAMP(6),
    "attemptedfromorgunitid" INTEGER,
    "oldattemptnumber" INTEGER,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("attemptid")
);
CREATE INDEX "ix_survey_attempts_surveyid" ON "survey_attempts" ("surveyid");
CREATE INDEX "ix_survey_attempts_userid" ON "survey_attempts" ("userid");
CREATE INDEX "ix_survey_attempts_orgunitid" ON "survey_attempts" ("orgunitid");
CREATE INDEX "ix_survey_attempts_attemptedfromorgunitid" ON "survey_attempts" ("attemptedfromorgunitid");

-- Data set: Survey Attempts (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-attempts
CREATE TABLE "survey_attempts_load" (
    "attemptid" BIGINT NOT NULL,
    "surveyid" BIGINT,
    "userid" INTEGER,
    "orgunitid" INTEGER,
    "attemptnumber" INTEGER,
    "timestarted" TIMESTAMP(6),
    "timecompleted" TIMESTAMP(6),
    "attemptedfromorgunitid" INTEGER,
    "oldattemptnumber" INTEGER,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("attemptid")
);

-- Data set: Survey Objects
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-objects
CREATE TABLE "survey_objects" (
    "surveyid" BIGINT NOT NULL,
    "surveyname" VARCHAR(1000),
    "categoryid" BIGINT,
    "orgunitid" INTEGER,
    "description" VARCHAR(1000),
    "descriptionenabled" BOOLEAN,
    "hasinstantfeedback" BOOLEAN,
    "isanonymous" BOOLEAN,
    "isvisible" BOOLEAN,
    "submissionmessage" VARCHAR(1000),
    "footer" VARCHAR(1000),
    "footerisdisplayed" BOOLEAN,
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "displayincalendar" BOOLEAN,
    "resultid" BIGINT,
    "attemptsallowed" INTEGER,
    "sortorder" INTEGER,
    "createdby" INTEGER,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "version" BIGINT,
    "categoryname" VARCHAR(256),
    PRIMARY KEY ("surveyid")
);
CREATE INDEX "ix_survey_objects_orgunitid" ON "survey_objects" ("orgunitid");
CREATE INDEX "ix_survey_objects_createdby" ON "survey_objects" ("createdby");
CREATE INDEX "ix_survey_objects_lastmodifiedby" ON "survey_objects" ("lastmodifiedby");

-- Data set: Survey Objects (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-objects
CREATE TABLE "survey_objects_load" (
    "surveyid" BIGINT NOT NULL,
    "surveyname" VARCHAR(1000),
    "categoryid" BIGINT,
    "orgunitid" INTEGER,
    "description" VARCHAR(1000),
    "descriptionenabled" BOOLEAN,
    "hasinstantfeedback" BOOLEAN,
    "isanonymous" BOOLEAN,
    "isvisible" BOOLEAN,
    "submissionmessage" VARCHAR(1000),
    "footer" VARCHAR(1000),
    "footerisdisplayed" BOOLEAN,
    "startdate" TIMESTAMP(6),
    "enddate" TIMESTAMP(6),
    "displayincalendar" BOOLEAN,
    "resultid" BIGINT,
    "attemptsallowed" INTEGER,
    "sortorder" INTEGER,
    "createdby" INTEGER,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "version" BIGINT,
    "categoryname" VARCHAR(256),
    PRIMARY KEY ("surveyid")
);

-- Data set: Survey User Answer Responses
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answer-responses
CREATE TABLE "survey_user_answer_responses" (
    "attemptid" BIGINT NOT NULL,
    "attemptnumber" INTEGER,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "answerid" BIGINT NOT NULL,
    "sortorder" BIGINT,
    "iscorrect" BOOLEAN,
    "userselection" BIGINT,
    "useranswer" VARCHAR(1000),
    "filesetid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("attemptid", "questionid", "questionversionid", "answerid")
);
CREATE INDEX "ix_survey_user_answer_responses_questionid" ON "survey_user_answer_responses" ("questionid");
CREATE INDEX "ix_survey_user_answer_responses_questionversionid" ON "survey_user_answer_responses" ("questionversionid");
CREATE INDEX "ix_survey_user_answer_responses_answerid" ON "survey_user_answer_responses" ("answerid");

-- Data set: Survey User Answer Responses (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answer-responses
CREATE TABLE "survey_user_answer_responses_load" (
    "attemptid" BIGINT NOT NULL,
    "attemptnumber" INTEGER,
    "questionid" BIGINT NOT NULL,
    "questionversionid" BIGINT NOT NULL,
    "answerid" BIGINT NOT NULL,
    "sortorder" BIGINT,
    "iscorrect" BOOLEAN,
    "userselection" BIGINT,
    "useranswer" VARCHAR(1000),
    "filesetid" BIGINT,
    "lastmodified" TIMESTAMP(6),
    "isdeleted" BOOLEAN,
    PRIMARY KEY ("attemptid", "questionid", "questionversionid", "answerid")
);

-- Data set: Survey User Answers
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answers
-- No primary key: D2L documents key column QuestionVersionId as nullable.
CREATE TABLE "survey_user_answers" (
    "attemptid" BIGINT,
    "questionid" BIGINT,
    "questionversionid" BIGINT,
    "timecompleted" TIMESTAMP(6),
    "questionnumber" INTEGER,
    "comment" VARCHAR(1000),
    "sortorder" INTEGER,
    "score" NUMERIC(19,9),
    "page" INTEGER,
    "assigned" BOOLEAN,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "surveytimecompleted" TIMESTAMP(6)
);
CREATE INDEX "ix_survey_user_answers_attemptid" ON "survey_user_answers" ("attemptid");
CREATE INDEX "ix_survey_user_answers_questionid" ON "survey_user_answers" ("questionid");
CREATE INDEX "ix_survey_user_answers_questionversionid" ON "survey_user_answers" ("questionversionid");
CREATE INDEX "ix_survey_user_answers_lastmodifiedby" ON "survey_user_answers" ("lastmodifiedby");

-- Data set: Survey User Answers (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4538-surveys-data-sets#survey-user-answers
-- No primary key: D2L documents key column QuestionVersionId as nullable.
CREATE TABLE "survey_user_answers_load" (
    "attemptid" BIGINT,
    "questionid" BIGINT,
    "questionversionid" BIGINT,
    "timecompleted" TIMESTAMP(6),
    "questionnumber" INTEGER,
    "comment" VARCHAR(1000),
    "sortorder" INTEGER,
    "score" NUMERIC(19,9),
    "page" INTEGER,
    "assigned" BOOLEAN,
    "isdeleted" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "lastmodifiedby" INTEGER,
    "surveytimecompleted" TIMESTAMP(6)
);

-- Data set: System Access Log
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-log
CREATE TABLE "system_access_log" (
    "sessionid" VARCHAR(36) NOT NULL,
    "userid" INTEGER NOT NULL,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "state" VARCHAR(20) NOT NULL,
    "source" VARCHAR(20),
    "appversion" VARCHAR(20),
    "device" VARCHAR(50),
    "isofflinemode" BOOLEAN,
    "ipaddress" VARCHAR(45),
    PRIMARY KEY ("sessionid", "userid", "timestamp", "state")
);
CREATE INDEX "ix_system_access_log_userid" ON "system_access_log" ("userid");

-- Data set: System Access Log (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-log
CREATE TABLE "system_access_log_load" (
    "sessionid" VARCHAR(36) NOT NULL,
    "userid" INTEGER NOT NULL,
    "timestamp" TIMESTAMP(6) NOT NULL,
    "state" VARCHAR(20) NOT NULL,
    "source" VARCHAR(20),
    "appversion" VARCHAR(20),
    "device" VARCHAR(50),
    "isofflinemode" BOOLEAN,
    "ipaddress" VARCHAR(45),
    PRIMARY KEY ("sessionid", "userid", "timestamp", "state")
);

-- Data set: System Access Summary
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-summary
CREATE TABLE "system_access_summary" (
    "userid" INTEGER NOT NULL,
    "impersonatinguserid" INTEGER,
    "lastsystemaccess" TIMESTAMP(6),
    "source" VARCHAR(20),
    PRIMARY KEY ("userid")
);
CREATE INDEX "ix_system_access_summary_impersonatinguserid" ON "system_access_summary" ("impersonatinguserid");

-- Data set: System Access Summary (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4537-sessions-and-system-access-data-sets#system-access-summary
CREATE TABLE "system_access_summary_load" (
    "userid" INTEGER NOT NULL,
    "impersonatinguserid" INTEGER,
    "lastsystemaccess" TIMESTAMP(6),
    "source" VARCHAR(20),
    PRIMARY KEY ("userid")
);

-- Data set: Tools
-- Source: https://community.d2l.com/brightspace/kb/articles/4540-tools-data-sets#tools
CREATE TABLE "tools" (
    "toolid" INTEGER NOT NULL,
    "name" VARCHAR(50),
    "displayname" VARCHAR(200),
    "version" BIGINT,
    PRIMARY KEY ("toolid")
);

-- Data set: Tools (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4540-tools-data-sets#tools
CREATE TABLE "tools_load" (
    "toolid" INTEGER NOT NULL,
    "name" VARCHAR(50),
    "displayname" VARCHAR(200),
    "version" BIGINT,
    PRIMARY KEY ("toolid")
);

-- Data set: TurnItIn Submissions
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#turnitin-submissions
CREATE TABLE "turnitin_submissions" (
    "dropboxid" BIGINT,
    "submissionid" BIGINT NOT NULL,
    "fileid" BIGINT NOT NULL,
    "lastsubmissiondate" TIMESTAMP(6),
    "submissionstatus" SMALLINT,
    "submissionerrortype" SMALLINT,
    "errormessage" VARCHAR(255),
    "submittedby" INTEGER,
    "lastrefreshdate" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("submissionid", "fileid")
);
CREATE INDEX "ix_turnitin_submissions_dropboxid" ON "turnitin_submissions" ("dropboxid");
CREATE INDEX "ix_turnitin_submissions_submittedby" ON "turnitin_submissions" ("submittedby");

-- Data set: TurnItIn Submissions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4767-assignments-data-sets#turnitin-submissions
CREATE TABLE "turnitin_submissions_load" (
    "dropboxid" BIGINT,
    "submissionid" BIGINT NOT NULL,
    "fileid" BIGINT NOT NULL,
    "lastsubmissiondate" TIMESTAMP(6),
    "submissionstatus" SMALLINT,
    "submissionerrortype" SMALLINT,
    "errormessage" VARCHAR(255),
    "submittedby" INTEGER,
    "lastrefreshdate" TIMESTAMP(6),
    "lastmodified" TIMESTAMP(6),
    PRIMARY KEY ("submissionid", "fileid")
);

-- Data set: User Attribute Definitions
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-definitions
CREATE TABLE "user_attribute_definitions" (
    "attributeid" VARCHAR(128) NOT NULL,
    "name" VARCHAR(128),
    "type" VARCHAR(8),
    "allowmultiple" BOOLEAN,
    "isdefault" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "modifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("attributeid")
);
CREATE INDEX "ix_user_attribute_definitions_modifiedby" ON "user_attribute_definitions" ("modifiedby");

-- Data set: User Attribute Definitions (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-definitions
CREATE TABLE "user_attribute_definitions_load" (
    "attributeid" VARCHAR(128) NOT NULL,
    "name" VARCHAR(128),
    "type" VARCHAR(8),
    "allowmultiple" BOOLEAN,
    "isdefault" BOOLEAN,
    "lastmodified" TIMESTAMP(6),
    "modifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" BIGINT,
    PRIMARY KEY ("attributeid")
);

-- Data set: User Attribute Values
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-values
CREATE TABLE "user_attribute_values" (
    "userid" INTEGER NOT NULL,
    "attributeid" VARCHAR(128) NOT NULL,
    "value" VARCHAR(4000),
    "lastmodified" TIMESTAMP(6),
    "modifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" INTEGER,
    PRIMARY KEY ("userid", "attributeid")
);
CREATE INDEX "ix_user_attribute_values_attributeid" ON "user_attribute_values" ("attributeid");
CREATE INDEX "ix_user_attribute_values_modifiedby" ON "user_attribute_values" ("modifiedby");

-- Data set: User Attribute Values (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-attribute-values
CREATE TABLE "user_attribute_values_load" (
    "userid" INTEGER NOT NULL,
    "attributeid" VARCHAR(128) NOT NULL,
    "value" VARCHAR(4000),
    "lastmodified" TIMESTAMP(6),
    "modifiedby" INTEGER,
    "isdeleted" BOOLEAN,
    "version" INTEGER,
    PRIMARY KEY ("userid", "attributeid")
);

-- Data set: User Enrollments
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-enrollments
CREATE TABLE "user_enrollments" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "rolename" VARCHAR(60),
    "enrollmentdate" TIMESTAMP(6),
    "enrollmenttype" VARCHAR(50),
    "roleid" INTEGER,
    PRIMARY KEY ("orgunitid", "userid")
);
CREATE INDEX "ix_user_enrollments_userid" ON "user_enrollments" ("userid");
CREATE INDEX "ix_user_enrollments_roleid" ON "user_enrollments" ("roleid");

-- Data set: User Enrollments (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-enrollments
CREATE TABLE "user_enrollments_load" (
    "orgunitid" INTEGER NOT NULL,
    "userid" INTEGER NOT NULL,
    "rolename" VARCHAR(60),
    "enrollmentdate" TIMESTAMP(6),
    "enrollmenttype" VARCHAR(50),
    "roleid" INTEGER,
    PRIMARY KEY ("orgunitid", "userid")
);

-- Data set: User Logins
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-logins
CREATE TABLE "user_logins" (
    "userid" INTEGER,
    "username" VARCHAR(256),
    "ip" VARCHAR(64),
    "sessionid" INTEGER,
    "statustype" VARCHAR(50),
    "attemptdate" TIMESTAMP(6),
    "impersonatinguserid" INTEGER,
    "loginattemptid" VARCHAR(36) NOT NULL,
    "loginsource" VARCHAR(50),
    PRIMARY KEY ("loginattemptid")
);
CREATE INDEX "ix_user_logins_userid" ON "user_logins" ("userid");
CREATE INDEX "ix_user_logins_impersonatinguserid" ON "user_logins" ("impersonatinguserid");

-- Data set: User Logins (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#user-logins
CREATE TABLE "user_logins_load" (
    "userid" INTEGER,
    "username" VARCHAR(256),
    "ip" VARCHAR(64),
    "sessionid" INTEGER,
    "statustype" VARCHAR(50),
    "attemptdate" TIMESTAMP(6),
    "impersonatinguserid" INTEGER,
    "loginattemptid" VARCHAR(36) NOT NULL,
    "loginsource" VARCHAR(50),
    PRIMARY KEY ("loginattemptid")
);

-- Data set: Users
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#users
CREATE TABLE "users" (
    "userid" INTEGER NOT NULL,
    "username" VARCHAR(270),
    "orgdefinedid" VARCHAR(256),
    "firstname" VARCHAR(64),
    "middlename" VARCHAR(64),
    "lastname" VARCHAR(64),
    "isactive" BOOLEAN,
    "externalemail" VARCHAR(256),
    "creationdate" TIMESTAMP(6),
    "version" BIGINT,
    "orgroleid" INTEGER,
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("userid")
);

-- Data set: Users (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4740-users-data-sets#users
CREATE TABLE "users_load" (
    "userid" INTEGER NOT NULL,
    "username" VARCHAR(270),
    "orgdefinedid" VARCHAR(256),
    "firstname" VARCHAR(64),
    "middlename" VARCHAR(64),
    "lastname" VARCHAR(64),
    "isactive" BOOLEAN,
    "externalemail" VARCHAR(256),
    "creationdate" TIMESTAMP(6),
    "version" BIGINT,
    "orgroleid" INTEGER,
    "datedeleted" TIMESTAMP(6),
    PRIMARY KEY ("userid")
);

-- Data set: Virtual Classroom Usage
-- Source: https://community.d2l.com/brightspace/kb/articles/4541-virtual-classroom-data-sets#virtual-classroom-usage
CREATE TABLE "virtual_classroom_usage" (
    "orgunitid" INTEGER,
    "coursename" VARCHAR(255),
    "meetingid" VARCHAR(36) NOT NULL,
    "meetingname" VARCHAR(255),
    "creationuserid" INTEGER,
    "creationdate" TIMESTAMP(6),
    "scheduleddate" TIMESTAMP(6),
    "scheduledduration" INTEGER,
    "ispublished" BOOLEAN,
    "externallinksenabled" BOOLEAN,
    "wholeclassinvited" BOOLEAN,
    "iscancelled" BOOLEAN,
    "startdatetime" TIMESTAMP(6),
    "enddatetime" TIMESTAMP(6),
    "isrecorded" BOOLEAN,
    PRIMARY KEY ("meetingid")
);
CREATE INDEX "ix_virtual_classroom_usage_orgunitid" ON "virtual_classroom_usage" ("orgunitid");
CREATE INDEX "ix_virtual_classroom_usage_creationuserid" ON "virtual_classroom_usage" ("creationuserid");

-- Data set: Virtual Classroom Usage (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/4541-virtual-classroom-data-sets#virtual-classroom-usage
CREATE TABLE "virtual_classroom_usage_load" (
    "orgunitid" INTEGER,
    "coursename" VARCHAR(255),
    "meetingid" VARCHAR(36) NOT NULL,
    "meetingname" VARCHAR(255),
    "creationuserid" INTEGER,
    "creationdate" TIMESTAMP(6),
    "scheduleddate" TIMESTAMP(6),
    "scheduledduration" INTEGER,
    "ispublished" BOOLEAN,
    "externallinksenabled" BOOLEAN,
    "wholeclassinvited" BOOLEAN,
    "iscancelled" BOOLEAN,
    "startdatetime" TIMESTAMP(6),
    "enddatetime" TIMESTAMP(6),
    "isrecorded" BOOLEAN,
    PRIMARY KEY ("meetingid")
);
