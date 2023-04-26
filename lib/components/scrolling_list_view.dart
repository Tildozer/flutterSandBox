import 'package:flutter/material.dart';
// class Entry{
//   String message; // property
//   String name; // property
//   IconData icon; // prop

//   Entry(this.message, this.name, this.icon);
// }

class Hori extends StatelessWidget {
  const Hori({Key? key, required this.enteries}) : super(key: key);

  final List enteries;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: enteries.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, int index) => Container(
                        width: 200,
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(40),
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                            color: Colors.redAccent.shade100,
                            borderRadius:
                                const BorderRadius.all(Radius.elliptical(5, 5)),
                            border: Border.all(color: Colors.black, width: 2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Container(
                            alignment: Alignment.topLeft,
                            color: Colors.red,
                            child: Text(enteries[index].message),
                          ),
                          Text(enteries[index].name),
                          Icon(enteries[index].icon)
                        ],)
                      )),
                ),
              );
  }
}