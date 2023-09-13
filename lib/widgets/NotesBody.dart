import 'package:flutter/material.dart';
import 'package:notes_app/widgets/NotesItem.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const CustomAppbar(),
        Expanded(
            child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: NotesItem(),
            );
          },
        ))
      ],
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Text(
            "Notes",
            style: TextStyle(fontSize: 20),
          ),
          Spacer(),
          Searchicon(),
        ],
      ),
    );
  }
}

class Searchicon extends StatelessWidget {
  const Searchicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: const Center(
          child: Icon(
        Icons.search,
        color: Colors.white,
      )),
    );
  }
}
