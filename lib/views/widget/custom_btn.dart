import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      height: MediaQuery.of(context).size.height * 0.07,
      child: IconButton(
        iconSize: 40,
        icon: icon,
        highlightColor: Colors.green,
        tooltip: 'Add new note',
        hoverColor: Colors.blue,
        enableFeedback: true,
        visualDensity: VisualDensity.comfortable,
        alignment: Alignment.center,
        onPressed: () {},
      ),
    );
  }
}
