import 'package:aeropuertos_de_la_ciudad/Airport/repository/airport_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aeropuertos_de_la_ciudad/Airport/model/airport.dart';
import 'Airport/bloc/airport_list_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AirportListBloc bloc = BlocProvider.of<AirportListBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Aeropuertos de la Ciudad"),
      ),
      body: Container(child: BlocBuilder<AirportListBloc, AirportListState>(
        // cubit: AirportListBloc(airportRepository: AirportRepository()),
        builder: (BuildContext context, AirportListState state) {
          print("State: $state");
          if (state is AirportFetchingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is AirportFetchSucess) {
            print('Data ${state.airports}');
            return ListView.builder(
                itemCount: state.airports.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text("${state.airports[index].name}"),
                      subtitle: Text('${state.airports[index].country}'),
                      trailing: Text('${state.airports[index].iata}'),
                    ),
                  );
                });
          } else
            return Container(
              child: Text("error"),
            );
        },
      )),
    );
  }
}
