var report = { ...data };
const unitsChunkDE = 4;

function normalizeCrashLocationAddress(data) {
  let line1Location = "";

  let crashLocationAddress = "";

  let nearAnIntersection = "";

  let nearAHighway = "";

  line1Location = `${data.onRoadStreet}`;

  nearAnIntersection =
    data.intersectionOffsetDistance !== undefined && data.intersectionOffsetDistance !== ""
      ? `${data.intersectionOffsetDistance}`
      : nearAnIntersection;

  nearAnIntersection =
    data.intersectionOffsetDistanceUnit !== undefined &&
    data.intersectionOffsetDistanceUnit.name !== undefined &&
    data.intersectionOffsetDistanceUnit.name !== ""
      ? `${nearAnIntersection} ${data.intersectionOffsetDistanceUnit.name.toUpperCase()}`
      : nearAnIntersection;

  let completeLocationIntersect = "";

  for (let area in data.intersectionOffsetDirection) {
    if (data.intersectionOffsetDirection[area] === true) {
      completeLocationIntersect = `${completeLocationIntersect}${area}`;
    }
  }

  nearAnIntersection = `${nearAnIntersection} ${completeLocationIntersect}`;

  nearAnIntersection =
    data.referenceIntersectingRoadStreet !== undefined &&
    data.referenceIntersectingRoadStreet !== ""
      ? `${nearAnIntersection} FROM ${data.referenceIntersectingRoadStreet}`
      : nearAnIntersection;

  nearAHighway =
    data.highway !== undefined && data.highway !== "" ? `HIGHWAY ${data.highway}` : nearAHighway;

  nearAHighway =
    data.milepointOffsetDist !== undefined && data.milepointOffsetDist !== ""
      ? `${nearAHighway} ${data.milepointOffsetDist}`
      : nearAHighway;

  nearAHighway =
    data.milepointOffsetDistanceUnit !== undefined &&
    data.milepointOffsetDistanceUnit.name !== undefined &&
    data.milepointOffsetDistanceUnit.name !== ""
      ? `${nearAHighway} ${data.milepointOffsetDistanceUnit.name.toUpperCase()}`
      : nearAHighway;

  let completeLocationHighway = "";

  for (let area in data.milepointOffsetDirection) {
    if (data.milepointOffsetDirection[area] === true) {
      completeLocationHighway = `${completeLocationHighway}${area}`;
    }
  }

  nearAHighway = `${nearAHighway} ${completeLocationHighway}`;

  nearAHighway =
    data.milepoint !== undefined && data.milepoint !== ""
      ? `${nearAHighway} OF MILEPOINT ${data.milepoint}`
      : nearAHighway;

  if (data.atIntersection) {
    line1Location =
      nearAnIntersection !== undefined && nearAnIntersection !== ""
        ? `${line1Location} AND ${nearAnIntersection}`
        : line1Location;
  } else if (data.onHighway) {
    line1Location =
      nearAHighway !== undefined && nearAHighway !== "" ? `${nearAHighway}` : line1Location;
  }

  crashLocationAddress = line1Location;

  return crashLocationAddress;
}

function normalizeDriverName(driver) {
  let driverName = "";
  driverName =
    driver.driverLastName != undefined && driver.driverLastName !== ""
      ? `${driver.driverLastName},`
      : driverName;

  driverName =
    driver.driverFirstName != undefined && driver.driverFirstName !== ""
      ? `${driverName} ${driver.driverFirstName}`
      : driverName;

  driverName =
    driver.driverMiddleInital != undefined && driver.driverMiddleInital !== ""
      ? `${driverName} ${driver.driverMiddleInital}`
      : driverName;

  return driverName;
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
    unit.nonMotoristMiddleInital != undefined && unit.nonMotoristMiddleInital !== ""
      ? `${nonMotoristName} ${unit.nonMotoristMiddleInital}`
      : nonMotoristName;

  return nonMotoristName;
}

function normalizeVehicleOwnerName(owner) {
  let ownerName = "";
  ownerName =
    owner.ownerLastName != undefined && owner.ownerLastName !== ""
      ? `${owner.ownerLastName},`
      : ownerName;

  ownerName =
    owner.ownerFirstName != undefined && owner.ownerFirstName !== ""
      ? `${ownerName} ${owner.ownerFirstName}`
      : ownerName;

  ownerName =
    owner.ownerMiddleInital != undefined && owner.ownerMiddleInital !== ""
      ? `${ownerName} ${owner.ownerMiddleInital}`
      : ownerName;

  return ownerName;
}

