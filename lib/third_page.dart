import 'package:flutter/material.dart';
import 'link_page.dart' as link_page;

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        const Center(
          child: Text("TEST"),
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const link_page.LinkPage(),
          )),
          child: Center(
            child: Container(
                width: screenSize.width,
                height: screenSize.height / 5,
                color: Colors.blue.shade200,
                child: const Center(
                  child: Text('Click me to navigate to a new page.'),
                )),
          ),
        )
      ],
    );
  }
}
