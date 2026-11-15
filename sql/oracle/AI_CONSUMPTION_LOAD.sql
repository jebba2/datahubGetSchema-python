-- Data set: AI Consumption (staging table)
-- Source: https://community.d2l.com/brightspace/kb/articles/34440-ai-consumption-data-sets#ai-consumption
CREATE TABLE "AI_CONSUMPTION_LOAD" (
    "CONSUMPTIONID" VARCHAR2(255 CHAR) NOT NULL,
    "USERID" NUMBER(10),
    "ORGUNITID" NUMBER(10),
    "DATE" TIMESTAMP(7),
    "GENERATIONCOUNT" NUMBER(10),
    "CONSUMPTIONSOURCE" NUMBER(10),
    PRIMARY KEY ("CONSUMPTIONID")
);
