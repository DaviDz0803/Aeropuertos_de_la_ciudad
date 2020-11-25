class AllFlights {
  List<Flight> items = new List();

  AllFlights();

  AllFlights.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final flights = new Flight.fromJsonMap(item);
      items.add(flights);
    }
  }
}

class Flight {
  String originIata;
  String destinationIata;
  int distance;
  String routeIata;
  String airportsId;

//Constructor
  Flight({
    this.originIata,
    this.destinationIata,
    this.distance,
    this.routeIata,
    this.airportsId,
  });

  Flight.fromJsonMap(Map<String, dynamic> json) {
    originIata = json['originIata'];
    destinationIata = json['destinationIata'];
    distance = json['distance'];
    routeIata = json['routeIata'];
    airportsId = json['airportsId'];
  }
}
