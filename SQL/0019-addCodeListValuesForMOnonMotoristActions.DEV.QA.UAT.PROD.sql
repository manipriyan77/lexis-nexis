
DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name='0019-addCodeListValuesForMOnonMotoristActions'
)THEN PERFORM _v.register_patch(
    '0019-addCodeListValuesForMOnonMotoristActions',
   ARRAY['0005-codelistvalue','0018-addCodeListsMO'],
    NULL
);



INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Actions' limit 1), '1', 'NA/NONE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Actions' limit 1), '2', 'GETTING ON / OFF VEHICLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Actions' limit 1), '3', 'STANDING / LYING / SITTING IN TRAFFICWAY', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Actions' limit 1), '4', 'PUSHING / WORKING ON VEHICLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Actions' limit 1), '5', 'BEHIND / IN FRONT OF PARKED / STOPPED VEHICLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Actions' limit 1), '6', 'WORKING IN TRAFFICWAY', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Actions' limit 1), '7', 'PLAYING IN TRAFFICWAY', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Actions' limit 1), '8', 'WALKING / RUNNING / CYCLING / RIDING IN TRAFFICWAY', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Actions' limit 1), '9', 'OTHER (EXPLAIN)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Non Motorist Actions' limit 1), '10', 'UNKNOWN', NULL, false, now(), 1, now(), 1);
END IF;
END $$;