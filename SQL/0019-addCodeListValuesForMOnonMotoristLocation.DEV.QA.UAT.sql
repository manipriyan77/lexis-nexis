
DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0019-addCodeListValuesForMOnonMotoristLocation"
)THEN PERFORM _v.register_patch(
    "0019-addCodeListValuesForMOnonMotoristLocation",
   ARRAY["0005-codelistvalue","0018-addCodeListsMO"],
    NULL
)


INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Location' limit 1), '1', 'ON ROADWAY WITHIN CROSSWALK / INTERSECTION', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Location' limit 1), '2', 'ON SIDEWALK', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Location' limit 1), '3', 'IN DRIVEWAY ACCESS', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Location' limit 1), '4', 'ON ROADWAY OUTSIDE CROSSWALK / INTERSECTION', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Location' limit 1), '5', 'ON MEDIAN / SEPARATOR / CROSSING ISLAND', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Location' limit 1), '6', 'SHOULDER / ROADSIDE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Location' limit 1), '7', 'NON-TRAFFICWAY AREA', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Location' limit 1), '8', 'SHARED-USE PATH OR TRAIL', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Location' limit 1), '9', 'OTHER (EXPLAIN)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Location' limit 1), '10', 'UNKNOWN', NULL, false, now(), 1, now(), 1);
END IF;