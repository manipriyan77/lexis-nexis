DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name='0019-addCodeListValuesForMOemergencyVehicleInvolvement'
)THEN PERFORM _v.register_patch(
    '0019-addCodeListValuesForMOemergencyVehicleInvolvement',
   ARRAY['0005-codelistvalue','0018-addCodeListsMO'],
    NULL
);



INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Emergency Vehicle Involvement' limit 1), '1', 'NA', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Emergency Vehicle Involvement' limit 1), '2', 'POLICE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Emergency Vehicle Involvement' limit 1), '3', 'FIRE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Emergency Vehicle Involvement' limit 1), '4', 'AMBULANCE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Emergency Vehicle Involvement' limit 1), '5', 'OTHER', NULL, false, now(), 1, now(), 1);
END IF;
END $$;