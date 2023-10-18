import 'package:flutter/material.dart';
import 'package:my_first_flutter_weather_app/pages/homepage.dart';
import 'package:my_first_flutter_weather_app/pages/profilePage.dart';

class Nafigation extends StatefulWidget {
  const Nafigation({super.key});

  @override
  State<Nafigation> createState() => _NafigationState();
}

int currentIndex = 0;
List person = const [HomePage(), ProfilePage()];

class _NafigationState extends State<Nafigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: person.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: " Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: " Profile",
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
