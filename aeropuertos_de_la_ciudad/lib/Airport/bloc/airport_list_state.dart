part of 'airport_list_bloc.dart';

abstract class AirportListState extends Equatable {
  const AirportListState();

  @override
  List<Object> get props => [];
}

class AirportListInitial extends AirportListState {}

class AirportFetchingState extends AirportListState {}

class AirportFetchSucess extends AirportListState {
  final List<Airport> airports;
  AirportFetchSucess({@required this.airports});
}

class AirportEmpty extends AirportListState {}

class AirportError extends AirportListState {}
