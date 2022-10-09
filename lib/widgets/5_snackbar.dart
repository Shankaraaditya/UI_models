import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackbar = SnackBar(
              content: Text("This Is SnackBar"),
              //  const snackbar = SnackBar(content: Text("This Is SnackBar"),

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),

              behavior: SnackBarBehavior.floating,

              // padding: EdgeInsets.all(20),

              duration: const Duration(milliseconds: 3000),

              action: SnackBarAction(
                label: "Undo",
                textColor: Colors.blue,
                onPressed: () {},
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackbar);
            // scaffold messenger is required to show the snackbar.
          },
          child: const Text("Show SnackBar"),
        ),
      ),
    );
  }
}
