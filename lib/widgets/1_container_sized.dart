import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //scaffold is the ROOF of an app.
        //it is the property of "home:"

        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text("Container & Sized Box"),
        ),

        //to work on area below the app bar you need to define a parameter "body"

        //diff b/w sized box and container is that --> container have more parameters.
        // SizedBox doesnt have color property ..
        //SizedBox only has --height / width / key these three property
        // by making a child we can put some text in the sized box

        body: Center(
          // center wrap is required to move the sized box to center
          // otherwise it will be in the top left corner of screen.
          // child: SizedBox(
          //   height: 50,
          //   width: 50,
          //   child: Text("hello"),
          // ),

          child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  // shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20, spreadRadius: 5, color: Colors.black)
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              padding: const EdgeInsets.only(
                left: 500,
              )),
        )

        // padding & margin --> padding is space from inside..and margin is space from outside.
        );
  }
}
