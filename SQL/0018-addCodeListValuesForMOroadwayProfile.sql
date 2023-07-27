
DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0018-addCodeListValuesForMOroadwayProfile"
)THEN PERFORM _v.register_patch(
    "0018-addCodeListValuesForMOroadwayProfile",
    ARRAY["0003-codelist"],
    NULL
)

INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO roadwayProfile' limit 1), '1', 'LEVEL', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO roadwayProfile' limit 1), '2', 'UPHILL', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO roadwayProfile' limit 1), '3', 'DOWNHILL', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO roadwayProfile' limit 1), '1', 'HILLCREST', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO roadwayProfile' limit 1), '2', 'DIP', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO roadwayProfile' limit 1), '3', 'UNKNOWN (EXPLAIN)', NULL, false, now(), 1, now(), 1);
END IF;