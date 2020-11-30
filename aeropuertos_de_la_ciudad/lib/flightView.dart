import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class FlightView extends StatefulWidget {
  FlightView({Key key}) : super(key: key);

  @override
  _FlightViewState createState() => _FlightViewState();
}

class _FlightViewState extends State<FlightView> {
  final _controller = TextEditingController();

  void initState() {
    super.initState();
    _cotroller.addListener(() {
      final text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(6),
        child: TextFormField(
          controller: _controller,
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ),
    );
  }
}
