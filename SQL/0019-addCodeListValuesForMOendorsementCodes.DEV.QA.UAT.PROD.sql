DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name='0019-addCodeListValuesForMOendorsementCodes'
)THEN PERFORM _v.register_patch(
    '0019-addCodeListValuesForMOendorsementCodes',
   ARRAY['0005-codelistvalue','0018-addCodeListsMO'],
    NULL
);




INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Endorsement Codes' limit 1), 'H', 'HAZARDOUS MATERIALS ', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Endorsement Codes' limit 1), 'N', 'TANK VEHICLE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Endorsement Codes' limit 1), 'P', 'PASSENGER', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Endorsement Codes' limit 1), 'S', 'SCHOOL', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Endorsement Codes' limit 1), 'T', 'DOUBLE / TRIPLE TRAILERS', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Endorsement Codes' limit 1), 'X', 'COMBINATION OF TANK VEHICLE AND HAZARDOUS MATERIALS', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Endorsement Codes' limit 1), '7', 'OTHER NON-COMMERCIAL LICENSE ENDORSEMENTS', NULL, false, now(), 1, now(), 1);
END IF;
END $$;