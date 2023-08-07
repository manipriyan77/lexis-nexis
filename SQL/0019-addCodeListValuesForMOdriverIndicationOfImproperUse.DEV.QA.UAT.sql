DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0019-addCodeListValuesForMOdriverIndicationOfImproperUse"
)THEN PERFORM _v.register_patch(
    "0019-addCodeListValuesForMOdriverIndicationOfImproperUse",
   ARRAY["0005-codelistvalue","0018-addCodeListsMO"],
    NULL
)


INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Driver Indication Of Improper Use' limit 1), '1', 'YES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Driver Indication Of Improper Use' limit 1), '2', 'NO', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Driver Indication Of Improper Use' limit 1), '3', 'UNK (UNKNOWN) ', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Driver Indication Of Improper Use' limit 1), '4', 'NA', NULL, false, now(), 1, now(), 1);
END IF;
