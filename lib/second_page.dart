import 'package:flutter/material.dart';
import "components/scrolling_list_view.dart" as horizontal_scroll;
import 'components/reverse_scrolling.dart' as reverse_scroll;

class Entry {
  String message; // property
  String name; // property
  IconData icon; // prop

  Entry(this.name, this.message, this.icon);
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Entry> enteries = [
      Entry(
          "This is a sample.",
          "This shows how to make a horizontal scrolling section",
          Icons.access_alarm_sharp),
      Entry(
          "Sample 2",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          Icons.dangerous_sharp),
      Entry(
          "Sample 3",
          " Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
          Icons.wrap_text),
      Entry(
          "Sample 4",
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          Icons.ac_unit_rounded),
    ];
    final List<Entry> reverseEntries = [
      Entry(
          "Sample 5",
          "A, asperiores obcaecati consectetur, voluptas ratione nostrum tempora eaque quasi eum iusto, ducimus saepe illum.",
          Icons.yard),
      Entry(
          "Sample 6",
          "Debitis amet dolores error rerum tenetur totam laboriosam consectetur, nam ab sequi repellat, quibusdam numquam voluptatibus soluta illo magnam.",
          Icons.wifi_lock),
      Entry(
          "Sample 7",
          "Iure vel accusamus expedita quas laudantium quasi quae, officiis ratione itaque delectus possimus, repudiandae commodi nobis ad, quod magni ex exercitationem inventore.",
          Icons.circle_outlined),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          horizontal_scroll.Hori(enteries: enteries),
          reverse_scroll.ReverseScroll(enteries: reverseEntries),
          Container(
            height: 200,
            color: Colors.grey.shade500,
            child: const Text("data"),
          )
        ],
      ),
    );
  }
}
