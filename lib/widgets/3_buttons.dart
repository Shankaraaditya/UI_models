import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: Center(
        // bas center se wrap karne se button ekdm uper beech me aayega..
        // screen pe beech me laane ke liye main axis alignment (y axis) ka center dena hoyega.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // "TextButton" need two parameters for sure -- (1) on press -- function (2) child --> text on button
            // we can add style to our button by adding more parametrs to it like - "style:"
            // also  "child" ---> (text on button) ..last parameter hota hai "TextButton" ka.

            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                elevation: MaterialStateProperty.all(20),
                padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                // padding will increase the dostance b/w button text and button border
                overlayColor: MaterialStateProperty.all(Colors.black),
                //"overlaycolor" is splash on click
              ),
              onPressed: () {},
              child: const Text(
                "Press Me!!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Container(
              height: 50,
              width: 300,
              child: ElevatedButton(
                //"elevatedButton" doesnot have padding parameter
                //therefore to give it a sixe we will have to
                // wrap it with a container.

                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor),
                    //color of button will be same as that of primary color of app.
                    // yaha ye deep purple dikhega kyuki maine file me "themedata"
                    // ka primary color deep purple diya gaya hai..

                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)))),
                onPressed: () {
                  print('heyloo babe'); // prints in consloe.
                },
                child: const Text(
                  "Press Me!!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
