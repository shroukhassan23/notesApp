import 'package:flutter/material.dart';
import 'package:notes_app/Custom_texrField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomField(
              HintText: "Title",
            ),
            SizedBox(
              height: 20,
            ),
            CustomField(
              HintText: "Content",
              maxLines: 5,
            ),
            SizedBox(height: 30),
            Custombutton(),
          ],
        ),
      ),
    );
  }
}

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 48, 221, 233),
          borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(
        child: Text("Add"),
      ),
    );
  }
}
