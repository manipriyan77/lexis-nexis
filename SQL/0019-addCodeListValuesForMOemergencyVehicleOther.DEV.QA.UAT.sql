DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0019-addCodeListValuesForMOemergencyVehicleOther"
)THEN PERFORM _v.register_patch(
    "0019-addCodeListValuesForMOemergencyVehicleOther",
   ARRAY["0005-codelistvalue","0018-addCodeListsMO"],
    NULL
)




INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Emergency Vehicle Other' limit 1), 'A', 'EMERGENCY VEHICLE ON EMERGENCY RUN', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Emergency Vehicle Other' limit 1), 'B', ' STATIONARY WITH EMERGENCY EQUIP. ACTIVATED', NULL, false, now(), 1, now(), 1);
END IF;
END $$;