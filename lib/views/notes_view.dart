import 'package:flutter/material.dart';
import 'package:notesy/views/widget/notes_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 6.0,
            ),
            child: const NotesItem(),
          );
        },
      ),
    );
  }
}
