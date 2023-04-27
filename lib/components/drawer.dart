import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Header"),
                    ),
                    Icon(
                      Icons.breakfast_dining_rounded,
                      size: 54,
                    )
                  ],
                ),
              ),
              // ListTile(
              //     title: const Text('Item 1'),
              //     onTap: () {
              //       // Update the state of the app
              //       // ...
              //       // Then close the drawer
              //       Navigator.pop(context);
              //     }),
              // ListTile(
              //     title: const Text('Item 2'),
              //     onTap: () {
              //       // Update the state of the app
              //       // ...
              //       // Then close the drawer

              //       Navigator.pop(context);
              //     }),
            ],
          ),
        );
  }
}