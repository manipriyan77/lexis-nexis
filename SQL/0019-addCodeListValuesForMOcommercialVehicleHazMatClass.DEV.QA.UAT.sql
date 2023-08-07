DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="0019-addCodeListValuesForMOcommercialVehicleHazMatClass"
)THEN PERFORM _v.register_patch(
    "0019-addCodeListValuesForMOcommercialVehicleHazMatClass",
   ARRAY["0005-codelistvalue","0018-addCodeListsMO"],
    NULL
)



INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle HazMat Class' limit 1), '1', 'EXPLOSIVES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle HazMat Class' limit 1), '2', 'GASES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle HazMat Class' limit 1), '3', 'FLAMMABLE LIQUID', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle HazMat Class' limit 1), '4', 'FLAMMABLE SOLIDS', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle HazMat Class' limit 1), '5', 'OXIDIZING SUBSTANCES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle HazMat Class' limit 1), '6', 'POISONOUS SUBSTANCES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle HazMat Class' limit 1), '7', 'RADIOACTIVE MATERIAL', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle HazMat Class' limit 1), '8', 'CORROSIVES', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Commercial Vehicle HazMat Class' limit 1), '9', 'MISC DANGEROUS GOODS', NULL, false, now(), 1, now(), 1);
END IF;