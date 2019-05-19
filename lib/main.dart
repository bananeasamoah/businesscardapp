import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// import 'drawer.dart';
// import 'ghana_flag.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  _launchPhone() async {
    const tel = 'tel:0243762398';
    if (await canLaunch(tel)) {
      await launch(tel);
    } else {
      throw 'Could not launch $tel';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 90,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              Text(
                'Benjamin Anane-Asamoah',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MarckScript',
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                'WEB/MOBILE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.deepPurple.shade100,
                  fontSize: 20,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 200.0,
                child: Divider(
                  color: Colors.deepPurple.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(20),
                child: ListTile(
                  onTap: _launchPhone,
                  leading: Icon(
                    Icons.phone,
                    color: Colors.deepPurple,
                  ),
                  title: Text(
                    '(+233) 0243762398',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(20),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.deepPurple,
                    ),
                    title: Text(
                      'decwap@gmail.com',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
