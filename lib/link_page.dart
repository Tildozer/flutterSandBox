import 'package:flutter/material.dart';
// import 'components/my_animation.dart';

class LinkPage extends StatelessWidget {
  const LinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.amber.shade700,
          foregroundColor: Colors.black,
          title: const Text("this is a new page!"),
      ),
      body: const Text("Link Page"),
    );
  }
}

