import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Botto Sheet Widget In Flutter",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("Show Bottom Sheet"),
        onPressed: () {
          // showBottomSheet(
          showModalBottomSheet(
              backgroundColor: Colors.green,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              isDismissible: false,
              enableDrag: true,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize:
                      MainAxisSize.min, // to minimize the size of bottom sheet
                  // according to the content of the sheet
                  children: const [
                    ListTile(
                      title: Text("Aditya"),
                      subtitle: Text("CAR"),
                    ),
                    ListTile(
                      title: Text("Aditya"),
                      subtitle: Text("CAR"),
                    ),
                    ListTile(
                      title: Text("Aditya"),
                      subtitle: Text("CAR"),
                    ),
                    ListTile(
                      title: Text("Aditya"),
                      subtitle: Text("CAR"),
                    ),
                    ListTile(
                      title: Text("Aditya"),
                      subtitle: Text("CAR"),
                    ),
                  ],
                );
              });
        },
      )),
    );
  }
}
