import 'package:flutter/material.dart';
import 'first_page.dart' as first_page;
import 'second_page.dart' as second_page;
import 'third_page.dart' as third_page;
// import 'link_page.dart' as link_page;
import 'components/drawer.dart' as my_drawer;

void main() {
  runApp(const SandBox());
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Test zone",
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    first_page.MainPage(),
    second_page.SecondPage(),
    third_page.ThirdPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
        drawer: const my_drawer.AppDrawer(),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(label: "1", icon: Icon(Icons.abc)),
            BottomNavigationBarItem(icon: Icon(Icons.face), label: "2"),
            BottomNavigationBarItem(icon: Icon(Icons.donut_small), label: "3"),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
