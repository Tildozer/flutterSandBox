import 'package:flutter/material.dart';

void main() {
  runApp( const SandBox() );
}

class SandBox extends StatefulWidget {
  const SandBox({super.key});

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          title: const Text("this is all for practice!"),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 10),
          child: const Text("here is my first link to a new"),
          ),
      ),
    );
  }
}