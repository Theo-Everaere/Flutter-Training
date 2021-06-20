import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('images/profile_pic.jpg'),
            ),
            Text(
              'Theo Everaere',
              style: TextStyle(
                  fontSize: 30.0, color: Colors.white, fontFamily: 'Pacifico'),
            ),
            Text(
              'FLUTTER & WEB DEVELOPER',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontFamily: 'Source Sans Pro'),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 35.0,
                  color: Colors.teal,
                ),
                title: Text(
                  "+33 6 95 11 28 58",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Source Sans Pro",
                      color: Colors.teal.shade900),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  size: 40.0,
                  color: Colors.teal,
                ),
                title: Text(
                  'theo-everaere@hotmail.fr',
                  style: TextStyle(
                      fontFamily: "Source Sans Pro",
                      color: Colors.teal.shade900,
                      fontSize: 20.0),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
