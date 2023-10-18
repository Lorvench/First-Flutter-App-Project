import 'package:flutter/material.dart';
import 'package:my_first_flutter_weather_app/class/cardclass.dart';
import 'package:my_first_flutter_weather_app/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              box: MyItems(title: "Rocket", image: "images/rocket.png"),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    box: MyItems(title: "Travel", image: "images/travel.png"),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    box: MyItems(title: "Space", image: "images/space.png"),
                  ),
                ),
              ],
            ),
            CardWidget(
              box: MyItems(title: "Yeah", image: "images/yeah.png"),
            ),
          ],
        ),
      ),
    );
  }
}
