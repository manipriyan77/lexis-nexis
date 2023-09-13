DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name='0018-addCodeListsMO'
)THEN PERFORM _v.register_patch(
    '0018-addCodeListsMO',
    ARRAY['0003-codelist'],
    NULL
);

IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Alcohol Use') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14000, 'MO Alcohol Use',  'MO Alcohol Use', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Automation System or Systems in Vehicle') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14001, 'MO Automation System or Systems in Vehicle',  'MO Automation System or Systems in Vehicle', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Automation System Levels Engaged At Time Of Crash') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14002, 'MO Automation System Levels Engaged At Time Of Crash',  'MO Automation System Levels Engaged At Time Of Crash', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Commercial Vehicle Cargo Body Type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14003, 'MO Commercial Vehicle Cargo Body Type',  'MO Commercial Vehicle Cargo Body Type', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Commercial Vehicle Carrier State') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14004, 'MO Commercial Vehicle Carrier State',  'MO Commercial Vehicle Carrier State', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Commercial Vehicle Hazardous Cargo Present') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14005, 'MO Commercial Vehicle Hazardous Cargo Present',  'MO Commercial Vehicle Hazardous Cargo Present', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Commercial Vehicle Hazardous Cargo Released') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14006, 'MO Commercial Vehicle Hazardous Cargo Released',  'MO Commercial Vehicle Hazardous Cargo Released', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Commercial Vehicle HazMat Class') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14007, 'MO Commercial Vehicle HazMat Class',  'MO Commercial Vehicle HazMat Class', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Commercial Vehicle Or Non Commercial') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14008, 'MO Commercial Vehicle Or Non Commercial',  'MO Commercial Vehicle Or Non Commercial', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Commercial Vehicle Placard Displayed') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14009, 'MO Commercial Vehicle Placard Displayed',  'MO Commercial Vehicle Placard Displayed', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Contributing Traffic Conditions') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14010, 'MO Contributing Traffic Conditions',  'MO Contributing Traffic Conditions', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO County') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14011, 'MO County',  'MO County', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Crash Type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14012, 'MO Crash Type',  'MO Crash Type', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Direction') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14013, 'MO Direction',  'MO Direction', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Directional Analysis For Impact With Motor Vehicle') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14014, 'MO Directional Analysis For Impact With Motor Vehicle',  'MO Directional Analysis For Impact With Motor Vehicle', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Alcohol Interlock Present') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14015, 'MO Driver Alcohol Interlock Present',  'MO Driver Alcohol Interlock Present', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Alcohol Interlock Required On License') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14016, 'MO Driver Alcohol Interlock Required On License',  'MO Driver Alcohol Interlock Required On License', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Ceded Control') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14017, 'MO Driver Ceded Control',  'MO Driver Ceded Control', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Ejection') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14018, 'MO Driver Ejection',  'MO Driver Ejection', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Endorsements') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14019, 'MO Driver Endorsements',  'MO Driver Endorsements', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Indication Of Improper Use') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14020, 'MO Driver Indication Of Improper Use',  'MO Driver Indication Of Improper Use', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Injury') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14021, 'MO Driver Injury',  'MO Driver Injury', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver License State') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14022, 'MO Driver License State',  'MO Driver License State', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver License Status') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14023, 'MO Driver License Status',  'MO Driver License Status', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver License Type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14024, 'MO Driver License Type',  'MO Driver License Type', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Proof Of Insurance') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14025, 'MO Driver Proof Of Insurance',  'MO Driver Proof Of Insurance', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Seat Location') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14026, 'MO Driver Seat Location',  'MO Driver Seat Location', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Sex') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14027, 'MO Driver Sex',  'MO Driver Sex', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver State') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14028, 'MO Driver State',  'MO Driver State', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Driver Transported') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14029, 'MO Driver Transported',  'MO Driver Transported', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Emergency Vehicle Involvement') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14030, 'MO Emergency Vehicle Involvement',  'MO Emergency Vehicle Involvement', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Emergency Vehicle Other') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14031, 'MO Emergency Vehicle Other',  'MO Emergency Vehicle Other', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Endorsement Codes') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14032, 'MO Endorsement Codes',  'MO Endorsement Codes', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Intersecting Direction') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14033, 'MO Intersecting Direction',  'MO Intersecting Direction', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Intersection Type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14034, 'MO Intersection Type',  'MO Intersection Type', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Law Enforcement Present') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14035, 'MO Law Enforcement Present',  'MO Law Enforcement Present', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Light Condition') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14036, 'MO Light Condition',  'MO Light Condition', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Location') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14037, 'MO Location',  'MO Location', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Location Of The Crash') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14038, 'MO Location Of The Crash',  'MO Location Of The Crash', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Location Of The Crash1(2)') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14039, 'MO Location Of The Crash1(2)',  'MO Location Of The Crash1(2)', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Location Of The Crash1') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14040, 'MO Location Of The Crash1',  'MO Location Of The Crash1', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Marijuana Use') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14041, 'MO Marijuana Use',  'MO Marijuana Use', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Most Harmful Event (2)') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14042, 'MO Most Harmful Event (2)',  'MO Most Harmful Event (2)', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Most Harmful Event') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14043, 'MO Most Harmful Event',  'MO Most Harmful Event', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Municipality') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14044, 'MO Municipality',  'MO Municipality', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Actions') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14045, 'MO Non Motorist Actions',  'MO Non Motorist Actions', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Alcohol Use') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14046, 'MO Non Motorist Alcohol Use',  'MO Non Motorist Alcohol Use', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Bicyle Lane Or Facility') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14047, 'MO Non Motorist Bicyle Lane Or Facility',  'MO Non Motorist Bicyle Lane Or Facility', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Crossing Road') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14048, 'MO Non Motorist Crossing Road',  'MO Non Motorist Crossing Road', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Injury') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14049, 'MO Non Motorist Injury',  'MO Non Motorist Injury', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Location') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14050, 'MO Non Motorist Location',  'MO Non Motorist Location', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Origin Destination') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14051, 'MO Non Motorist Origin Destination',  'MO Non Motorist Origin Destination', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Pedestrian') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14052, 'MO Non Motorist Pedestrian',  'MO Non Motorist Pedestrian', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Sex') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14053, 'MO Non Motorist Sex',  'MO Non Motorist Sex', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Transported') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14054, 'MO Non Motorist Transported',  'MO Non Motorist Transported', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Non Motorist Type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14055, 'MO Non Motorist Type',  'MO Non Motorist Type', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Occupant Ejection') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14056, 'MO Occupant Ejection',  'MO Occupant Ejection', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Occupant Indication Of Improper Use') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14057, 'MO Occupant Indication Of Improper Use',  'MO Occupant Indication Of Improper Use', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Occupant Injury') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14058, 'MO Occupant Injury',  'MO Occupant Injury', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Occupant Seat Location') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14059, 'MO Occupant Seat Location',  'MO Occupant Seat Location', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Occupant Sex') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14060, 'MO Occupant Sex',  'MO Occupant Sex', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Occupant State') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14061, 'MO Occupant State',  'MO Occupant State', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Occupant Transported') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14062, 'MO Occupant Transported',  'MO Occupant Transported', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Owner State') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14063, 'MO Owner State',  'MO Owner State', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Roadway Condition') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14064, 'MO Roadway Condition',  'MO Roadway Condition', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Roadway Direction') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14065, 'MO Roadway Direction',  'MO Roadway Direction', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Roadway Maintained By') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14066, 'MO Roadway Maintained By',  'MO Roadway Maintained By', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Roadway Surface') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14067, 'MO Roadway Surface',  'MO Roadway Surface', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Roadway Alignment') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14068, 'MO Roadway Alignment',  'MO Roadway Alignment', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Roadway Profile') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14069, 'MO Roadway Profile',  'MO Roadway Profile', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Traffic Control Malfunctioning Or Inoperative Or Missing') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14070, 'MO Traffic Control Malfunctioning Or Inoperative Or Missing',  'MO Traffic Control Malfunctioning Or Inoperative Or Missing', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Traffic Controls') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14071, 'MO Traffic Controls',  'MO Traffic Controls', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Trafficway') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14072, 'MO Trafficway',  'MO Trafficway', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Trailer State') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14073, 'MO Trailer State',  'MO Trailer State', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Type Of Work Zone') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14074, 'MO Type Of Work Zone',  'MO Type Of Work Zone', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Vehicle Body Type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14075, 'MO Vehicle Body Type',  'MO Vehicle Body Type', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Vehicle Color') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14076, 'MO Vehicle Color',  'MO Vehicle Color', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Vehicle State') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14077, 'MO Vehicle State',  'MO Vehicle State', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Vehicle Type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14078, 'MO Vehicle Type',  'MO Vehicle Type', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Weather Condition') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14079, 'MO Weather Condition',  'MO Weather Condition', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Workers Present') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14080, 'MO Workers Present',  'MO Workers Present', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Work Zone') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14081, 'MO Work Zone',  'MO Work Zone', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
END IF;

END $$;