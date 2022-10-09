import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Captain America"),
      ),
      body: Center(
          child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          // not working with "Decoration()"

          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black,
              spreadRadius: 5.0,
            )
            // shadow is given to box decoration and not to decoration image
          ],

          image: const DecorationImage(
            // image: Image.network(
            image: NetworkImage(
              'https://m.media-amazon.com/images/M/MV5BMTY4NTU1NTEwNV5BMl5BanBnXkFtZTcwMzE1NzAwNg@@._V1_.jpg',

              // fit: BoxFit.cover,
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.red,

          borderRadius: BorderRadius.circular(20),
          // this border radius is not applying at image so we have to change something here...
        ),
        // color: Colors.red,
        // child: Image.network(
        //   'https://m.media-amazon.com/images/M/MV5BMTY4NTU1NTEwNV5BMl5BanBnXkFtZTcwMzE1NzAwNg@@._V1_.jpg',
        //   fit: BoxFit.cover,
        // ),
      )),
    );
  }
}
