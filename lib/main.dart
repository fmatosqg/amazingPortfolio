import 'package:flutter/material.dart';

import 'ui/LandingView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LandingView.routeName,
      routes: {
        LandingView.routeName: (context) => LandingView(),
        '/': (context) => Container()
      },
    );
  }
}
