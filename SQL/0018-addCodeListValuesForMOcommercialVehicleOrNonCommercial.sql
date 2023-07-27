DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0018-addCodeListValuesForMOcommercialVehicleOrNonCommercial"
)THEN PERFORM _v.register_patch(
    "0018-addCodeListValuesForMOcommercialVehicleOrNonCommercial",
    ARRAY["0003-codelist"],
    NULL
)

INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO commercialVehicleOrNonCommercial' limit 1), '1', 'INTERSTATE CARRIER', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO commercialVehicleOrNonCommercial' limit 1), '2', 'INTRASTATE CARRIER', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO commercialVehicleOrNonCommercial' limit 1), '3', 'NOT IN COMMERCE�GOVERNMENT VEHICLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO commercialVehicleOrNonCommercial' limit 1), '4', 'NOT IN COMMERCE�RENTAL VEHICLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO commercialVehicleOrNonCommercial' limit 1), '5', 'NOT IN COMMERCE�OTHER VEHICLE', NULL, false, now(), 1, now(), 1);
END IF;
