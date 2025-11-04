import 'dart:ffi';

import 'package:flutter/material.dart';
class BackButtonItem extends StatelessWidget {

  final VoidCallback newGame;

  const BackButtonItem({super.key,required this.newGame});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        newGame();
      },
      child:  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.black,
        ),
        width: 220,
        height: 90,
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Icon(Icons.arrow_back,color: Colors.white,),
              SizedBox(
                width: 10,
              ),
              Text(
                "back",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
