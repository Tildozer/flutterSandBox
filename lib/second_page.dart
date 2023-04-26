import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 10,

                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Container(
                  height: 100,
                  width: 200,
                  margin: const EdgeInsets.only(left: 60.0),
                  decoration:
                  BoxDecoration(color: Colors.redAccent.shade100),
                  child: const Text("here"),
                    )),
              ),
            ),
           
          ],
        ))
      ],
    );
  }
}
