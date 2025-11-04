import 'package:flutter/material.dart';

class EndGameCard extends StatefulWidget {


  final String playerWinnerName;
  const EndGameCard({super.key, required this.playerWinnerName});

  @override
  State<EndGameCard> createState() => _EndGameCardState();
}

class _EndGameCardState extends State<EndGameCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[800],
            ),
            width: 400,
            height: 300,
            child: Center(
              child: Text(
                "Congrats Player ${widget.playerWinnerName}\n\t\t\t\t\t\t\t\t\t\t"
                    "🥳🥳",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