try {
  var units = [];

  for (var index = 0; index < data.units.length; index++) {
    var newUnit = data.units[index];

    if (!newUnit.nonMotoristCheckbox) {
      for (var aodIndex = 1; aodIndex < 20; aodIndex++) {
        if (newUnit.severeAreaOfDamage.some((element) => element.value === String(aodIndex))) {
          newUnit["areaOfDamage" + String(aodIndex)] = "3";
        } else if (
          newUnit.moderateAreaOfDamage.some((element) => element.value === String(aodIndex))
        ) {
          newUnit["areaOfDamage" + String(aodIndex)] = "2";
        } else if (
          newUnit.slightAreaOfDamage.some((element) => element.value === String(aodIndex))
        ) {
          newUnit["areaOfDamage" + String(aodIndex)] = "1";
        }

        if (newUnit.severeAreaOfDamage.some((element) => element.value === "0")) {
          newUnit["areaOfDamageUndercarriage"] = "3";
        } else if (newUnit.moderateAreaOfDamage.some((element) => element.value === "0")) {
          newUnit["areaOfDamageUndercarriage"] = "2";
        } else if (newUnit.slightAreaOfDamage.some((element) => element.value === "0")) {
          newUnit["areaOfDamageUndercarriage"] = "1";
        }

        if (
          newUnit.severeAreaOfDamage.includes("None") &&
          newUnit.moderateAreaOfDamage.includes("None") &&
          newUnit.slightAreaOfDamage.includes("None")
        ) {
          newUnit["areaOfDamageNone"] = "None";
        }
      }

      units.push(newUnit);
    }
  }

  let motorizedUnits = 0;

  for (let unit of data.units) {
    if (!unit.nonMotoristCheckbox) {
      motorizedUnits++;
    }
  }

  if (motorizedUnits === 0) {
    var emptyUnit = { driver: { driverLastName: "N/A" } };

    units.push(emptyUnit);
  }

  report.units = units;

  report.nonMotoristsList = { nonMotorists: [] };

  var nonMotoristsListArray = [];

  for (let unit of data.units) {
    if (unit.nonMotoristCheckbox) {
      unit.nonMotoristName = normalizeNonMotoristName(unit);
      nonMotoristsListArray.push([unit]);
    } else {
      unit.driver.driverName = normalizeDriverName(unit.driver);
      unit.owner.ownerName = normalizeVehicleOwnerName(unit.owner);
    }
  }

  report.nonMotoristsList.nonMotorists = nonMotoristsListArray;

  report.additionalPassengersList = { additionalPassengers: [] };

  var additionalPassengersListArray = [];
  var numberOfAddedAdditionalPassengers = 0;

  for (var index = 0; index < (data.units || []).length; index++) {
    if (!data.units[index].nonMotoristCheckbox) {
      if (data.units[index].passengers !== undefined && data.units[index].passengers.length > 3) {
        for (
          var passengerIndex = 3;
          passengerIndex < data.units[index].passengers.length;
          passengerIndex++
        ) {
          if (numberOfAddedAdditionalPassengers == 0) {
            var newAdditionalPassengers = [];
          }

          var additionalPassengerData = data.units[index].passengers[passengerIndex];

          additionalPassengerData["unitNumber"] = (index + 1).toString();

          newAdditionalPassengers.push(additionalPassengerData);

          numberOfAddedAdditionalPassengers = numberOfAddedAdditionalPassengers + 1;

          if (numberOfAddedAdditionalPassengers == 11) {
            additionalPassengersListArray.push(newAdditionalPassengers);
            numberOfAddedAdditionalPassengers = 0;
          }
        }
      }
    }
  }

  if (numberOfAddedAdditionalPassengers > 0) {
    additionalPassengersListArray.push(newAdditionalPassengers);
  }

  report.additionalPassengersList.additionalPassengers = additionalPassengersListArray;

  report.additionalPassengersListLength = additionalPassengersListArray.length;

  if (data.propertyDamages !== undefined) {
    report.propertyDamagesLength = data.propertyDamages.length;
  }

  if (data.latitude != undefined) {
    const lat = data.latitude.toString();

    const latSplit = lat.split(".");

    const wholeNumberLat = latSplit[0];

    const decimalPlacesLat = latSplit[1].substring(0, 5);

    const latitude = wholeNumberLat + "." + decimalPlacesLat;

    report["latitude"] = latitude;
  }

  if (data.longitude != undefined) {
    const long = data.longitude.toString();

    const longSplit = long.split(".");

    const wholeNumberLong = longSplit[0];

    const decimalPlacesLong = longSplit[1].substring(0, 5);

    const longitude = wholeNumberLong + "." + decimalPlacesLong;

    report["longitude"] = longitude;
  }

  let unitsListDE = [];
  let unitsDEDataset = [];
  let unitsLength = data.units.length;
  let indexDE = 0;

  if (unitsLength === 0) {
    unitsDEDataset.push({ units: [] });
  } else {
    while (indexDE < unitsLength) {
      let lastUnits = unitsLength % unitsChunkDE;
      if (lastUnits !== 0 && indexDE === unitsLength - 1) {
        unitsListDE.push(data.units.slice(indexDE, indexDE + lastUnits));
      } else {
        unitsListDE.push(data.units.slice(indexDE, indexDE + unitsChunkDE));
      }
      indexDE += unitsChunkDE;
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

  if (data.diagramValue != undefined) {
    var attachment = dbData.find((a) => a.attachmentId === data.diagramValue.id + "_IMAGEDATA");

    if (attachment) {
      report.image = window.deserializeAttachment(attachment.serializedData);
    }
  }
} catch (ex) {
  console.error(ex);
}
return report;
