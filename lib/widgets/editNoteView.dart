import 'package:flutter/material.dart';
import 'package:notes_app/Custom_texrField.dart';
import 'package:notes_app/widgets/NotesBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomAppbar(title: 'EditNotes', icon: Icons.check),
          SizedBox(height: 50),
          CustomField(HintText: "title"),
          SizedBox(height: 18),
          CustomField(HintText: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
