import 'package:flutter/material.dart';
import 'package:notesy/views/widget/custom_btn.dart';
import 'package:notesy/views/widget/text_field.dart';

class NotesForm extends StatefulWidget {
  const NotesForm({super.key});

  @override
  State<NotesForm> createState() => _NotesFormState();
}

class _NotesFormState extends State<NotesForm> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          CustoemTextFiled(
            onsave: (value) {
              title = value;
            },
            title: 'Title',
            lines: 1,
          ),
          CustoemTextFiled(
            onsave: (value) {
              subtitle = value;
            },
            title: 'your note',
            lines: 8,
          ),
          CustomBtn(
            onpress: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            icon: Icon(
              Icons.add,
              size: 40,
              color: Color.fromARGB(255, 23, 93, 128),
            ),
          ),
        ],
      ),
    );
  }
}
