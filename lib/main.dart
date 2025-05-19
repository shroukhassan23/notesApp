import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Constants.dart';
import 'package:notes_app/NotesCubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/NoteModel.dart';
import 'package:notes_app/widgets/HomeView.dart';

void main() async {
  await Hive.initFlutter(); //initialize Hive
  await Hive.openBox(kNotesBox); //create Box
  Hive.registerAdapter(
      NoteModelAdapter()); //  allows Hive to serialize and deserialize instances of the NoteModel class when storing or retrieving them from the database.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubitCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily:
              'Poppins', //to makes App in dark theme//*ThemeData().dark().
        ),
        home: const HomeView(),
      ),
    );
  }
}
