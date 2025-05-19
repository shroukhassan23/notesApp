import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final Function(String?)? onSaved;
  final String HintText;
  final int maxLines;
  const CustomField({
    Key? key,
    this.onSaved,
    required this.HintText,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: const Color.fromARGB(255, 48, 221, 233),
      decoration: InputDecoration(
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(const Color.fromARGB(255, 48, 221, 233)),
          hintText: HintText,
          hintStyle: const TextStyle(color: Color.fromARGB(255, 48, 221, 233))),
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
