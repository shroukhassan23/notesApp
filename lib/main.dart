import 'package:flutter/material.dart';
import 'package:notes_app/widgets/HomeView.dart';

void main() {
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
        brightness:
            Brightness.dark, //to makes App in dark theme//*ThemeData().dark().
      ),
      home: HomeView(),
    );
  }
}
