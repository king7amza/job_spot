import 'package:flutter/material.dart';

class InsidePrimaryItem extends StatelessWidget {
  const InsidePrimaryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Notebook",
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.cyan[100],
      body: ,
    );
  }
}
