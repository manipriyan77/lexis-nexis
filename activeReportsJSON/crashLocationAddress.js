function normalizeCrashLocationAddress(data) {
  let line1Location = "";

  let line2Location = "";

  let crashLocationAddress = "";

  let nearAnIntersection = "";

  line1Location = `${data.locationStreetNumber} ${data.locationStreetName}`;

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

  nearAnIntersection =
    data.locationNotAtIntersectionRoadStreet !== undefined &&
    data.locationNotAtIntersectionRoadStreet !== ""
      ? `${nearAnIntersection} FROM ${data.locationNotAtIntersectionRoadStreet}`
      : nearAnIntersection;

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

report.unitsListDE = unitsDEDataset;

report.crashLocationAddress = normalizeCrashLocationAddress(data);
