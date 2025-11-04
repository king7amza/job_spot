import 'package:flutter/material.dart';

class PlayersItem extends StatefulWidget {
  final int scoreX;
  final int scoreO;

  const PlayersItem({super.key,required this.scoreX, required this.scoreO});

  @override
  State<PlayersItem> createState() => _PlayersItemState();
}

class _PlayersItemState extends State<PlayersItem> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.deepOrangeAccent,
        ),
        width: 300,
        height: 200,
        child: Center(
          child: Text(
            "player x score = ${widget.scoreX}\nplayer o score = ${widget.scoreO}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
