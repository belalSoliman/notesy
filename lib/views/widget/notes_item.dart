import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.22,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 6, 88, 229),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                title: AutoSizeText(
                  'Flutter Tips and Tricks',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width *
                        0.06, // Responsive font size
                  ),
                  maxLines: 1,
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 9),
                  child: AutoSizeText(
                    'Flutter is a cross-platform app development framework created by Google. It is used to build cross-platform applications for Android, iOS, Linux, Mac, Windows, and the web.',
                    style: TextStyle(fontSize: 24), // Start font size
                    maxLines: 4,
                    minFontSize: 14, // Minimum font size
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: MediaQuery.of(context).size.width * 0.1,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: (8.0), vertical: 12),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    "may ,4 , 22",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
              ),
            ],
          )),
    );
  }
}
