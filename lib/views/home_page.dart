import 'package:flutter/material.dart';
import 'package:notesy/views/notes_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        elevation: 0,
        title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Notes',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 40,
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 5,
          ),
          NotesView(),
        ],
      ),
    );
  }
}
