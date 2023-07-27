DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name=""
)THEN PERFORM _v.register_patch(
    "file_name",
    ARRAY["0003-codelist"],
    NULL
)

INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'TX automationSystemLevelsEngagedAtTimeOfCrash' limit 1), '1', 'NO AUTOMATION (0)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'TX automationSystemLevelsEngagedAtTimeOfCrash' limit 1), '2', 'DRIVER ASSISTANCE (1)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'TX automationSystemLevelsEngagedAtTimeOfCrash' limit 1), '3', 'PARTIAL AUTOMATION (2)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'TX automationSystemLevelsEngagedAtTimeOfCrash' limit 1), '4', 'CONDITIONAL AUTOMATION (3)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'TX automationSystemLevelsEngagedAtTimeOfCrash' limit 1), '5', 'HIGH AUTOMATION (4)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'TX automationSystemLevelsEngagedAtTimeOfCrash' limit 1), '6', 'FULL AUTOMATION (5)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'TX automationSystemLevelsEngagedAtTimeOfCrash' limit 1), '7', 'AUTOMATION SYSTEM(S) ENGAGED LEVEL UNKNOWN', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'TX automationSystemLevelsEngagedAtTimeOfCrash' limit 1), '8', 'UNKNOWN', NULL, false, now(), 1, now(), 1);
END IF;