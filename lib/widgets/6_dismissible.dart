import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['apple', 'banana', 'mango', 'orange'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible"),
      ),
      body: ListView.builder(
        // dynamic list hai isiliye builder use kar rahe
        itemCount: fruits.length,
        itemBuilder: (context, a) {
          // itemBuilder which will create a new widget again and again up to 5 times
          // because we have itemCount=5.
          //If we don’t use itemCount in ListView.builder then we will get infinite list

          final f = fruits[a]; // for keys

          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(fruits[a]),
                  backgroundColor: Colors.red,
                ));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(fruits[a]),
                  backgroundColor: Colors.green,
                ));
              }
            },
            key: Key(f),
            background: Container(
              color: Colors.red,
            ),
            secondaryBackground: Container(
              color: Colors.green,
            ),
            child: Card(
              child: ListTile(
                title: Text(fruits[a]),
              ),
            ),
          );
        },
      ),
    );
  }
}
