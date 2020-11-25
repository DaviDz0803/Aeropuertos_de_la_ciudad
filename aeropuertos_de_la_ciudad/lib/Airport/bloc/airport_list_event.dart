part of 'airport_list_bloc.dart';

abstract class AirportListEvent extends Equatable {
  const AirportListEvent();

  @override
  List<Object> get props => [];
}

class AllAirportsEvent {}
