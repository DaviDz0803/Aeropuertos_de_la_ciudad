import 'package:flutter/material.dart';
import 'package:aeropuertos_de_la_ciudad/Airport/model/airport.dart';
import 'Airport/bloc/airport_list_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AirportListBloc _airportBloc = AirportListBloc();

  /* @override
  void dispose() {
    super.dispose();
    //  _airportBloc.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aeropuertos de la Ciudad"),
      ),
      body: Container(
        child: StreamBuilder<List<Airport>>(
            //   stream:
            builder:
                (BuildContext context, AsyncSnapshot<List<Airport>> snapshot) {
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "${snapshot.data[index].airportId}.",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "${snapshot.data[index].airportName}",
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            "${snapshot.data[index].countryId}",
                            style: TextStyle(fontSize: 16.0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
