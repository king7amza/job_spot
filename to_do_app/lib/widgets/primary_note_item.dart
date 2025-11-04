import 'package:flutter/material.dart';

import '../models/maine_notes.dart';

class MainNoteItem extends StatelessWidget {
  final VoidCallback noteDone;
  final TextEditingController controller;

  const MainNoteItem({
    super.key,
    required this.noteDone,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.09,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.center,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "add Note",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
                controller: controller,
                style: Theme.of(
                  context,
                ).textTheme.headlineSmall!.copyWith(color: Colors.black),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 16),
              child: Container(
                width: size.width * 0.12,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  onPressed: () {
                    noteDone();
                  },
                  icon: Icon(Icons.delete, color: Colors.white),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16),
              child: Container(
                width: size.width * 0.12,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  onPressed: () {
                    noteList.add(MaineNote(title: controller.text));
                    noteDone();
                  },
                  color: Colors.black,
                  icon: Icon(Icons.check, color: Colors.deepPurple),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
