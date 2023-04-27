import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(30),
            width: 300,
            height: 300,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                boxShadow: [
                  BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 5.0)
                ]),
            child: const Text("middle"),
          ),
        ),
      ],
    )
    );
  }
}
