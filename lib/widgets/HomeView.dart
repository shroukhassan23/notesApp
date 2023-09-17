import 'package:flutter/material.dart';
import 'package:notes_app/widgets/AddNoteBottomSheet.dart';
import 'package:notes_app/widgets/NotesBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: NotesBody(),
    );
  }
}
