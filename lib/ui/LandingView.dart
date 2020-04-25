import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/domain/NavigationRepository.dart';
import 'package:portfolio_flutter/ui/TopNavigationView.dart';

class LandingView extends StatelessWidget {
  static const routeName = "/app";

  final _navigationRepository = NavigationRepository();

  static const maxWidth = 900;
  static const widthGapFactor = 0.9;

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;
    var width;

    if (windowWidth > maxWidth) {
      width = maxWidth * widthGapFactor;
    } else {
      width = windowWidth * widthGapFactor;
    }

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
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
      body: StreamBuilder<NavigationData>(
          stream: _navigationRepository.selectedEntry(),
          builder: (context, snapshot) {
            return Scrollbar(
              child: Center(
                child: Container(
                  width: width,
                  child: Column(
                    children: <Widget>[
                      TopNavigationView(_navigationRepository.getData(),
                          snapshot?.data?.title, _navigate),
                      Expanded(child: snapshot?.data?.f() ?? Container()),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  _navigate(BuildContext context, String entryTitle) {
    _navigationRepository.selectEntry(entryTitle);
  }
}
