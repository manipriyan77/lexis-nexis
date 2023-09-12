let report = {
  ...data,
};

const positiveDrugTestResultsChunk = 5;
const unitsChunkDE = 4;

function convertMilitaryToStandardTime(time) {
  time = time.split(":");

  let hours = Number(time[0]);
  let minutes = Number(time[1]);

  let timeValue = "";

  if (hours > 0 && hours <= 12) {
    timeValue = "" + hours;
  } else if (hours > 12) {
    timeValue = "" + (hours - 12);
  } else if (hours == 0) {
    timeValue = "12";
  }

  timeValue += minutes < 10 ? ":0" + minutes : ":" + minutes;

  timeValue += hours >= 12 ? " P.M." : " A.M.";

  return timeValue;
}

function normalizeCrashLocationAddress(data) {
  let line1Location = "";

  let line2Location = "";

  let crashLocationAddress = "";

  let nearAnIntersection = "";

  if (data.outsideOfCityLimits === false) {
    line1Location = data?.parkingLot
      ? `${data.locationPropertyAddressNumber || ""} ${data.locationPrimaryRoad.name || ""}`
      : `${data.locationPrimaryRoadAddressNumber || ""} ${data.locationPrimaryRoad.name || ""} `;
  } else {
    line1Location = data?.parkingLot
      ? `${data.locationPropertyAddressNumber || ""} ${
          data.locationPrimaryRoadAlternate.toUpperCase() || ""
        }`
      : `${data.locationPrimaryRoadAddressNumber || ""} ${
          data.locationPrimaryRoadAlternate.toUpperCase() || ""
        } `;
  }

  nearAnIntersection =
    data.locationNotAtIntersectionDistance !== undefined &&
    data.locationNotAtIntersectionDistance !== ""
      ? `${data.locationNotAtIntersectionDistance}`
      : nearAnIntersection;

  nearAnIntersection =
    data.locationNotAtIntersectionDistanceUnit !== undefined &&
    data.locationNotAtIntersectionDistanceUnit !== ""
      ? `${nearAnIntersection} ${data.locationNotAtIntersectionDistanceUnit.toUpperCase()}`
      : nearAnIntersection;

  nearAnIntersection =
    data.locationNotAtIntersectionDirection !== undefined &&
    data.locationNotAtIntersectionDirection.name !== undefined &&
    data.locationNotAtIntersectionDirection.name !== ""
      ? `${nearAnIntersection} ${data.locationNotAtIntersectionDirection.name.toUpperCase()}`
      : nearAnIntersection;

  if (data.outsideOfCityLimits === false) {
    nearAnIntersection =
      data.locationNotAtIntersectionRoadStreet !== undefined &&
      data.locationNotAtIntersectionRoadStreet.name !== undefined &&
      data.locationNotAtIntersectionRoadStreet.name !== ""
        ? `${nearAnIntersection} FROM ${data.locationNotAtIntersectionRoadStreet.name}`
        : nearAnIntersection;
  } else {
    nearAnIntersection =
      data.locationNotAtIntersectionRoadStreetAlternate !== undefined &&
      data.locationNotAtIntersectionRoadStreetAlternate !== ""
        ? `${nearAnIntersection} FROM ${data.locationNotAtIntersectionRoadStreetAlternate.toUpperCase()}`
        : nearAnIntersection;
  }

  nearAnIntersection =
    data.locationNotAtIntersectionMilePost !== undefined &&
    data.locationNotAtIntersectionMilePost !== ""
      ? `${nearAnIntersection} FROM MILEPOST ${data.locationNotAtIntersectionMilePost}`
      : nearAnIntersection;

  if (data.atIntersection) {
    line1Location =
      data.locationIntersectingRoad !== undefined && data.locationIntersectingRoad !== ""
        ? `${line1Location} AND ${data.locationIntersectingRoad}`
        : line1Location;
  } else if (data.notAtIntersection) {
    line1Location =
      nearAnIntersection !== undefined && nearAnIntersection !== ""
        ? `${line1Location} AND ${nearAnIntersection}`
        : line1Location;
  }

  line2Location =
    data.locationCity !== undefined &&
    data.locationCity.name !== undefined &&
    data.locationCity.name !== ""
      ? `${data.locationCity.name.toUpperCase()} ${data.locationState}`
      : `${data.locationState}`;

  if (line2Location !== "") {
    crashLocationAddress = `${line1Location}, ${line2Location}`;
  } else {
    crashLocationAddress = line1Location;
  }

  return crashLocationAddress;
}

