import 'package:dio/dio.dart';
import 'package:aeropuertos_de_la_ciudad/Airport/model/airport.dart';

class ApiClient {
  String _url = "https://airports-of-the-world.herokuapp.com";

  Future<List<Airport>> getAirports() async {
    Uri uri = Uri.https(
      _url,
      'airports',
    );
    final response = await Dio().getUri(uri);

    final airports =
        new AllAirports.fromJsonList(response.data['data']['data']);
    print(airports.items);
    return airports.items;
  }

  Future<List<Airport>> getRoutes(
      String originIATACode, String destinationIATACode) async {
    Uri uri = Uri.https(
        _url, 'routes/from/iata/$originIATACode/to/iata/$destinationIATACode');
    final response = await Dio().getUri(uri);
    final routes = new AllRoutes.fromJsonList(response.data['data']);
    print(routes.items);
    return routes.items;
  }
}
