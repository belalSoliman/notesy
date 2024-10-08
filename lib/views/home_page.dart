import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesy/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesy/views/notes_view.dart';

import 'package:notesy/views/widget/floating_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNote();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingBtn(),
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
              color: Color.fromARGB(255, 23, 93, 128),
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
