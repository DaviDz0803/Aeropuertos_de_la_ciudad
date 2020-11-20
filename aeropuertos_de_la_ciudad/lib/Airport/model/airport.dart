class AllAirports {
  List<Airport> items = new List();

  AllAirports();

  AllAirports.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final airport = new Airport.fromJsonMap(item);
      items.add(airport);
    }
  }
}

class Airport {
  int airportId;
  String airportName;
  String city;
  String countryId;
  String iata;
  String icao;
  double latitude;
  double longitude;
  double altitude;
  double timezone;
  String dst;
  String tzDatabaseTimeZone;
  String airportType;
  String source;

  //Constructor
  Airport({
    this.airportId,
    this.airportName,
    this.city,
    this.countryId,
    this.iata,
    this.icao,
    this.latitude,
    this.longitude,
    this.altitude,
    this.timezone,
    this.dst,
    this.tzDatabaseTimeZone,
    this.airportType,
    this.source,
  });

  Airport.fromJsonMap(Map<String, dynamic> json) {
    airportId = json['airportId'];
    airportName = json['airportName'];
    city = json['city'];
    countryId = json['countryId'];
    iata = json['iata'];
    icao = json['icao'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    altitude = json['altitude'];
    timezone = json['timezone'];
    dst = json['dst'];
    tzDatabaseTimeZone = json['tzDatabaseTimeZone'];
    airportType = json['airportType'];
    source = json['source'];
  }
}
