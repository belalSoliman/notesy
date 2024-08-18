import 'package:flutter/material.dart';

class ModalSheet extends StatelessWidget {
  const ModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text('Modal Bottom Sheet'),
      ),
    );
  }
}
