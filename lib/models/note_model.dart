class NoteModel {
  final String title;
  final String content;
  final String date;
  final int color;

  NoteModel(this.title, this.content,
      {required this.date, required this.color});
}
