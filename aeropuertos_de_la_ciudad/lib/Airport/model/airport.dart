class Airport {
  int _airportId;
  String _airportName;
  String _city;
  String _countryId;
  String _iata;
  String _icao;
  double _latitude;
  double _longitude;
  double _altitude;
  double _timezone;
  String _dst;
  String _tzDatabaseTimeZone;
  String _airportType;
  String _source;

  //Constructor
  Airport(
    this._airportId,
    this._airportName,
    this._city,
    this._countryId,
    this._iata,
    this._icao,
    this._latitude,
    this._longitude,
    this._altitude,
    this._timezone,
    this._dst,
    this._tzDatabaseTimeZone,
    this._airportType,
    this._source,
  );

  //setter
  set airportId(int airportId) {
    this._airportId = airportId;
  }

  set airportName(String airportName) {
    this._airportName = airportName;
  }

  set city(String city) {
    this._city = city;
  }

  set countryId(String countryId) {
    this._countryId = countryId;
  }

  set iata(String iata) {
    this._iata = iata;
  }

  set icao(String icao) {
    this._icao = icao;
  }

  set latitude(double latitude) {
    this._latitude = latitude;
  }

  set longitude(double longitude) {
    this._longitude = longitude;
  }

  set altitude(double altitude) {
    this._altitude = altitude;
  }

  set timezone(double timezone) {
    this._timezone = timezone;
  }

  set dst(String dst) {
    this._dst = dst;
  }

  set tzDatabaseTimeZone(String tzDatabaseTimeZone) {
    this._tzDatabaseTimeZone = tzDatabaseTimeZone;
  }

  set airportType(String airportType) {
    this._airportType = airportType;
  }

  set source(String source) {
    this._source = source;
  }

  // Getter
  int get airportId => this._airportId;
  String get airportName => this._airportName;
  String get city => this._city;
  String get countryId => this._countryId;
  String get iata => this._iata;
  String get icao => this._icao;
  double get latitude => this._latitude;
  double get longitude => this._longitude;
  double get altitude => this._altitude;
  double get timezone => this._timezone;
  String get dst => this._dst;
  String get tzDatabaseTimeZone => this._tzDatabaseTimeZone;
  String get airportType => this._airportType;
  String get source => this._source;
}
