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
        CustomAppbar(title: "Notes", icon: Icons.search),
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
  const CustomAppbar({
    Key? key,
    required this.title,
    this.icon,
  }) : super(key: key);
  final String title;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Spacer(),
          Customicon(icon: icon),
        ],
      ),
    );
  }
}

class Customicon extends StatelessWidget {
  const Customicon({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
