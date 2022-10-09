// import 'dart:ffi';

import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showDialog(context);
            },
            child: const Text("Alert Button!!!")),
      ),
    );
  }
}

Future<void> _showDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("This is an alert"),
          //gives the title of the alert
          //content is defind to show the error messege of alert
          //you will have to wrap the "listBody" ion single child scroll view of provide the box the size
          // because the size of the alert box is decided according the length of the error messege

          content: SingleChildScrollView(
            child: ListBody(children: const [
              Text("this is demo"),
              Text("this is below demo"),
            ]),
          ),
          actions: [
            TextButton(onPressed: () {}, child: const Text("Approve")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel")),
          ],
        );
      });
}
