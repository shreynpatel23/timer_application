import 'package:flutter/material.dart';
import 'package:timerapplication/pages/home.dart';
import 'package:timerapplication/pages/loading.dart';
import 'package:timerapplication/pages/location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/locations': (context) => Location(),
  },
));

