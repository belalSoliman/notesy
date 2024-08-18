import 'package:flutter/material.dart';

import 'text_field.dart';

class ModalSheet extends StatelessWidget {
  const ModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const CustoemTextFiled(
              title: 'Title',
              lines: 1,
            ),
            const CustoemTextFiled(
              title: 'your note',
              lines: 5,
            ),
          ],
        ));
  }
}
