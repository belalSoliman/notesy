import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesy/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesy/models/note_model.dart';
import 'package:notesy/views/widget/notes_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          List<NoteModel> notes =
              BlocProvider.of<NotesCubit>(context).notes ?? [];
          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 6.0,
                ),
                child: NotesItem(
                  note: notes[index],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
