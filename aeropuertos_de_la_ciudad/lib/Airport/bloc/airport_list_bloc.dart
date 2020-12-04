import 'dart:async';

import 'package:aeropuertos_de_la_ciudad/Airport/repository/airport_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:aeropuertos_de_la_ciudad/Airport/model/airport.dart';
import 'package:flutter/material.dart';

part 'airport_list_event.dart';
part 'airport_list_state.dart';

class AirportListBloc extends Bloc<AllAirportsEvent, AirportListState> {
  final AirportRepository airportRepository;
  AirportListBloc({this.airportRepository}) : super(AirportFetchingState());

  @override
  AirportListState get initialState => AirportFetchingState();

  @override
  Stream<AirportListState> mapEventToState(
    AllAirportsEvent event,
  ) async* {
    yield AirportFetchingState();
    List<Airport> airports;
    try {
      if (event == AllAirportsEvent.loadSuccess) {
        airports = await airportRepository.getAirports();
      }
      if (airports.length == 0) {
        yield AirportEmpty();
      } else {
        yield AirportFetchSucess(airports: airports);
      }
    } catch (error, traceback) {
      print("ERROR: $error");
      print("TRACEBACK: $traceback");
      yield AirportError();
    }
  }
}
