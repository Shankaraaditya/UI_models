import 'dart:async';

import 'package:flutter/material.dart';

class StreamWidget extends StatefulWidget {
  StreamWidget({Key? key}) : super(key: key);

  @override
  State<StreamWidget> createState() => _StreamWidgetState();
}

class _StreamWidgetState extends State<StreamWidget> {
  int counter = 0;
  StreamController<int> counterControlller = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stream concepts")),
      body: SafeArea(
          child: Center(
        child: StreamBuilder(
          stream: counterControlller.stream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.toString(),
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ));
            } else {
              return Text("0",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ));
            }
          },
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          counterControlller.sink.add(counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
