part of 'flight_route_bloc.dart';

abstract class FlightRouteEvent extends Equatable {
  const FlightRouteEvent();

  @override
  List<Object> get props => [];
}

class FlightEvent extends FlightRouteEvent {}
