
DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0019-addCodeListValuesForMOvehicleType"
)THEN PERFORM _v.register_patch(
    "0019-addCodeListValuesForMOvehicleType",
   ARRAY["0005-codelistvalue","0018-addCodeListsMO"],
    NULL
)

INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Vehicle Type' limit 1), '1', 'MOTOR VEHICLE IN TRANSPORT', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Vehicle Type' limit 1), '2', 'PARKED MOTOR VEHICLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Vehicle Type' limit 1), '3', 'WORKING MOTOR VEHICLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Vehicle Type' limit 1), 'U', 'UNKNOWN', NULL, false, now(), 1, now(), 1);
END IF;
END $$;