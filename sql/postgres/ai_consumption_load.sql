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
