DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0018-addCodeListValuesForMODirectionalAnalysisforImpactwithMotorVehicle"
)THEN PERFORM _v.register_patch(
    "0018-addCodeListValuesForMODirectionalAnalysisforImpactwithMotorVehicle",
    ARRAY["0003-codelist"],
    NULL
)



INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Directional Analysis for Impact with Motor Vehicle' limit 1), '1', 'FRONT TO FRONT', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Directional Analysis for Impact with Motor Vehicle' limit 1), '2', 'FRONT TO REAR', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Directional Analysis for Impact with Motor Vehicle' limit 1), '3', 'REAR TO REAR', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Directional Analysis for Impact with Motor Vehicle' limit 1), '4', 'REAR TO SIDE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Directional Analysis for Impact with Motor Vehicle' limit 1), '5', 'ANGLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Directional Analysis for Impact with Motor Vehicle' limit 1), '6', 'SIDESWIPE (SAME DIR.)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Directional Analysis for Impact with Motor Vehicle' limit 1), '7', 'SIDESWIPE (OPP. DIR.)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Directional Analysis for Impact with Motor Vehicle' limit 1), '8', 'OTHER (EXPLAIN)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Directional Analysis for Impact with Motor Vehicle' limit 1), '9', 'UNKNOWN (EXPLAIN)', NULL, false, now(), 1, now(), 1);
END IF;