import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String HintText;
  final int maxLines;
  CustomField({
    Key? key,
    required this.HintText,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Color.fromARGB(255, 48, 221, 233),
      decoration: InputDecoration(
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(Color.fromARGB(255, 48, 221, 233)),
          hintText: HintText,
          hintStyle: TextStyle(color: Color.fromARGB(255, 48, 221, 233))),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
            color: color ??
                Colors.white)); //if color is null use white else use color
  }
}
