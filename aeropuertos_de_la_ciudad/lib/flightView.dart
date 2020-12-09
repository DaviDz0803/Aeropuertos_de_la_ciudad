import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Airport/bloc/airport_list_bloc.dart';

class FlightView extends StatelessWidget {
  void _submit() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aeropuertos de la Ciudad"),
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 21.0),
                labelText: 'Origin',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Write IATA',
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 21.0),
                labelText: 'Destination',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Write IATA',
              ),
            ),
            RaisedButton(
              onPressed: _submit,
              child: Text("submit"),
            ),
          ],
        ));
  }
}
