import 'package:flutter/material.dart';
import 'package:my_first_flutter_weather_app/constants/const.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/door.png"),
            radius: 70,
          ),
          SizedBox(
            height: konst30,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Lorvench"),
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text("Lorvench@gmail.com"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("090 888888"),
          ),
        ],
      ),
    );
  }
}
