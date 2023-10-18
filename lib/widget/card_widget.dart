import 'package:flutter/material.dart';
import 'package:my_first_flutter_weather_app/class/cardclass.dart';
import 'package:my_first_flutter_weather_app/constants/const.dart';
import 'package:my_first_flutter_weather_app/pages/discription.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});
  final MyItems box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return DiscriptionPage(box: box);
            },
          ),
        );
      },
      child: Card(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(konst10),
          child: Column(
            children: [
              Image.asset(box.image),
              Text(
                box.title,
                style: const TextStyle(
                    fontSize: konst20, fontWeight: FontWeight.bold),
              ),
              Text("this is a ${box.title} discription"),
              const SizedBox(
                height: konst5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
