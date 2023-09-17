import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/widgets/HomeView.dart';

void main() async {
  await Hive.initFlutter(); //initialize Hive
  await Hive.openBox(kNotesBox); //create Box
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily:
            'Poppins', //to makes App in dark theme//*ThemeData().dark().
      ),
      home: const HomeView(),
    );
  }
}
