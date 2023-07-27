DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0018-addCodeListValuesForMOdriverProofOfInsurance"
)THEN PERFORM _v.register_patch(
    "0018-addCodeListValuesForMOdriverProofOfInsurance",
    ARRAY["0003-codelist"],
    NULL
)


INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO driverProofOfInsurance' limit 1), '1', 'YES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO driverProofOfInsurance' limit 1), '2', 'NO', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO driverProofOfInsurance' limit 1), '3', 'NOT REQUIRED', NULL, false, now(), 1, now(), 1);
END IF;
