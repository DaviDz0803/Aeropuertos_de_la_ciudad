part of 'flight_route_bloc.dart';

abstract class FlightRouteState extends Equatable {
  const FlightRouteState();

  @override
  List<Object> get props => [];
}

class FlightRouteInitial extends FlightRouteState {}

class FlightFetchingState extends FlightRouteState {}

class FlightFetchSucess extends FlightRouteState {
  final List<Flight> flights;
  FlightFetchSucess({@required this.flights});
}

class FlightEmpty extends FlightRouteState {}

class FlightError extends FlightRouteState {}
