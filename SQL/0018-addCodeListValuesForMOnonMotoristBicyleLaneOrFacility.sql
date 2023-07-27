
DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0018-addCodeListValuesForMOnonMotoristBicyleLaneOrFacility"
)THEN PERFORM _v.register_patch(
    "0018-addCodeListValuesForMOnonMotoristBicyleLaneOrFacility",
    ARRAY["0003-codelist"],
    NULL
)

INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristBicyleLaneOrFacility' limit 1), '1', 'SIGNED ROUTE (NO PAVEMENT MARKING)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristBicyleLaneOrFacility' limit 1), '2', 'SHARED LANE MARKINGS', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristBicyleLaneOrFacility' limit 1), '3', 'ON-STREET BIKE LANES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristBicyleLaneOrFacility' limit 1), '4', 'ON-STREET BUFFERED BIKE LANES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristBicyleLaneOrFacility' limit 1), '5', 'SEPARATED BIKE LANES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristBicyleLaneOrFacility' limit 1), '6', 'OFF-STREET TRAILS / SIDEPATHS ', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristBicyleLaneOrFacility' limit 1), '7', 'OTHER (EXPLAIN)', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristBicyleLaneOrFacility' limit 1), 'U', 'UNKNOWN', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO nonMotoristBicyleLaneOrFacility' limit 1), 'N', 'NOT APPLICABLE', NULL, false, now(), 1, now(), 1);
END IF;