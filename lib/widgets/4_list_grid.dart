import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  ListGrid({Key? key}) : super(key: key);

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = [
    'Orange',
    'Mango',
    'Apple',
    'Banana',
    'Papaya'
  ]; //is used in listview.builder

  // map will be requierd if you nwant to make title and subtitle both for each card
  Map fruits_person = {
    'fruits': ['Orange', 'Mango', 'Apple', 'Banana', 'Papaya'],
    'names': ['aditya', 'adarsh', 'abhilasha', 'arvind', 'shashiya']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List & Grid View"),
        backgroundColor: Colors.blue,
        elevation: 10,
      ),
      // body: Container(
      //   // wrapped list veiw with container
      //   child: ListView(
      //     // list view has childern same as column ...diff b/w both. ??
      //     //diff-->> agar list view use kar rahe to infinite no of childern daal
      //     //         sakte ho..screen se jada hoga to wo scrolable bana dega usko
      //     // whereas agar column use krte to no. of children jaise he screen size se jada
      //     // hota turnt wo overflow ka error fek deta
      //     // lesson-->> column hamesa screen size ko dekh ke elments lega..
      //     children: const [
      //       Card(
      //         // card is somehow same as contaner -->
      //         // but provides more beuty to it..
      //         child: ListTile(
      //           title: Text("Orange"),
      //           subtitle: Text("aditya"),
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      body: Container(
        // child: ListView.builder(
        //   // list view.builder is used when we dont know the size of the list
        //   // jaise list me har child ke liye ek seperate card banana padega
        //   // agar kisi database se data fetch karke list ke form me rakhnha hai to dikkat hogi list se

        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         onTap: () {
        //           print(fruits_person['fruits'][index]);
        //         },
        //         leading: const Icon(Icons.person),

        //         title: Text(fruits_person['fruits'][index]),
        //         subtitle: Text(fruits_person['names'][index]),

        //       ),
        //     );
        //   },
        // ),

        // child: GridView(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 20, // cross axis (y) ke beech ka space
        //     mainAxisSpacing: 20, // main axis(x) ke beech me space dena
        //     childAspectRatio: 2 / 3,
        //   ),
        //   children: const [
        //     Card(
        //       child: Center(
        //         child: Text("orange"),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: Text("orange"),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: Text("orange"),
        //       ),
        //     ),
        //     Card(
        //       child: Center(
        //         child: Text("orange"),
        //       ),
        //     )
        //   ],
        // ),

        child: GridView.builder(
          itemCount: fruits.length, // list count se wo estimate laga leta hai
          // builder bas un elemets ke liye he call hoga jo visible hote hai screen par
          // isse performance kaafi badh jaati hai

          // delegate is used to provide layout of grid view.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Text(fruits[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
