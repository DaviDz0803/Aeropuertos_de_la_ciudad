import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:aeropuertos_de_la_ciudad/Airport/repository/airport_repository.dart';
import 'package:aeropuertos_de_la_ciudad/Airport/bloc/airport_list_bloc.dart';
import 'package:aeropuertos_de_la_ciudad/homePage.dart';

void main() {
  AirportRepository _repository = AirportRepository();
  runApp(MyApp(
    airportRepository: _repository,
  ));
}

class MyApp extends StatelessWidget {
  final AirportRepository airportRepository;
  MyApp({this.airportRepository});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Aeropuertos de la ciuedad",
        theme: ThemeData(primarySwatch: Colors.orange),
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) =>
              AirportListBloc(airportRepository: airportRepository)
                ..add(AllAirportsEvent.loadSuccess),
          child: HomePage(),
        ));
  }
}
