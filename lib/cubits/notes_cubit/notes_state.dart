part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesError extends NotesState {
  final String error;
  NotesError({required this.error});
}

class NotesSuccess extends NotesState {
  final List<NoteModel> notes;
  NotesSuccess({required this.notes});
}
