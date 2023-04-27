import 'package:flutter/material.dart';

class Hori extends StatelessWidget {
  const Hori({Key? key, required this.enteries}) : super(key: key);

  final List enteries;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: enteries.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, int index) => Container(
            width: 200,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
                color: Colors.redAccent.shade100,
                boxShadow: const [BoxShadow(blurRadius: 2)],
                borderRadius: const BorderRadius.all(Radius.elliptical(5, 5)),
                border: Border.all(color: Colors.red.shade500, width: 2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  color: Colors.red,
                  child: Text(enteries[index].name),
                ),
                Text(enteries[index].message),
                Icon(enteries[index].icon)
              ],
            ))),
      ),
    );
  }
}
