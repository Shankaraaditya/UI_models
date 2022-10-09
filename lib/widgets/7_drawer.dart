import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          // container for whole drawer

          color: Theme.of(context).primaryColor, // color of whoole drawer
          child: ListView(
            // whole drawer ka child list view ..kyuki list ke form me he hota hai drawer

            // list ka sbse uper ka header
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    // color: Colors.red,
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://www.esquireme.com/cloud/2021/09/08/peaky-blinders-cillian-murphy-1562155630.jpg'),
                        ),

                        const SizedBox(
                          width: 10,
                        ), // to give a space b/w image
                        // and his username
                        //his username willl be like-->
                        //name and below name his email id
                        //so this is like column
                        //you have to make a column in the row
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // to move both text in center virtically (along y)
                          //
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // to start the texts from start..
                          // try uncommenting and see the difference you dunmb ass.
                          children: const [
                            Text("Tommy Shelby"),
                            Text("tommyshelby@gmail.com")
                          ],
                        )
                      ],
                    ),
                  )),
              const ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
              ),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text("Delete"),
              ),

              const Divider(), // to put a divider between lists
              // jaise last me logout thoda neeche hota hai main list ke.

              const ListTile(
                leading: Icon(Icons.upload),
                title: Text("Upload"),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const Center(
        child: Text("hello baby"),
      ),
    );
  }
}
