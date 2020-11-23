import 'dart:async';

import 'package:aeropuertos_de_la_ciudad/Airport/repository/airport_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:aeropuertos_de_la_ciudad/Airport/model/airport.dart';
import 'package:flutter/material.dart';

part 'airport_list_event.dart';
part 'airport_list_state.dart';

class AirportListBloc extends Bloc<AirportListEvent, AirportListState> {
  final AirportRepository airportRepository;
  AirportListBloc({this.airportRepository}) : super(AirportListInitial());

  @override
  AirportListState get initialState => AirportListInitial();

  @override
  Stream<AirportListState> mapEventToState(
    AirportListEvent event,
  ) async* {
    yield AirportFetchingState();
    List<Airport> airports;
    try {
      if (event is AllAirportsEvent) {
        airports = await airportRepository.getAirports();
      }
      if (airports.length == 0) {
        yield AirportEmpty();
      } else {
        yield AirportFetchSucess(airports: airports);
      }
    } catch (_) {
      yield AirportError();
    }
  }
}
