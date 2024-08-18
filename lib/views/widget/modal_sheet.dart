import 'package:flutter/material.dart';
import 'package:notesy/views/widget/custom_btn.dart';
import 'text_field.dart';

class ModalSheet extends StatelessWidget {
  const ModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const CustoemTextFiled(
              title: 'Title',
              lines: 1,
            ),
            const CustoemTextFiled(
              title: 'your note',
              lines: 8,
            ),
            CustomBtn(
              icon: const Icon(
                Icons.add,
                size: 40,
                color: Color.fromARGB(255, 23, 93, 128),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
