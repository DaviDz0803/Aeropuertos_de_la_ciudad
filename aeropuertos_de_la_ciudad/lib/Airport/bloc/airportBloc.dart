import 'dart:async'; //trabajar con datos sincronicos
import 'package:aeropuertos_de_la_ciudad/Airport/model/airport.dart';

class AirportBloc {
  List<Airport> _airportList = [
    Airport(
        26,
        "Kugaaruk Airport",
        "Pelly Bay",
        "Canada",
        "YBB",
        "CYBB",
        68.534401,
        -89.808098,
        56,
        -7,
        "A",
        "America/Edmonton",
        "airport",
        "OurAirports"),
    Airport(
        27,
        "Baie Comeau Airport",
        "Baie Comeau",
        "Canada",
        "YBC",
        "CYBC",
        49.13249969482422,
        -68.20439910888672,
        71,
        -5,
        "A",
        "America/Toronto",
        "airport",
        "OurAirports"),
    Airport(
        2989,
        "Syktyvkar Airport",
        "Syktyvkar",
        "Russia",
        "SCW",
        "UUYY",
        61.64699935913086,
        50.84510040283203,
        342,
        3,
        "N",
        "Europe/Moscow",
        "airport",
        "OurAirports")
  ];

  // Streams Controller (estara esperando por la lisa de aeropuertos)
  final _airportListStreamController = StreamController<List<Airport>>();

  // Getters: streams y sinks
  Stream<List<Airport>> get airportListStream =>
      _airportListStreamController.stream;
  StreamSink<List<Airport>> get airportListSink =>
      _airportListStreamController.sink;

  // Constructor
  AirportBloc() {
    _airportListStreamController.add(_airportList);
  }

  // dispose
  void dispose() {
    _airportListStreamController.close();
  }
}
