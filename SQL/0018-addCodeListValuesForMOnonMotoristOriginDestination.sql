
DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0018-addCodeListValuesForMOnonMotoristOriginDestination"
)THEN PERFORM _v.register_patch(
    "0018-addCodeListValuesForMOnonMotoristOriginDestination",
    ARRAY["0003-codelist"],
    NULL
)



INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristOriginDestination' limit 1), '1', 'NA', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristOriginDestination' limit 1), '2', 'GOING TO / FROM SCHOOL', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristOriginDestination' limit 1), '3', 'GETTING ON / OFF SCHOOL BUS', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristOriginDestination' limit 1), '4', 'BOTH OF THE ABOVE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristOriginDestination' limit 1), '5', 'GOING TO / FROM TRANSIT', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristOriginDestination' limit 1), '6', 'UNKNOWN (EXPLAIN)', NULL, false, now(), 1, now(), 1);
END IF;