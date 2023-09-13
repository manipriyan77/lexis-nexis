DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name='0019-addCodeListValuesForMOcommercialVehicleOrNonCommercial'
)THEN PERFORM _v.register_patch(
    '0019-addCodeListValuesForMOcommercialVehicleOrNonCommercial',
   ARRAY['0005-codelistvalue','0018-addCodeListsMO'],
    NULL
);

INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle Or Non Commercial' limit 1), '1', 'INTERSTATE CARRIER', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle Or Non Commercial' limit 1), '2', 'INTRASTATE CARRIER', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle Or Non Commercial' limit 1), '3', 'NOT IN COMMERCE - GOVERNMENT VEHICLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle Or Non Commercial' limit 1), '4', 'NOT IN COMMERCE - RENTAL VEHICLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle Or Non Commercial' limit 1), '5', 'NOT IN COMMERCE - OTHER VEHICLE', NULL, false, now(), 1, now(), 1);
END IF;
END $$;
