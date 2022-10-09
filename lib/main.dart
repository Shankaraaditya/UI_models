import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_30_1/widgets/10_bottom_sheet.dart';
import 'package:flutter_app_30_1/widgets/1_container_sized.dart';
import 'package:flutter_app_30_1/widgets/24_login_auth.dart';
import 'package:flutter_app_30_1/widgets/2_rows_cols.dart';
import 'package:flutter_app_30_1/widgets/31_stream_builder.dart';
import 'package:flutter_app_30_1/widgets/3_buttons.dart';
import 'package:flutter_app_30_1/widgets/4_list_grid.dart';
import 'package:flutter_app_30_1/widgets/5_snackbar.dart';
import 'package:flutter_app_30_1/widgets/6_dismissible.dart';
import 'package:flutter_app_30_1/widgets/7_drawer.dart';
import 'package:flutter_app_30_1/widgets/8_imageWidget.dart';
import 'package:flutter_app_30_1/widgets/9_alert.dart';
// ignore: unused_import
import 'dart:ffi';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp();

  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.deepPurple),
      // home: Container_Sized(), // this is just name of home which is
      home:  StreamWidget(),
      //required to be called.
      //without home the app will crash..
    );
  }
}
