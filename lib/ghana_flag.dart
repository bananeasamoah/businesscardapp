import 'package:flutter/material.dart';

class GhanaFlag extends StatelessWidget {
  const GhanaFlag({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ghana Flag'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                color: Colors.yellow,
                child: Center(
                  child: Icon(Icons.star, size: 50,),
                ),
              ),
              Container(
                height: 100,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
