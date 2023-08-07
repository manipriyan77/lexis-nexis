DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0019-addCodeListValuesForMOcontributingTrafficConditions"
)THEN PERFORM _v.register_patch(
    "0019-addCodeListValuesForMOcontributingTrafficConditions",
   ARRAY["0005-codelistvalue","0018-addCodeListsMO"],
    NULL
)

INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Contributing Traffic Conditions' limit 1), '1', 'NA', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Contributing Traffic Conditions' limit 1), '2', 'CONGESTION AHEAD', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Contributing Traffic Conditions' limit 1), '3', 'CRASH AHEAD', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Contributing Traffic Conditions' limit 1), '4', 'OTHER INCIDENT AHEAD', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Contributing Traffic Conditions' limit 1), '5', 'UNKNOWN (EXPLAIN)', NULL, false, now(), 1, now(), 1);
END IF;