import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Prabhneet";
    const double pi = 3.14;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Catalog App",
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: const Text("Welcome to the $days days of Flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
