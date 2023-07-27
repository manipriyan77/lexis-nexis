DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0018-addCodeListValuesForMOcontributingTrafficConditions"
)THEN PERFORM _v.register_patch(
    "0018-addCodeListValuesForMOcontributingTrafficConditions",
    ARRAY["0003-codelist"],
    NULL
)

INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO contributingTrafficConditions' limit 1), '1', 'NA', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO contributingTrafficConditions' limit 1), '2', 'CONGESTION AHEAD', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO contributingTrafficConditions' limit 1), '3', 'CRASH AHEAD', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO contributingTrafficConditions' limit 1), '4', 'OTHER INCIDENT AHEAD', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO contributingTrafficConditions' limit 1), '5', 'UNKNOWN (EXPLAIN)', NULL, false, now(), 1, now(), 1);
END IF;