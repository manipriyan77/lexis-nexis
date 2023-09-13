
DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name='0019-addCodeListValuesForMOoccupantSex'
)THEN PERFORM _v.register_patch(
    '0019-addCodeListValuesForMOoccupantSex',
   ARRAY['0005-codelistvalue','0018-addCodeListsMO'],
    NULL
);


INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Occupant Sex' limit 1), '1', 'MALE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Occupant Sex' limit 1), '2', 'FEMALE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Occupant Sex' limit 1), '88', 'UNKNOWN', NULL, false, now(), 1, now(), 1);
END IF;
END $$;