function normalizeApprovedOfficerName(data) {
  let approvedOfficerName = "";

  approvedOfficerName =
    data.approvedOfficerFirstName != undefined && data.approvedOfficerFirstName !== ""
      ? `${data.approvedOfficerFirstName.substring(0, 1)}.`
      : approvedOfficerName;

  approvedOfficerName =
    data.approvedOfficerLastName != undefined && data.approvedOfficerLastName !== ""
      ? `${approvedOfficerName} ${data.approvedOfficerLastName}`
      : approvedOfficerName;

  return approvedOfficerName;
}

function normalizeDriverName(unit) {
  let driverName = "";
  driverName =
    unit.driverLastName != undefined && unit.driverLastName !== ""
      ? `${unit.driverLastName},`
      : driverName;

  driverName =
    unit.driverFirstName != undefined && unit.driverFirstName !== ""
      ? `${driverName} ${unit.driverFirstName}`
      : driverName;

  driverName =
    unit.driverMiddleName != undefined && unit.driverMiddleName !== ""
      ? `${driverName} ${unit.driverMiddleName}`
      : driverName;

  driverName =
    unit.driverNameSuffix != undefined && unit.driverNameSuffix !== ""
      ? `${driverName}, ${unit.driverNameSuffix}`
      : driverName;

  return driverName;
}

function normalizeDriverAddress(unit) {
  let driverAddress = "";

  driverAddress =
    unit.driverStreetAddress != undefined && unit.driverStreetAddress !== ""
      ? `${unit.driverStreetAddress} `
      : driverAddress;

  driverAddress =
    unit.driverCity != undefined && unit.driverCity !== ""
      ? `${driverAddress}${unit.driverCity}, `
      : driverAddress;

  driverAddress =
    unit.driverState != undefined &&
    unit.driverState.value != undefined &&
    unit.driverState.value !== ""
      ? `${driverAddress}${unit.driverState.value} `
      : driverAddress;

  driverAddress =
    unit.driverZipCode != undefined && unit.driverZipCode !== ""
      ? `${driverAddress}${unit.driverZipCode}`
      : driverAddress;

  return driverAddress;
}

function normalizeNonMotoristName(unit) {
  let nonMotoristName = "";
  nonMotoristName =
    unit.nonMotoristLastName != undefined && unit.nonMotoristLastName !== ""
      ? `${unit.nonMotoristLastName},`
      : nonMotoristName;

  nonMotoristName =
    unit.nonMotoristFirstName != undefined && unit.nonMotoristFirstName !== ""
      ? `${nonMotoristName} ${unit.nonMotoristFirstName}`
      : nonMotoristName;

  nonMotoristName =
    unit.nonMotoristMiddleName != undefined && unit.nonMotoristMiddleName !== ""
      ? `${nonMotoristName} ${unit.nonMotoristMiddleName}`
      : nonMotoristName;

  nonMotoristName =
    unit.nonMotoristNameSuffix != undefined && unit.nonMotoristNameSuffix !== ""
      ? `${nonMotoristName}, ${unit.nonMotoristNameSuffix}`
      : nonMotoristName;

  return nonMotoristName;
}

function normalizeNonMotoristAddress(unit) {
  let nonMotoristAddress = "";

  nonMotoristAddress =
    unit.nonMotoristStreetAddress != undefined && unit.nonMotoristStreetAddress !== ""
      ? `${unit.nonMotoristStreetAddress} `
      : nonMotoristAddress;

  nonMotoristAddress =
    unit.nonMotoristCity != undefined && unit.nonMotoristCity !== ""
      ? `${nonMotoristAddress}${unit.nonMotoristCity}, `
      : nonMotoristAddress;

  nonMotoristAddress =
    unit.nonMotoristState != undefined &&
    unit.nonMotoristState.value != undefined &&
    unit.nonMotoristState.value !== ""
      ? `${nonMotoristAddress}${unit.nonMotoristState.value} `
      : nonMotoristAddress;

  nonMotoristAddress =
    unit.nonMotoristZipCode != undefined && unit.nonMotoristZipCode !== ""
      ? `${nonMotoristAddress}${unit.nonMotoristZipCode}`
      : nonMotoristAddress;

  return nonMotoristAddress;
}

function normalizeVehicleOwnerName(unit) {
  let vehicleOwnerName = "";
  vehicleOwnerName =
    unit.ownerLastName != undefined && unit.ownerLastName !== ""
      ? `${unit.ownerLastName},`
      : vehicleOwnerName;

  vehicleOwnerName =
    unit.ownerFirstName != undefined && unit.ownerFirstName !== ""
      ? `${vehicleOwnerName} ${unit.ownerFirstName}`
      : vehicleOwnerName;

  vehicleOwnerName =
    unit.ownerMiddleName != undefined && unit.ownerMiddleName !== ""
      ? `${vehicleOwnerName} ${unit.ownerMiddleName}`
      : vehicleOwnerName;

  vehicleOwnerName =
    unit.ownerNameSuffix != undefined && unit.ownerNameSuffix !== ""
      ? `${vehicleOwnerName}, ${unit.ownerNameSuffix}`
      : vehicleOwnerName;

  return vehicleOwnerName;
}

