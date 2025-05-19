import 'package:flutter/material.dart';

import 'package:notes_app/Custom_texrField.dart';
import 'package:notes_app/NotesCubit/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app/models/NoteModel.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Notes(),
      ),
    );
  }
}

class Notes extends StatefulWidget {
  const Notes({
    super.key,
  });

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  //final NoteModel _noteModel = NoteModel();
  String? title, subTitle;
  var note1 = NoteModel(
    title: 'Note 1',
    subTitle: 'Subtitle 1',
    Date: '2023-09-21',
    color: 0xFFABCDEF,
  );
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomField(
            HintText: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomField(
            HintText: "Content",
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 30),
          Custombutton(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  AddNoteCubitCubit().addNote(note1); //*---
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

class Custombutton extends StatelessWidget {
  const Custombutton({
    Key? key,
    this.ontap,
  }) : super(key: key);
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 48, 221, 233),
            borderRadius: BorderRadius.circular(10)),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: const Center(
          child: Text("Add"),
        ),
      ),
    );
  }
}
