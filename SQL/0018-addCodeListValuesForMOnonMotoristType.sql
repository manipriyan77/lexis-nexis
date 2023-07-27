
DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0018-addCodeListValuesForMOnonMotoristType"
)THEN PERFORM _v.register_patch(
    "0018-addCodeListValuesForMOnonMotoristType",
    ARRAY["0003-codelist"],
    NULL
)



INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristType' limit 1), '1', 'NA', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristType' limit 1), '2', 'PEDESTRIAN', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristType' limit 1), '3', 'PEDESTRIAN ON PERSONAL CONVEYANCE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristType' limit 1), '4', 'PEDALCYLIST', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristType' limit 1), '5', 'OTHER NON-MOTORIST', NULL, false, now(), 1, now(), 1);
END IF;