function normalizeOwnerAddress(unit) {
  let ownerAddress = "";

  ownerAddress =
    unit.ownerStreetAddress != undefined && unit.ownerStreetAddress !== ""
      ? `${unit.ownerStreetAddress} `
      : ownerAddress;

  ownerAddress =
    unit.ownerCity != undefined && unit.ownerCity !== ""
      ? `${ownerAddress}${unit.ownerCity}, `
      : ownerAddress;

  ownerAddress =
    unit.ownerState != undefined &&
    unit.ownerState.value != undefined &&
    unit.ownerState.value !== ""
      ? `${ownerAddress}${unit.ownerState.value} `
      : ownerAddress;

  ownerAddress =
    unit.ownerZipCode != undefined && unit.ownerZipCode !== ""
      ? `${ownerAddress}${unit.ownerZipCode}`
      : ownerAddress;

  return ownerAddress;
}

function normalizeVehicleYearMakeModel(unit) {
  let vehicleYearMakeModel = "";

  vehicleYearMakeModel =
    unit.vehicleYear != undefined && unit.vehicleYear !== ""
      ? `${unit.vehicleYear}, `
      : vehicleYearMakeModel;

  if (unit.checkIfMakeModelNotPresentInListBelow) {
    vehicleYearMakeModel =
      unit.vehicleMakeOther != undefined && unit.vehicleMakeOther !== ""
        ? `${vehicleYearMakeModel}${unit.vehicleMakeOther}, `
        : vehicleYearMakeModel;

    vehicleYearMakeModel =
      unit.vehicleModelOther != undefined && unit.vehicleModelOther !== ""
        ? `${vehicleYearMakeModel}${unit.vehicleModelOther}`
        : vehicleYearMakeModel;
  } else {
    vehicleYearMakeModel =
      unit.vehicleMake != undefined &&
      unit.vehicleMake.name != undefined &&
      unit.vehicleMake.name !== ""
        ? `${vehicleYearMakeModel}${unit.vehicleMake.name}, `
        : vehicleYearMakeModel;

    vehicleYearMakeModel =
      unit.vehicleModel != undefined &&
      unit.vehicleModel.name != undefined &&
      unit.vehicleModel.name !== ""
        ? `${vehicleYearMakeModel}${unit.vehicleModel.name}`
        : vehicleYearMakeModel;
  }

  return vehicleYearMakeModel;
}

function normalizePassengerName(passenger) {
  let passengerName = "";

  passengerName =
    passenger.passengerLastName != undefined && passenger.passengerLastName !== ""
      ? `${passenger.passengerLastName},`
      : passengerName;

  passengerName =
    passenger.passengerFirstName != undefined && passenger.passengerFirstName !== ""
      ? `${passengerName} ${passenger.passengerFirstName}`
      : passengerName;

  passengerName =
    passenger.passengerMiddleName != undefined && passenger.passengerMiddleName !== ""
      ? `${passengerName} ${passenger.passengerMiddleName}`
      : passengerName;

  passengerName =
    passenger.passengerNameSuffix != undefined && passenger.passengerNameSuffix !== ""
      ? `${passengerName}, ${passenger.passengerNameSuffix}`
      : passengerName;

  return passengerName;
}

function normalizePropertyOwnerName(propertyOwner) {
  let propertyOwnerName = "";

  propertyOwnerName =
    propertyOwner.propertyOwnerLastName != undefined && propertyOwner.propertyOwnerLastName !== ""
      ? `${propertyOwner.propertyOwnerLastName},`
      : propertyOwnerName;

  propertyOwnerName =
    propertyOwner.propertyOwnerFirstName != undefined && propertyOwner.propertyOwnerFirstName !== ""
      ? `${propertyOwnerName} ${propertyOwner.propertyOwnerFirstName}`
      : propertyOwnerName;

  propertyOwnerName =
    propertyOwner.propertyOwnerMiddleName != undefined &&
    propertyOwner.propertyOwnerMiddleName !== ""
      ? `${propertyOwnerName} ${propertyOwner.propertyOwnerMiddleName}`
      : propertyOwnerName;

  propertyOwnerName =
    propertyOwner.propertyOwnerNameSuffix != undefined &&
    propertyOwner.propertyOwnerNameSuffix !== ""
      ? `${propertyOwnerName}, ${propertyOwner.propertyOwnerNameSuffix}`
      : propertyOwnerName;

  return propertyOwnerName;
}

