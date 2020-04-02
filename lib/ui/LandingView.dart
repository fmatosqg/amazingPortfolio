import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/domain/NavigationRepository.dart';
import 'package:portfolio_flutter/ui/TopNavigationView.dart';
import 'package:portfolio_flutter/ui/portfolio/ButterflyFreightQuotes.dart';
import 'package:portfolio_flutter/ui/portfolio/CrocmediaSenAppView.dart';
import 'package:portfolio_flutter/ui/portfolio/CrocmediaView.dart';

class LandingView extends StatelessWidget {
  static const routeName = "/app";

  final _navigationRepository = NavigationRepository();

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;
    var width;

    if (windowWidth > 800) {
      width = 800;
    } else {
      width = windowWidth;
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Expanded(
              child: Text("Fabio's Portfolio"),
            ),
            Text(
              "Powered by Flutter.io",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white54),
            ),
          ],
        ),
      ),
      body: StreamBuilder<String>(
          stream: _navigationRepository.selectedEntry(),
          builder: (context, snapshot) {
            return Column(
              children: <Widget>[
                TopNavigationView(
                    _navigationRepository.data, snapshot.data, _navigate),
                Expanded(
                    child: Center(
                  child: Container(
                    width: width,
                    child: _builMainContents(snapshot.data),
                  ),
                )),
              ],
            );
          }),
    );
  }

  Widget _builMainContents(String appName) {
    var widget;

    switch (appName) {
      case NavigationRepository.driversSeat:
        widget = CrocmediaDriversSeatView();
        break;
      case NavigationRepository.senApp:
        widget = CrocmediaSenAppView();
        break;
      case NavigationRepository.freightQuotes:
        widget = ButterflyFreightQuotes();
        break;
      default:
        widget = Container();
    }

    return widget;
  }

  _navigate(BuildContext context, String entryTitle) {
    _navigationRepository.selectEntry(entryTitle);
  }
}
