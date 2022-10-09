import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var l = MediaQuery.of(context).size.height;

    //media query is used to measure the length and width of
    // screen of device ..
    // we cant provide any constant value here
    // as diff phones can have diff sizes.

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Rows AND Columns"),
      ),
      body: Container(
        height: 200,
        width: w,
        color: Colors.yellow,
        child: Row(
            //by default row aayega vertically beech me lekin horizontly left me
            //row ke liye main axis x hota hai cross axis y hota hai
            // column ke liye main axis y hota hai cross axis x hota hai

            // mainAxisAlignment: MainAxisAlignment.center, // ABHI BEECH ME GYI ROW
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // EQUAL SPACE TO ALL CONT. FROM BOTH SIDES
            // space around--->>> space b/w two containers are equal
            // not necessarily from left and right of whole row
            // space between-->> no space at whole left and whole right
            //MainAxisAlignment.start & end -->> from start and end
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.purple,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.cyanAccent,
              ),
            ]),

        // if due to size of the body is less and row have more childern
        // then overflow will occor.
        // to overcome this "wrap" widget is used at place of "rows" or "column"
        // wrap has "direction" -->> to decide afteroverflow next will be placed
        // horizontally or vertically
      ),
    );
  }
}