function normalizeWitnessLastName(witness) {
  let witnessLastName = "";

  witnessLastName =
    witness.witnessLastName != undefined && witness.witnessLastName !== ""
      ? `${witness.witnessLastName}`
      : witnessLastName;

  witnessLastName =
    witness.witnessNameSuffix != undefined && witness.witnessNameSuffix !== ""
      ? `${witnessLastName}, ${witness.witnessNameSuffix}`
      : witnessLastName;

  return witnessLastName;
}

function normalizeAreaOfInitialImpact(unit) {
  let areaOfInitialImpactNormalized = {
    1: false,
    2: false,
    3: false,
    4: false,
    5: false,
    6: false,
    7: false,
    8: false,
    9: false,
    10: false,
    11: false,
    12: false,
    13: false,
    14: false,
    15: false,
    16: false,
    17: false,
    18: false,
    19: false,
    20: false,
    21: false,
  };

  if (unit.areaOfInitialImpact !== undefined) {
    for (let area of unit.areaOfInitialImpact) {
      areaOfInitialImpactNormalized[area["value"]] = true;
    }
  }

  return areaOfInitialImpactNormalized;
}

function normalizeMostDamagedArea(unit) {
  let mostDamagedAreaNormalized = {
    1: false,
    2: false,
    3: false,
    4: false,
    5: false,
    6: false,
    7: false,
    8: false,
    9: false,
    10: false,
    11: false,
    12: false,
    13: false,
    14: false,
    15: false,
    16: false,
    17: false,
    18: false,
    19: false,
    20: false,
    21: false,
  };

  if (unit.mostDamagedArea !== undefined) {
    for (let area of unit.mostDamagedArea) {
      mostDamagedAreaNormalized[area["value"]] = true;
    }
  }

  return mostDamagedAreaNormalized;
}

function normalizePositiveDrugTestResults(units) {
  let druggedPersons = [];

  druggedPersons = units
    .filter(
      (unit) =>
        unit?.driverDrugTestResult?.value === "1" || unit?.nonMotoristDrugTestResult?.value === "1"
    )
    .map((item) => {
      return {
        personNumber: item?.driverPersonNumber || item?.nonMotoristPersonNumber,
        personDateOfBirth: item?.driverDateOfBirth || item?.nonMotoristDateOfBirth,
        personDrugsTestedPositiveFor:
          item?.driverDrugsTestedPositiveFor || item?.nonMotoristDrugsTestedPositiveFor,
      };
    });

  return druggedPersons;
}

function normalizeVehicleRegistrationExpiry(unit) {
  return `${unit?.vehicleRegistrationExpiry?.substring(
    0,
    2
  )}/${unit?.vehicleRegistrationExpiry?.substring(unit?.vehicleRegistrationExpiry?.length - 4)}`;
}

function normalizeTrailerRegistrationExpiry(trailer) {
  return `${trailer?.trailerRegistrationExpiry?.substring(
    0,
    2
  )}/${trailer?.trailerRegistrationExpiry?.substring(
    trailer?.trailerRegistrationExpiry?.length - 4
  )}`;
}

function normalizeDriverLicenseExpiry(unit) {
  return `${unit?.driverLicenseExpiry?.substring(0, 2)}/${unit?.driverLicenseExpiry?.substring(
    unit?.driverLicenseExpiry?.length - 4
  )}`;
}

function normalizeNonMotoristDriverLicenseExpiry(unit) {
  return `${unit?.nonMotoristDriverLicenseExpiry?.substring(
    0,
    2
  )}/${unit?.nonMotoristDriverLicenseExpiry?.substring(
    unit?.nonMotoristDriverLicenseExpiry?.length - 4
  )}`;
}

function normalizeSuspectWitnessName(suspectWitness) {
  let suspectWitnessName = "";

  suspectWitnessName =
    suspectWitness.suspectWitnessLastName != undefined &&
    suspectWitness.suspectWitnessLastName !== ""
      ? `${suspectWitness.suspectWitnessLastName},`
      : suspectWitnessName;

  suspectWitnessName =
    suspectWitness.suspectWitnessFirstName != undefined &&
    suspectWitness.suspectWitnessFirstName !== ""
      ? `${suspectWitnessName} ${suspectWitness.suspectWitnessFirstName}`
      : suspectWitnessName;

  suspectWitnessName =
    suspectWitness.suspectWitnessMiddleName != undefined &&
    suspectWitness.suspectWitnessMiddleName !== ""
      ? `${suspectWitnessName} ${suspectWitness.suspectWitnessMiddleName}`
      : suspectWitnessName;

  suspectWitnessName =
    suspectWitness.suspectWitnessNameSuffix != undefined &&
    suspectWitness.suspectWitnessNameSuffix !== ""
      ? `${suspectWitnessName}, ${suspectWitness.suspectWitnessNameSuffix}`
      : suspectWitnessName;

  return suspectWitnessName;
}

