import 'package:aeropuertos_de_la_ciudad/Flight/model/flight.dart';
import 'package:aeropuertos_de_la_ciudad/networking/api_client/api_client.dart';

class FlightRepository {
  ApiClient _apiClient = ApiClient();
  Future<List<Flight>> getFlights(
          String originIATACode, String destinationIATACode) =>
      _apiClient.getFlights(originIATACode, destinationIATACode);
}
