import 'package:flutter/material.dart';
import 'package:notesy/views/widget/custom_btn.dart';

import 'package:notesy/views/widget/text_field.dart';

class ViewNote extends StatelessWidget {
  const ViewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Note'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
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
              Icons.check,
              size: 40,
              color: Color.fromARGB(255, 23, 93, 128),
            ),
          ),
        ],
      ),
    );
  }
}
