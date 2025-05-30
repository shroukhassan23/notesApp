import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/editNoteView.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const Scaffold(
                body: EditNoteView(),
              );
            },
          ));
        },
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 150, 59),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: ListTile(
                  title: const Text(
                    "Flutter Tips",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  subtitle: Text(
                    "Learn Flutter Now",
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withOpacity(0.5)),
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FontAwesomeIcons.trash,
                        color: Colors.black,
                      )),
                ),
              ),
              Text(
                "May/2023",
                style: TextStyle(
                    fontSize: 16, color: Colors.black.withOpacity(0.5)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
