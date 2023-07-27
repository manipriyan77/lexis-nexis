DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name="addCodeListsMO"
)THEN PERFORM _v.register_patch(
    "addCodeListsMO",
    ARRAY["0003-codelist"],
    NULL
)

IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO alcoholUse') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14000, 'MO alcoholUse',  'MO alcoholUse', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Automation System or Systems in Vehicle') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14001, 'MO Automation System or Systems in Vehicle',  'MO Automation System or Systems in Vehicle', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO automationSystemLevelsEngagedAtTimeOfCrash') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14002, 'MO automationSystemLevelsEngagedAtTimeOfCrash',  'MO automationSystemLevelsEngagedAtTimeOfCrash', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO commercialVehicleCargoBodyType') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14003, 'MO commercialVehicleCargoBodyType',  'MO commercialVehicleCargoBodyType', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO commercialVehicleCarrierState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14004, 'MO commercialVehicleCarrierState',  'MO commercialVehicleCarrierState', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO commercialVehicleHazardousCargoPresent') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14005, 'MO commercialVehicleHazardousCargoPresent',  'MO commercialVehicleHazardousCargoPresent', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO commercialVehicleHazardousCargoReleased') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14006, 'MO commercialVehicleHazardousCargoReleased',  'MO commercialVehicleHazardousCargoReleased', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO commercialVehicleHazMatClass') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14007, 'MO commercialVehicleHazMatClass',  'MO commercialVehicleHazMatClass', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO commercialVehicleOrNonCommercial') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14008, 'MO commercialVehicleOrNonCommercial',  'MO commercialVehicleOrNonCommercial', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO commercialVehiclePlacardDisplayed') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14009, 'MO commercialVehiclePlacardDisplayed',  'MO commercialVehiclePlacardDisplayed', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO contributingTrafficConditions') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14010, 'MO contributingTrafficConditions',  'MO contributingTrafficConditions', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO county') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14011, 'MO county',  'MO county', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO crash type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14012, 'MO crash type',  'MO crash type', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Direction') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14013, 'MO Direction',  'MO Direction', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Directional Analysis for Impact with Motor Vehicle') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14014, 'MO Directional Analysis for Impact with Motor Vehicle',  'MO Directional Analysis for Impact with Motor Vehicle', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverAlcoholInterlockPresent') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14015, 'MO driverAlcoholInterlockPresent',  'MO driverAlcoholInterlockPresent', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverAlcoholInterlockRequiredOnLicense') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14016, 'MO driverAlcoholInterlockRequiredOnLicense',  'MO driverAlcoholInterlockRequiredOnLicense', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverCededControl') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14017, 'MO driverCededControl',  'MO driverCededControl', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverEjection') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14018, 'MO driverEjection',  'MO driverEjection', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverEndorsements') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14019, 'MO driverEndorsements',  'MO driverEndorsements', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverIndicationOfImproperUse') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14020, 'MO driverIndicationOfImproperUse',  'MO driverIndicationOfImproperUse', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverInjury') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14021, 'MO driverInjury',  'MO driverInjury', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverLicenseState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14022, 'MO driverLicenseState',  'MO driverLicenseState', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverLicenseStatus') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14023, 'MO driverLicenseStatus',  'MO driverLicenseStatus', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverLicenseType') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14024, 'MO driverLicenseType',  'MO driverLicenseType', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverProofOfInsurance') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14025, 'MO driverProofOfInsurance',  'MO driverProofOfInsurance', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverSeatLocation') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14026, 'MO driverSeatLocation',  'MO driverSeatLocation', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverSex') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14027, 'MO driverSex',  'MO driverSex', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14028, 'MO driverState',  'MO driverState', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO driverTransported') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14029, 'MO driverTransported',  'MO driverTransported', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO emergencyVehicleInvolvement') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14030, 'MO emergencyVehicleInvolvement',  'MO emergencyVehicleInvolvement', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO emergencyVehicleOther') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14031, 'MO emergencyVehicleOther',  'MO emergencyVehicleOther', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO endorsementCodes') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14032, 'MO endorsementCodes',  'MO endorsementCodes', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Intersecting Direction') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14033, 'MO Intersecting Direction',  'MO Intersecting Direction', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Intersection type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14034, 'MO Intersection type',  'MO Intersection type', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO lawEnforcementPresent') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14035, 'MO lawEnforcementPresent',  'MO lawEnforcementPresent', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO lightCondition') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14036, 'MO lightCondition',  'MO lightCondition', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO location') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14037, 'MO location',  'MO location', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO locationOfTheCrash') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14038, 'MO locationOfTheCrash',  'MO locationOfTheCrash', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO locationOfTheCrash1 (2)') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14039, 'MO locationOfTheCrash1 (2)',  'MO locationOfTheCrash1 (2)', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO locationOfTheCrash1') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14040, 'MO locationOfTheCrash1',  'MO locationOfTheCrash1', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO marijuanaUse') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14041, 'MO marijuanaUse',  'MO marijuanaUse', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Most Harmful Event (2)') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14042, 'MO Most Harmful Event (2)',  'MO Most Harmful Event (2)', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Most Harmful Event') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14043, 'MO Most Harmful Event',  'MO Most Harmful Event', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO municipality') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14044, 'MO municipality',  'MO municipality', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO nonMotoristActions') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14045, 'MO nonMotoristActions',  'MO nonMotoristActions', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO nonMotoristAlcoholUse') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14046, 'MO nonMotoristAlcoholUse',  'MO nonMotoristAlcoholUse', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO nonMotoristBicyleLaneOrFacility') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14047, 'MO nonMotoristBicyleLaneOrFacility',  'MO nonMotoristBicyleLaneOrFacility', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO nonMotoristCrossingRoad') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14048, 'MO nonMotoristCrossingRoad',  'MO nonMotoristCrossingRoad', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO nonMotoristInjury') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14049, 'MO nonMotoristInjury',  'MO nonMotoristInjury', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO nonMotoristLocation') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14050, 'MO nonMotoristLocation',  'MO nonMotoristLocation', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO nonMotoristOriginDestination') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14051, 'MO nonMotoristOriginDestination',  'MO nonMotoristOriginDestination', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO NonMotoristPedestrian') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14052, 'MO NonMotoristPedestrian',  'MO NonMotoristPedestrian', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO nonMotoristSex') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14053, 'MO nonMotoristSex',  'MO nonMotoristSex', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO NonMotoristTransported') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14054, 'MO NonMotoristTransported',  'MO NonMotoristTransported', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO nonMotoristType') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14055, 'MO nonMotoristType',  'MO nonMotoristType', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO occupantEjection') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14056, 'MO occupantEjection',  'MO occupantEjection', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO occupantIndicationOfImproperUse') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14057, 'MO occupantIndicationOfImproperUse',  'MO occupantIndicationOfImproperUse', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO occupantInjury') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14058, 'MO occupantInjury',  'MO occupantInjury', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO occupantSeatLocation') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14059, 'MO occupantSeatLocation',  'MO occupantSeatLocation', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO occupantSex') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14060, 'MO occupantSex',  'MO occupantSex', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO occupantState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14061, 'MO occupantState',  'MO occupantState', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO occupantTransported') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14062, 'MO occupantTransported',  'MO occupantTransported', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO ownerState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14063, 'MO ownerState',  'MO ownerState', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Roadway Condition') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14064, 'MO Roadway Condition',  'MO Roadway Condition', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO roadway direction') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14065, 'MO roadway direction',  'MO roadway direction', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO roadway maintained by') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14066, 'MO roadway maintained by',  'MO roadway maintained by', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO Roadway Surface') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14067, 'MO Roadway Surface',  'MO Roadway Surface', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO roadwayAlignment') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14068, 'MO roadwayAlignment',  'MO roadwayAlignment', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO roadwayProfile') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14069, 'MO roadwayProfile',  'MO roadwayProfile', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO trafficControlMalfunctioningOrInoperativeOrMissing') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14070, 'MO trafficControlMalfunctioningOrInoperativeOrMissing',  'MO trafficControlMalfunctioningOrInoperativeOrMissing', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO trafficControls') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14071, 'MO trafficControls',  'MO trafficControls', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO trafficway') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14072, 'MO trafficway',  'MO trafficway', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO trailerState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14073, 'MO trailerState',  'MO trailerState', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO typeOfWorkZone') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (1401408, 'MO typeOfWorkZone',  'MO typeOfWorkZone', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO vehicleBodyType') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14075, 'MO vehicleBodyType',  'MO vehicleBodyType', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO vehicleColor') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14076, 'MO vehicleColor',  'MO vehicleColor', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO vehicleState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14077, 'MO vehicleState',  'MO vehicleState', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO vehicleType') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14078, 'MO vehicleType',  'MO vehicleType', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO weatherCondition') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14079, 'MO weatherCondition',  'MO weatherCondition', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO workersPresent') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14080, 'MO workersPresent',  'MO workersPresent', false, now(), 1, now(), 1, '{ "applicationId": 14 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'MO workZone') THEN
END IF;INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (14081, 'MO workZone',  'MO workZone', false, now(), 1, now(), 1, '{ "applicationId": 14 }');