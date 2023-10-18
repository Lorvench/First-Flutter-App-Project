import 'package:flutter/material.dart';
import 'package:my_first_flutter_weather_app/class/cardclass.dart';
import 'package:my_first_flutter_weather_app/constants/const.dart';

class DiscriptionPage extends StatefulWidget {
  const DiscriptionPage({super.key, required this.box});

  final MyItems box;

  @override
  State<DiscriptionPage> createState() => _DiscriptionPageState();
}

class _DiscriptionPageState extends State<DiscriptionPage> {
  double fntsize = 140;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.box.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.box.image),
            Wrap(
              spacing: konst20,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        fntsize = 50;
                      },
                    );
                  },
                  child: const Text("small text"),
                ),
                TextButton(
                  onPressed: () {
                    setState(
                      () {
                        fntsize = 80;
                      },
                    );
                  },
                  child: const Text("medium text"),
                ),
                FilledButton(
                  onPressed: () {
                    setState(
                      () {
                        fntsize = 100;
                      },
                    );
                  },
                  child: const Text("large text"),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(
                      () {
                        fntsize = 140;
                      },
                    );
                  },
                  child: const Text("huge text"),
                ),
              ],
            ),
            Column(
              children: [
                FittedBox(
                  child: Text(
                    widget.box.title,
                    style: TextStyle(fontSize: fntsize),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(konst10),
                  child: Text(
                    "Bacon ipsum dolor amet pastrami sirloin cupim flank brisket pancetta buffalo boudin swine ham jerky short loin tail hamburger turducken. Doner t-bone hamburger, sirloin pork shank fatback shoulder ground round pork chop beef salami. Swine ham drumstick kielbasa jerky pastrami beef turducken boudin picanha. Spare ribs drumstick short ribs tri-tip jowl prosciutto corned beef buffalo Bacon ipsum dolor amet pastrami sirloin cupim flank brisket pancetta buffalo boudin swine ham jerky short loin tail hamburger turducken. Doner t-bone hamburger, sirloin pork shank fatback shoulder ground round pork chop beef salami. Swine ham drumstick kielbasa jerky pastrami beef turducken boudin picanha. Spare ribs drumstick short ribs tri-tip jowl prosciutto corned beef buffalo.Bacon ipsum dolor amet pastrami sirloin cupim flank brisket pancetta buffalo boudin swine ham jerky short loin tail hamburger turducken. Doner t-bone hamburger, sirloin pork shank fatback shoulder ground round pork chop beef salami. Swine ham drumstick kielbasa jerky pastrami beef turducken boudin picanha. Spare ribs drumstick short ribs tri-tip jowl prosciutto corned beef buffalo.Bacon ipsum dolor amet pastrami sirloin cupim flank brisket pancetta buffalo boudin swine ham jerky short loin tail hamburger turducken. Doner t-bone hamburger, sirloin pork shank fatback shoulder ground round pork chop beef salami. Swine ham drumstick kielbasa jerky pastrami beef turducken boudin picanha. Spare ribs drumstick short ribs tri-tip jowl prosciutto corned beef buffalo..",
                    style: TextStyle(),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