function normalizeSuspectWitnessAddress(suspectWitness) {
  let suspectWitnessAddress = "";

  suspectWitnessAddress =
    suspectWitness.suspectWitnessStreetAddress != undefined &&
    suspectWitness.suspectWitnessStreetAddress !== ""
      ? `${suspectWitness.suspectWitnessStreetAddress} `
      : suspectWitnessAddress;

  suspectWitnessAddress =
    suspectWitness.suspectWitnessCity != undefined && suspectWitness.suspectWitnessCity !== ""
      ? `${suspectWitnessAddress}${suspectWitness.suspectWitnessCity}, `
      : suspectWitnessAddress;

  suspectWitnessAddress =
    suspectWitness.suspectWitnessState != undefined &&
    suspectWitness.suspectWitnessState.value != undefined &&
    suspectWitness.suspectWitnessState.value !== ""
      ? `${suspectWitnessAddress}${suspectWitness.suspectWitnessState.value} `
      : suspectWitnessAddress;

  suspectWitnessAddress =
    suspectWitness.suspectWitnessZipCode != undefined && suspectWitness.suspectWitnessZipCode !== ""
      ? `${suspectWitnessAddress}${suspectWitness.suspectWitnessZipCode}`
      : suspectWitnessAddress;

  return suspectWitnessAddress;
}

function normalizeSuspectVehicleOwnerName(unit) {
  let suspectVehicleOwnerName = "";

  suspectVehicleOwnerName =
    unit.suspectVehicleOwnerLastName != undefined && unit.suspectVehicleOwnerLastName !== ""
      ? `${unit.suspectVehicleOwnerLastName},`
      : suspectVehicleOwnerName;

  suspectVehicleOwnerName =
    unit.suspectVehicleOwnerFirstName != undefined && unit.suspectVehicleOwnerFirstName !== ""
      ? `${suspectVehicleOwnerName} ${unit.suspectVehicleOwnerFirstName}`
      : suspectVehicleOwnerName;

  suspectVehicleOwnerName =
    unit.suspectVehicleOwnerMiddleName != undefined && unit.suspectVehicleOwnerMiddleName !== ""
      ? `${suspectVehicleOwnerName} ${unit.suspectVehicleOwnerMiddleName}`
      : suspectVehicleOwnerName;

  suspectVehicleOwnerName =
    unit.suspectVehicleOwnerNameSuffix != undefined && unit.suspectVehicleOwnerNameSuffix !== ""
      ? `${suspectVehicleOwnerName}, ${unit.suspectVehicleOwnerNameSuffix}`
      : suspectVehicleOwnerName;

  return suspectVehicleOwnerName;
}

function normalizeSuspectVehicleOwnerAddress(unit) {
  let suspectVehicleOwnerAddress = "";

  suspectVehicleOwnerAddress =
    unit.suspectVehicleOwnerStreetAddress != undefined &&
    unit.suspectVehicleOwnerStreetAddress !== ""
      ? `${unit.suspectVehicleOwnerStreetAddress} `
      : suspectVehicleOwnerAddress;

  suspectVehicleOwnerAddress =
    unit.suspectVehicleOwnerCity != undefined && unit.suspectVehicleOwnerCity !== ""
      ? `${suspectVehicleOwnerAddress}${unit.suspectVehicleOwnerCity}, `
      : suspectVehicleOwnerAddress;

  suspectVehicleOwnerAddress =
    unit.suspectVehicleOwnerState != undefined &&
    unit.suspectVehicleOwnerState.value != undefined &&
    unit.suspectVehicleOwnerState.value !== ""
      ? `${suspectVehicleOwnerAddress}${unit.suspectVehicleOwnerState.value} `
      : suspectVehicleOwnerAddress;

  suspectVehicleOwnerAddress =
    unit.suspectVehicleOwnerZipCode != undefined && unit.suspectVehicleOwnerZipCode !== ""
      ? `${suspectVehicleOwnerAddress}${unit.suspectVehicleOwnerZipCode}`
      : suspectVehicleOwnerAddress;

  return suspectVehicleOwnerAddress;
}

