DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="addCodeListValuesForMOemergencyVehicleOther"
)THEN PERFORM _v.register_patch(
    "addCodeListValuesForMOemergencyVehicleOther",
    ARRAY["0003-codelist"],
    NULL
)




INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO emergencyVehicleOther' limit 1), 'A', 'EMERGENCY VEHICLE ON EMERGENCY RUN', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO emergencyVehicleOther' limit 1), 'B', ' STATIONARY WITH EMERGENCY EQUIP. ACTIVATED', NULL, false, now(), 1, now(), 1);
END IF;