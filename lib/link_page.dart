import 'package:flutter/material.dart';
// import 'components/my_animation.dart';
// import 'package:http/http.dart' as http;
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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          Row(
            children: [
              Container(
                width: 200,
                color: Colors.cyan.shade400,
                child: const Icon(Icons.currency_yen_outlined),
              ),
            ],
          ),
          Container(
            width: 200,
            color: Colors.brown,
            child: const Icon(Icons.currency_ruble, color: Colors.white,),
          )
        ],
      ),
    );
  }
}

