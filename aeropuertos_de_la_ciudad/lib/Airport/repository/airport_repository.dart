import 'package:aeropuertos_de_la_ciudad/Airport/model/airport.dart';
import 'package:aeropuertos_de_la_ciudad/networking/api_client/api_client.dart';

class AirportRepository {
  ApiClient _apiClient = ApiClient();
  Future<List<Airport>> getAirports() => _apiClient.getAirports();
}
