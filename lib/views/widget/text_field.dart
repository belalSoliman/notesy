import 'package:flutter/material.dart';

class CustoemTextFiled extends StatelessWidget {
  const CustoemTextFiled(
      {super.key, required this.title, required this.lines, this.onsave});
  final String title;
  final int lines;
  final void Function(String?)? onsave;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          onSaved: onsave,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'please enter some text';
            } else {
              return null;
            }
          },
          maxLines: lines,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.withOpacity(0.5),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.greenAccent),
            ),
            hintText: title,
            hintStyle: const TextStyle(color: Colors.grey),
          )),
    );
  }
}
