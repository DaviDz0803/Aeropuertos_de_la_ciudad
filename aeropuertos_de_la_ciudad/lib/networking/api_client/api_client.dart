import 'package:aeropuertos_de_la_ciudad/Flight/model/flight.dart';
import 'package:dio/dio.dart';
import 'package:aeropuertos_de_la_ciudad/Airport/model/airport.dart';

class ApiClient {
  String _url = "airports-of-the-world.herokuapp.com";
  int _limit = 100;

  Future<List<Airport>> getAirports() async {
    Uri uri = Uri.https(_url, 'airports', {
      'limit': _limit.toString(),
    });
    final response = await Dio().getUri(uri);

    final airports = new Airports.fromJsonList(response.data['data']['data']);
    print(airports.items);
    return airports.items;
  }

  Future<List<Flight>> getFlights(
      String originIATACode, String destinationIATACode) async {
    Uri uri = Uri.https(
        _url, 'routes/from/iata/$originIATACode/to/iata/$destinationIATACode');
    final response = await Dio().getUri(uri);

    final flights = new AllFlights.fromJsonList(response.data['data']);
    print(flights.items);
    return flights.items;
  }
}
