import 'package:flutter/material.dart';

class ReverseScroll extends StatelessWidget {
  const ReverseScroll({super.key, required this.enteries});

  final List enteries;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: enteries.length,
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) => Container(
          width: 200,
          padding: const EdgeInsets.only(top: 5, left: 10, right: 3),
          margin:
              const EdgeInsets.only(top: 10, left: 40, right: 40, bottom: 40),
          decoration: BoxDecoration(
              color: Colors.orange.shade600,
              borderRadius: const BorderRadius.all(
                Radius.elliptical(5, 5),
              ),
              border: Border.all(
                color: Colors.orange.shade200,
                width: 2,
              ),
              boxShadow: const [BoxShadow(blurRadius: 2)]),
          child: Column(
            children: [
              Container(
                width: 200,
                padding: const EdgeInsets.only(right: 5),
                alignment: Alignment.centerRight,
                color: Colors.orange.shade100,
                child: Text(enteries[index].name),
              ),
              Text(
                enteries[index].message,
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.all(8)),
              Icon(
                enteries[index].icon,
                size: 34,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
