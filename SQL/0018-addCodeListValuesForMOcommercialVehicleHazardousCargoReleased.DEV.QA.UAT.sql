DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0018-addCodeListValuesForMOcommercialVehicleHazardousCargoReleased"
)THEN PERFORM _v.register_patch(
    "0018-addCodeListValuesForMOcommercialVehicleHazardousCargoReleased",
    ARRAY["0003-codelist"],
    NULL
)


INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO commercialVehicleHazardousCargoReleased' limit 1), '1', 'YES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO commercialVehicleHazardousCargoReleased' limit 1), '2', 'NO', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO commercialVehicleHazardousCargoReleased' limit 1), '3', 'UNKNOWN', NULL, false, now(), 1, now(), 1);
END IF;
