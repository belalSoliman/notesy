import 'package:flutter/material.dart';
import 'package:notesy/views/widget/modal_sheet.dart';

class FloatingBtn extends StatelessWidget {
  const FloatingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(22),
        ),
      ),
      elevation: 20,
      splashColor: Colors.cyan,
      highlightElevation: 20,
      onPressed: () {
        showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.white10),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(7),
                top: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (context) => const ModalSheet());
      },
      child: const Icon(Icons.add),
    );
  }
}
