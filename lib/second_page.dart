import 'package:flutter/material.dart';
import "components/scrolling_list_view.dart" as horizontal_scroll;
class Entry{
  String message; // property
  String name; // property
  IconData icon; // prop

  Entry(this.message, this.name, this.icon);
}


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Entry> enteries = [
      Entry("I learned", "How to use", Icons.access_alarm_sharp),
      Entry("Classes to build", "Objects", Icons.dangerous_sharp)
    ];
    return Column(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              horizontal_scroll.Hori(enteries: enteries),
            ],
          ),
        )
      ],
    );
  }
}
