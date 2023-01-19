import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Row(
                children: [
                  Icon(Icons.logout),
                ],
              ))
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/akif.jpeg')),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Muhammed Akif N',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Akiflaxz786@email.com',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                textAlign: TextAlign.center,
                'Address: Nellippramban house Karakunnu po,pazhedam,malappuram dist,kerala-676123',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Phone: 7593971636',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
