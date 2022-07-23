import 'package:flutter/material.dart';
import 'package:parallax/screens/newscreen.dart';
import 'package:parallax/screens/parallax.dart';
import 'package:get/get.dart';
import 'package:parallax/utils/location_track.dart';

Future<void> main() async{
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  NewScreen(),
    );
  }
}

