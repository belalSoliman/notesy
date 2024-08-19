import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesy/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notesy/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesy/views/widget/notes_form.dart';

class ModalSheet extends StatelessWidget {
  ModalSheet({super.key});
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is AddNoteFailure) {
              print(state.error);
            }
            if (state is AddNoteSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchNote();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const SingleChildScrollView(child: NotesForm()));
          },
        ),
      ),
    );
  }
}
