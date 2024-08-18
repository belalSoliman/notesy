import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notesy/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchNote() async {
    try {
      var notesBox = Hive.box<NoteModel>('notes');

      emit(NotesSuccess(notes: notesBox.values.toList()));
    } catch (e) {
      emit(NotesError(error: e.toString()));
    }
  }
}
