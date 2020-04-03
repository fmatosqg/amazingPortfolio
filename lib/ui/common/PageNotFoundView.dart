import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio_flutter/ui/LandingView.dart';

class PageNotFoundView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 800,
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "404 page not found",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              RaisedButton(
                child: Text('Go back'),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, LandingView.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
