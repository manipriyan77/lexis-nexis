DO $$ BEGIN IF NOT EXISTS (
    SELECT 
    1
    FROM
     _v.patches
    WHERE
     patch_name=""
)THEN PERFORM _v.register_patch(
    "file_name",
    ARRAY["0003-codelist"],
    NULL
)

IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX alcoholUse') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (660, 'TX alcoholUse',  'TX alcoholUse', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX Automation System or Systems in Vehicle') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (661, 'TX Automation System or Systems in Vehicle',  'TX Automation System or Systems in Vehicle', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX automationSystemLevelsEngagedAtTimeOfCrash') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (662, 'TX automationSystemLevelsEngagedAtTimeOfCrash',  'TX automationSystemLevelsEngagedAtTimeOfCrash', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX commercialVehicleCargoBodyType') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (663, 'TX commercialVehicleCargoBodyType',  'TX commercialVehicleCargoBodyType', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX commercialVehicleCarrierState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (664, 'TX commercialVehicleCarrierState',  'TX commercialVehicleCarrierState', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX commercialVehicleHazardousCargoPresent') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (665, 'TX commercialVehicleHazardousCargoPresent',  'TX commercialVehicleHazardousCargoPresent', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX commercialVehicleHazardousCargoReleased') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (666, 'TX commercialVehicleHazardousCargoReleased',  'TX commercialVehicleHazardousCargoReleased', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX commercialVehicleHazMatClass') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (667, 'TX commercialVehicleHazMatClass',  'TX commercialVehicleHazMatClass', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX commercialVehicleOrNonCommercial') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (668, 'TX commercialVehicleOrNonCommercial',  'TX commercialVehicleOrNonCommercial', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX commercialVehiclePlacardDisplayed') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (669, 'TX commercialVehiclePlacardDisplayed',  'TX commercialVehiclePlacardDisplayed', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX contributingTrafficConditions') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (670, 'TX contributingTrafficConditions',  'TX contributingTrafficConditions', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX county') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (671, 'TX county',  'TX county', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX crash type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (672, 'TX crash type',  'TX crash type', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX Direction') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (673, 'TX Direction',  'TX Direction', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX Directional Analysis for Impact with Motor Vehicle') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (674, 'TX Directional Analysis for Impact with Motor Vehicle',  'TX Directional Analysis for Impact with Motor Vehicle', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverAlcoholInterlockPresent') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (675, 'TX driverAlcoholInterlockPresent',  'TX driverAlcoholInterlockPresent', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverAlcoholInterlockRequiredOnLicense') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (676, 'TX driverAlcoholInterlockRequiredOnLicense',  'TX driverAlcoholInterlockRequiredOnLicense', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverCededControl') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (677, 'TX driverCededControl',  'TX driverCededControl', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverEjection') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (678, 'TX driverEjection',  'TX driverEjection', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverEndorsements') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (679, 'TX driverEndorsements',  'TX driverEndorsements', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverIndicationOfImproperUse') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (680, 'TX driverIndicationOfImproperUse',  'TX driverIndicationOfImproperUse', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverInjury') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (681, 'TX driverInjury',  'TX driverInjury', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverLicenseState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (682, 'TX driverLicenseState',  'TX driverLicenseState', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverLicenseStatus') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (683, 'TX driverLicenseStatus',  'TX driverLicenseStatus', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverLicenseType') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (684, 'TX driverLicenseType',  'TX driverLicenseType', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverProofOfInsurance') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (685, 'TX driverProofOfInsurance',  'TX driverProofOfInsurance', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverSeatLocation') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (686, 'TX driverSeatLocation',  'TX driverSeatLocation', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverSex') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (687, 'TX driverSex',  'TX driverSex', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (688, 'TX driverState',  'TX driverState', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX driverTransported') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (689, 'TX driverTransported',  'TX driverTransported', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX emergencyVehicleInvolvement') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (690, 'TX emergencyVehicleInvolvement',  'TX emergencyVehicleInvolvement', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX emergencyVehicleOther') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (691, 'TX emergencyVehicleOther',  'TX emergencyVehicleOther', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX endorsementCodes') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (692, 'TX endorsementCodes',  'TX endorsementCodes', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX Intersecting Direction') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (693, 'TX Intersecting Direction',  'TX Intersecting Direction', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX Intersection type') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (694, 'TX Intersection type',  'TX Intersection type', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX lawEnforcementPresent') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (695, 'TX lawEnforcementPresent',  'TX lawEnforcementPresent', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX lightCondition') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (696, 'TX lightCondition',  'TX lightCondition', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX location') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (697, 'TX location',  'TX location', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX locationOfTheCrash') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (698, 'TX locationOfTheCrash',  'TX locationOfTheCrash', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX locationOfTheCrash1 (2)') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (699, 'TX locationOfTheCrash1 (2)',  'TX locationOfTheCrash1 (2)', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX locationOfTheCrash1') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (700, 'TX locationOfTheCrash1',  'TX locationOfTheCrash1', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX marijuanaUse') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (701, 'TX marijuanaUse',  'TX marijuanaUse', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX Most Harmful Event (2)') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (702, 'TX Most Harmful Event (2)',  'TX Most Harmful Event (2)', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX Most Harmful Event') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (703, 'TX Most Harmful Event',  'TX Most Harmful Event', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX municipality') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (704, 'TX municipality',  'TX municipality', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX nonMotoristActions') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (705, 'TX nonMotoristActions',  'TX nonMotoristActions', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX nonMotoristAlcoholUse') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (706, 'TX nonMotoristAlcoholUse',  'TX nonMotoristAlcoholUse', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX nonMotoristBicyleLaneOrFacility') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (707, 'TX nonMotoristBicyleLaneOrFacility',  'TX nonMotoristBicyleLaneOrFacility', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX nonMotoristCrossingRoad') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (708, 'TX nonMotoristCrossingRoad',  'TX nonMotoristCrossingRoad', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX nonMotoristInjury') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (709, 'TX nonMotoristInjury',  'TX nonMotoristInjury', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX nonMotoristLocation') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (710, 'TX nonMotoristLocation',  'TX nonMotoristLocation', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX nonMotoristOriginDestination') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (711, 'TX nonMotoristOriginDestination',  'TX nonMotoristOriginDestination', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX NonMotoristPedestrian') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (712, 'TX NonMotoristPedestrian',  'TX NonMotoristPedestrian', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX nonMotoristSex') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (713, 'TX nonMotoristSex',  'TX nonMotoristSex', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX NonMotoristTransported') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (714, 'TX NonMotoristTransported',  'TX NonMotoristTransported', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX nonMotoristType') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (715, 'TX nonMotoristType',  'TX nonMotoristType', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX occupantEjection') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (716, 'TX occupantEjection',  'TX occupantEjection', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX occupantIndicationOfImproperUse') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (717, 'TX occupantIndicationOfImproperUse',  'TX occupantIndicationOfImproperUse', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX occupantInjury') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (718, 'TX occupantInjury',  'TX occupantInjury', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX occupantSeatLocation') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (719, 'TX occupantSeatLocation',  'TX occupantSeatLocation', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX occupantSex') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (720, 'TX occupantSex',  'TX occupantSex', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX occupantState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (721, 'TX occupantState',  'TX occupantState', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX occupantTransported') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (722, 'TX occupantTransported',  'TX occupantTransported', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX ownerState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (723, 'TX ownerState',  'TX ownerState', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX Roadway Condition') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (724, 'TX Roadway Condition',  'TX Roadway Condition', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX roadway direction') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (725, 'TX roadway direction',  'TX roadway direction', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX roadway maintained by') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (726, 'TX roadway maintained by',  'TX roadway maintained by', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX Roadway Surface') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (727, 'TX Roadway Surface',  'TX Roadway Surface', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX roadwayAlignment') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (728, 'TX roadwayAlignment',  'TX roadwayAlignment', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX roadwayProfile') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (729, 'TX roadwayProfile',  'TX roadwayProfile', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX trafficControlMalfunctioningOrInoperativeOrMissing') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (730, 'TX trafficControlMalfunctioningOrInoperativeOrMissing',  'TX trafficControlMalfunctioningOrInoperativeOrMissing', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX trafficControls') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (731, 'TX trafficControls',  'TX trafficControls', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX trafficway') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (732, 'TX trafficway',  'TX trafficway', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX trailerState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (733, 'TX trailerState',  'TX trailerState', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX typeOfWorkZone') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (734, 'TX typeOfWorkZone',  'TX typeOfWorkZone', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX vehicleBodyType') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (735, 'TX vehicleBodyType',  'TX vehicleBodyType', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX vehicleColor') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (736, 'TX vehicleColor',  'TX vehicleColor', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX vehicleState') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (737, 'TX vehicleState',  'TX vehicleState', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX vehicleType') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (738, 'TX vehicleType',  'TX vehicleType', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX weatherCondition') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (739, 'TX weatherCondition',  'TX weatherCondition', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX workersPresent') THEN
INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (740, 'TX workersPresent',  'TX workersPresent', false, now(), 1, now(), 1, '{ "applicationId": 17 }');
END IF;
IF NOT EXISTS ( select 1 from codelist WHERE name  =  'TX workZone') THEN
END IF;INSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES (741, 'TX workZone',  'TX workZone', false, now(), 1, now(), 1, '{ "applicationI
d": 17 }');