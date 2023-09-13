
DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name='0019-addCodeListValuesForMOMostHarmfulEvent'
)THEN PERFORM _v.register_patch(
    '0019-addCodeListValuesForMOMostHarmfulEvent',
   ARRAY['0005-codelistvalue','0018-addCodeListsMO'],
    NULL
);




INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Most Harmful Event' limit 1), '1', 'OVERTURNING', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Most Harmful Event' limit 1), '2', 'FIRE / EXPLOSION', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Most Harmful Event' limit 1), '3', 'IMMERSION', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Most Harmful Event' limit 1), '4', 'JACKKNIFE', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Most Harmful Event' limit 1), '5', 'FELL / JUMPED FROM MV', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Most Harmful Event' limit 1), '6', 'CARGO / EQUIPMENT LOSS OR SHIFT', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Most Harmful Event' limit 1), '7', 'OTHER NON-COLLISION', NULL, false, now(), 1, now(), 1);
INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = 'MO Most Harmful Event' limit 1), '8', 'THROWN OR FALLING OBJECT', NULL, false, now(), 1, now(), 1);
END IF;
END $$;