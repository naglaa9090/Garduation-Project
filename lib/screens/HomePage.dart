import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gradproject/screens/AcessoriePage.dart';
import 'package:gradproject/screens/LensesPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const  Text("welcome "),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) {
                    return const Accessories(); // Assuming NewScreen is a defined widget
                  }),
                );
              },
              child: const Text("acce"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) {
                    return const Lenses(); // Assuming NewScreen is a defined widget
                  }),
                );
              },
              child: const Text("Lenses"),
            ),
          ],
        ),
      ),
    );
  }
}

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Screen"),
      ),
      body: Center(
        child: Text("This is the new screen!"),
      ),
    );
  }
}