function normalizeApprovedDate(data) {
  let normalizedapprovedDate = "";

  normalizedapprovedDate =
    data?.approvedDate && data.approvedDate.length > 10
      ? `${data.approvedDate.substring(5, 7)}/${data.approvedDate.substring(
          8,
          10
        )}/${data.approvedDate.substring(0, 4)}`
      : "";

  return normalizedapprovedDate;
}

try {
  if (data.reportType === "quickCapture") {
    for (let unit of data.units) {
      if (unit.unitType === "vehicle") {
        // Normalize Driver
        unit.driverName = normalizeDriverName(unit);
        unit.driverAddress = normalizeDriverAddress(unit);
        unit.normalizedDriverLicenseExpiry = normalizeDriverLicenseExpiry(unit);

        // Normalize Vehicle Owner
        unit.ownerName = normalizeVehicleOwnerName(unit);
        unit.ownerAddress = normalizeOwnerAddress(unit);

        // Normalize Vehicle Year Make Model
        unit.vehicleYearMakeModel = normalizeVehicleYearMakeModel(unit);
        unit.normalizedVehicleRegistrationExpiry = normalizeVehicleRegistrationExpiry(unit);

        if (unit.trailers !== undefined) {
          for (let trailer of unit.trailers) {
            trailer.normalizedTrailerRegistrationExpiry =
              normalizeTrailerRegistrationExpiry(trailer);
          }
        }
      }

      if (unit.unitType === "nonMotorist") {
        // Normalize Non-Motorist Name
        unit.nonMotoristName = normalizeNonMotoristName(unit);
        unit.nonMotoristAddress = normalizeNonMotoristAddress(unit);
        unit.normalizedNonMotoristDriverLicenseExpiry =
          normalizeNonMotoristDriverLicenseExpiry(unit);
      }
    }
  } else {
    let vehicles = [];
    let persons = [];
    let violationsTemp = [];
    let violations = [];
    let passengersTemp = [];
    let passengers = [];
    const emptyUnit = {};

    let motorizedUnits = 0;
    let nonMotorizedUnits = 0;

    for (let unit of data.units) {
      if (unit.unitType === "vehicle") {
        // Normalize Driver Name
        unit.driverName = normalizeDriverName(unit);
        unit.driverAddress = normalizeDriverAddress(unit);
        unit.normalizedDriverLicenseExpiry = normalizeDriverLicenseExpiry(unit);

        // Normalize Vehicle Owner Name
        unit.ownerName = normalizeVehicleOwnerName(unit);
        unit.ownerAddress = normalizeOwnerAddress(unit);

        // Normalize Vehicle Year Make Model
        unit.vehicleYearMakeModel = normalizeVehicleYearMakeModel(unit);
        unit.normalizedVehicleRegistrationExpiry = normalizeVehicleRegistrationExpiry(unit);

        if (unit.trailers !== undefined) {
          for (let trailer of unit.trailers) {
            trailer.normalizedTrailerRegistrationExpiry =
              normalizeTrailerRegistrationExpiry(trailer);
          }
        }

        if (unit.passengers !== undefined) {
          for (let passenger of unit.passengers) {
            // Normalize Passenger Name
            passenger.passengerName = normalizePassengerName(passenger);

            // Add Vehicle Number
            passenger.passengerUnitNumber = unit.unitNumber;
          }
        }

        if (unit.passengers.length > 2) {
          passengersTemp = unit.passengers.slice(2, unit.passengers.length);
          passengers.push(...passengersTemp);
        }

        motorizedUnits++;
        vehicles.push(unit);
        if (unit.driverlessVehicle !== "yes") {
          persons.push(unit);
        }

        if (unit.violations !== undefined) {
          for (let violation of unit.violations) {
            violation.citationPersonNumber = unit.driverPersonNumber;
            violation.violatorName = unit.driverName;
          }

          if (unit.violations.length > 3) {
            violationsTemp = unit.violations.slice(3, unit.violations.length);
            violations.push(...violationsTemp);
          }
        }

        if (unit?.hitAndRun?.value === "2") {
          unit.suspectVehicleOwnerName = normalizeSuspectVehicleOwnerName(unit);
          unit.suspectVehicleOwnerAddress = normalizeSuspectVehicleOwnerAddress(unit);

          if (unit.suspectWitnesses.length > 0) {
            for (let suspectWitness of unit.suspectWitnesses) {
              suspectWitness.suspectWitnessName = normalizeSuspectWitnessName(suspectWitness);
              suspectWitness.suspectWitnessAddress = normalizeSuspectWitnessAddress(suspectWitness);
            }
          }
        }
      }

      if (unit.unitType === "nonMotorist") {
        // Normalize Non-Motorist Name
        unit.nonMotoristName = normalizeNonMotoristName(unit);
        unit.nonMotoristAddress = normalizeNonMotoristAddress(unit);
        unit.normalizedNonMotoristDriverLicenseExpiry =
          normalizeNonMotoristDriverLicenseExpiry(unit);

        nonMotorizedUnits++;
        persons.push(unit);

        if (unit.nonMotoristViolations !== undefined) {
          for (let violation of unit.nonMotoristViolations) {
            violation.citationPersonNumber = unit.nonMotoristPersonNumber;
            violation.violatorName = unit.nonMotoristName;
          }

          if (unit.nonMotoristViolations.length > 0) {
            violations.push(...unit.nonMotoristViolations);
          }
        }
      }

      unit.areaOfInitialImpactNormalized = normalizeAreaOfInitialImpact(unit);

      unit.mostDamagedAreaNormalized = normalizeMostDamagedArea(unit);
    }

    if (motorizedUnits === 0) {
      vehicles.push(emptyUnit);
    }

    if (persons.length === 0) {
      persons.push(emptyUnit);
    }

    report.personList = persons;
    report.vehicleList = vehicles;

    for (let propertyOwner of data.propertyDamages) {
      propertyOwner.propertyOwnerName = normalizePropertyOwnerName(propertyOwner);
    }

    let witnesses = [];
    let witnessTemp = [];
    let witnessCount = 0;
    let witnessIndex = 0;

    for (let witness of data.witnesses) {
      witness.normalizedWitnessLastName = normalizeWitnessLastName(witness);
      witnessCount++;
      witnessTemp.push(witness);
      witnesses[witnessIndex] = witnessTemp;

      if (witnessCount === 3) {
        witnessIndex++;
        witnessTemp = [];
        witnessCount = 0;
      }
    }

    let propertyDamages = [];
    let propertyDamagesTemp = [];
    let propertyDamagesCount = 0;
    let propertyDamagesIndex = 0;

    for (let propertyDamage of data.propertyDamages) {
      propertyDamagesCount++;
      propertyDamagesTemp.push(propertyDamage);
      propertyDamages[propertyDamagesIndex] = propertyDamagesTemp;

      if (propertyDamagesCount === 2) {
        propertyDamagesIndex++;
        propertyDamagesTemp = [];
        propertyDamagesCount = 0;
      }
    }

    const iterations = Math.max(witnesses.length, propertyDamages.length);

    let witnessAndPropertyDamagesList = [];

    let witnessAndPropertyDamageObject;

    for (let i = 0; i < iterations; i++) {
      witnessAndPropertyDamageObject = {};
      if (witnesses[i] != undefined) {
        witnessAndPropertyDamageObject["witnesses"] = witnesses[i];
      }

      if (propertyDamages[i] != undefined) {
        witnessAndPropertyDamageObject["propertyDamages"] = propertyDamages[i];
      }
      witnessAndPropertyDamagesList.push(witnessAndPropertyDamageObject);
    }

    if (witnessAndPropertyDamagesList.length === 0) {
      witnessAndPropertyDamagesList.push({});
    }

    report.witnessesAndPropertyDamageList = witnessAndPropertyDamagesList;

    let additionalPassengers = [];
    let additionalPassengersTemp = [];

    let additionalPassengersCount = 0;
    let additionalPassengersIndex = 0;

    for (let passenger of passengers) {
      additionalPassengersCount++;
      additionalPassengersTemp.push(passenger);
      additionalPassengers[additionalPassengersIndex] = additionalPassengersTemp;

      if (additionalPassengersCount === 2) {
        additionalPassengersIndex++;
        additionalPassengersTemp = [];
        additionalPassengersCount = 0;
      }
    }

    let additionalViolations = [];
    let additionalViolationsTemp = [];

    let additionalViolationsCount = 0;
    let additionalViolationsIndex = 0;

    for (let violation of violations) {
      additionalViolationsCount++;
      additionalViolationsTemp.push(violation);
      additionalViolations[additionalViolationsIndex] = additionalViolationsTemp;

      if (additionalViolationsCount === 2) {
        additionalViolationsIndex++;
        additionalViolationsTemp = [];
        additionalViolationsCount = 0;
      }
    }

    const counter = Math.max(additionalPassengers.length, additionalViolations.length);

    let additionalPassengersAdditionalViolationsList = [];

    let additionalPassengersAdditionalViolationsObject;

    for (let i = 0; i < counter; i++) {
      additionalPassengersAdditionalViolationsObject = {};
      if (additionalPassengers[i] != undefined) {
        additionalPassengersAdditionalViolationsObject["additionalPassengers"] =
          additionalPassengers[i];
      }

      if (additionalViolations[i] != undefined) {
        additionalPassengersAdditionalViolationsObject["additionalViolations"] =
          additionalViolations[i];
      }
      additionalPassengersAdditionalViolationsList.push(
        additionalPassengersAdditionalViolationsObject
      );
    }

    if (additionalPassengersAdditionalViolationsList.length === 0) {
      additionalPassengersAdditionalViolationsList.push({});
    }

    report.additionalPassengersAdditionalViolationsList =
      additionalPassengersAdditionalViolationsList;

    let druggedPersons = normalizePositiveDrugTestResults(data.units);

    let positiveDrugTestResultsList = [];

    let positiveDrugTestResultsDataset = [];

    if (druggedPersons !== undefined && druggedPersons.length > 0) {
      for (let j = 0; j < druggedPersons.length; j += positiveDrugTestResultsChunk) {
        if (
          druggedPersons.length % positiveDrugTestResultsChunk !== 0 &&
          j === druggedPersons.length - 1
        ) {
          positiveDrugTestResultsList.push(druggedPersons.slice(j, j + 1));
        } else {
          positiveDrugTestResultsList.push(
            druggedPersons.slice(j, j + positiveDrugTestResultsChunk)
          );
        }
      }

      for (let k = 0; k < positiveDrugTestResultsList.length; k++) {
        if (positiveDrugTestResultsDataset[k] !== undefined) {
          positiveDrugTestResultsDataset[k]["positiveDrugTestResults"] =
            positiveDrugTestResultsList[k];
        } else {
          positiveDrugTestResultsDataset.push({
            positiveDrugTestResults: positiveDrugTestResultsList[k],
          });
        }
      }
    }

    report.positiveDrugTestResultsDataset = positiveDrugTestResultsDataset;
    report.positiveDrugTestResultsDatasetLength = positiveDrugTestResultsDataset.length;

    report.timeOnSceneNormalized =
      data.timeOnScene !== "" || data.timeOnScene.length === 5
        ? convertMilitaryToStandardTime(data.timeOnScene)
        : "";

    report.timeDispatchedNormalized =
      data.timeDispatched !== "" || data.timeDispatched.length === 5
        ? convertMilitaryToStandardTime(data.timeDispatched)
        : "";

    report.timeClearedSceneNormalized =
      data.timeClearedScene !== "" || data.timeClearedScene.length === 5
        ? convertMilitaryToStandardTime(data.timeClearedScene)
        : "";

    report.timeReportedNormalized =
      data.timeReported !== "" || data.timeReported.length === 5
        ? convertMilitaryToStandardTime(data.timeReported)
        : "";

    report.reportSubmittedTimeNormalized =
      data.reportSubmittedTime !== "" || data.reportSubmittedTime.length === 5
        ? convertMilitaryToStandardTime(data.reportSubmittedTime)
        : "";
  }

  let unitsListDE = [];
  let unitsDEDataset = [];
  let unitsLength = data.units.length;
  let index = 0;

  if (unitsLength === 0) {
    unitsDEDataset.push({ units: [] });
  } else {
    while (index < unitsLength) {
      let lastUnits = unitsLength % unitsChunkDE;
      if (lastUnits !== 0 && index === unitsLength - 1) {
        unitsListDE.push(data.units.slice(index, index + lastUnits));
      } else {
        unitsListDE.push(data.units.slice(index, index + unitsChunkDE));
      }
      index += unitsChunkDE;
    }

    for (let k = 0; k < unitsListDE.length; k++) {
      if (unitsDEDataset[k] !== undefined) {
        unitsDEDataset[k]["units"] = unitsListDE[k];
      } else {
        unitsDEDataset.push({
          units: unitsListDE[k],
        });
      }
    }
  }

  report.unitsListDE = unitsDEDataset;

  report.crashLocationAddress = normalizeCrashLocationAddress(data);

  report.timeOfCrashNormalized =
    data.timeOfCrash !== "" || data.timeOfCrash.length === 5
      ? convertMilitaryToStandardTime(data.timeOfCrash)
      : "";

  report.approvedOfficerName = normalizeApprovedOfficerName(data);

  report.normalizedApprovedDate = normalizeApprovedDate(data);

  if (data.diagramValue != null) {
    var attachment = dbData.find((a) => a.attachmentId === data.diagramValue.id + "_IMAGEDATA");

    if (attachment) {
      report.image = window.deserializeAttachment(attachment.serializedData);
    }
  }
} catch (ex) {
  console.error(ex);
}
return report;
