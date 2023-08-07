DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0019-addCodeListValuesForMOdriverEjection"
)THEN PERFORM _v.register_patch(
    "0019-addCodeListValuesForMOdriverEjection",
   ARRAY["0005-codelistvalue","0018-addCodeListsMO"],
    NULL
)


INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Driver Ejection' limit 1), '1', 'NOT EJECTED', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Driver Ejection' limit 1), '2', 'EJECTED, TOTALLY', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Driver Ejection' limit 1), '3', 'EJECTED, PARTIALLY', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Driver Ejection' limit 1), '4', 'NOT APPLICABLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Driver Ejection' limit 1), '88', 'UNKNOWN', NULL, false, now(), 1, now(), 1);
END IF;