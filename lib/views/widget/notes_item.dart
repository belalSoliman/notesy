import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesy/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesy/models/note_model.dart';
import 'package:notesy/views/view_note.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ViewNote()));
      },
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
              color: Color(note.color),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  title: AutoSizeText(
                    note.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width *
                          0.04, // Responsive font size
                    ),
                    maxLines: 1,
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: AutoSizeText(
                      note.content,
                      style: TextStyle(fontSize: 24), // Start font size
                      maxLines: 4,
                      minFontSize: 14, // Minimum font size
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchNote();
                    },
                    icon: Icon(
                      Icons.delete,
                      size: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: (8.0), vertical: 12),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      note.date,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]),
                ),
              ],
            )),
      ),
    );
  }
}
