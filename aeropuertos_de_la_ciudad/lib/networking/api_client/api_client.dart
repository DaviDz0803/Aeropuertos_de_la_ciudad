import 'package:dio/dio.dart';
import 'package:aeropuertos_de_la_ciudad/Airport/model/airport.dart';

class ApiClient {
  String _url = "https://airports-of-the-world.herokuapp.com";
  String path = '/airports';

  Future<List<Airport>> getAirports() async {
    Response response;
    Dio dio = new Dio();
    response = await dio.get('$_url$path');
    final airports = (response.data['data']['data']);

    return airports;
  }
}

/*    Example:
    Response response;
    Dio dio = new Dio();
    response = await dio.get("/test?id=12&name=wendu");
    print(response.data.toString());
    // Optionally the request above could also be done as
    response = await dio.get("/test", queryParameters: {"id": 12, "name": "wendu"});
    print(response.data.toString());
*/
