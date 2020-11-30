import 'package:aeropuertos_de_la_ciudad/Airport/repository/airport_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:aeropuertos_de_la_ciudad/Airport/model/airport.dart';
import 'Airport/bloc/airport_list_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aeropuertos de la Ciudad"),
      ),
      body: Container(
          child: BlocBuilder<AirportListBloc, AirportListState>(
        cubit: AirportListBloc(airportRepository: AirportRepository()),
        builder: (BuildContext context, AirportListState state) {
          print("State: $state");
          if (state is AirportFetchSucess) {
            print('Data ${state.airports}');
            return ListView.builder(
              itemCount: 3, //state.airports.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "1", // "${state.airports[index].airportId}.",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          } else
            return Container();
        },
      )),
    );
  }
}

/*                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Text(
                          "Kamloops Airport",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Text(
                          "Canada",
                          style: TextStyle(fontSize: 16.0),
                        )
                      ],
                    ),
                  ),*/
