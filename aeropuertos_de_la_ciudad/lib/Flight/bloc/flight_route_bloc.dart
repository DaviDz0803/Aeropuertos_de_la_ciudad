import 'dart:async';

import 'package:aeropuertos_de_la_ciudad/Flight/repository/flight_repository.dart';
import 'package:aeropuertos_de_la_ciudad/Airport/bloc/airport_list_bloc.dart';
import 'package:aeropuertos_de_la_ciudad/Flight/model/flight.dart';
import 'package:aeropuertos_de_la_ciudad/Flight/repository/flight_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'flight_route_event.dart';
part 'flight_route_state.dart';

class FlightRouteBloc extends Bloc<FlightRouteEvent, FlightRouteState> {
  final FlightRepository flightRepository;
  FlightRouteBloc(this.flightRepository) : super(FlightRouteInitial());

  @override
  FlightRouteState get initialState => FlightRouteInitial();

  @override
  Stream<FlightRouteState> mapEventToState(
    FlightRouteEvent event,
  ) async* {
    yield FlightFetchingState();
    List<Flight> flights;
    try {
      if (event is FlightEvent) {
        //     flights = await flightRepository.getFlights(originIATACode, destinationIATACode);
      }
      if (flights.length == 0) {
        yield FlightEmpty();
      } else {
        yield FlightFetchSucess(flights: flights);
      }
    } catch (_) {
      yield FlightError();
    }
  }
}
