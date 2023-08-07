
DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0019-addCodeListValuesForMOtrafficway"
)THEN PERFORM _v.register_patch(
    "0019-addCodeListValuesForMOtrafficway",
   ARRAY["0005-codelistvalue","0018-addCodeListsMO"],
    NULL
)



INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Trafficway' limit 1), '1', 'ONE-WAY', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Trafficway' limit 1), '2', 'TWO-WAY; NOT DIVIDED; CONTINUOUS CENTER TURN LANE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Trafficway' limit 1), '3', 'TWO-WAY; NOT DIVIDED', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Trafficway' limit 1), '4', 'TWO-WAY; DIVIDED; UNPROTECTED MEDIAN', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Trafficway' limit 1), '5', 'TWO-WAY; DIVIDED; POSITIVE MEDIAN BARRIER', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Trafficway' limit 1), '6', 'OTHER', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Trafficway' limit 1), '7', 'UNKNOWN', NULL, false, now(), 1, now(), 1);
END IF;