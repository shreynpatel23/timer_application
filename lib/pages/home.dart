import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    //use modal route function to consume the route data
    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                focusColor: Colors.blue[800],
                textColor: Colors.blue[600],
                splashColor: Colors.blue[800],
                // use this function to navigate to loading screen
                onPressed: () {
                  Navigator.pushNamed(context, '/locations');
                },
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                child: Text('Choose Location'),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(data['location'],
                      style: TextStyle(
                        fontSize: 30.0,
                        letterSpacing: 2.0,
                      )),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 60.0,
                  letterSpacing: 2.0,
                  color: Colors.blue[900],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
