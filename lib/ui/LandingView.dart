import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_flutter/domain/NavigationRepository.dart';
import 'package:portfolio_flutter/ui/ResponsiveWrapperView.dart';
import 'package:portfolio_flutter/ui/TopNavigationView.dart';
import 'package:portfolio_flutter/ui/common/ColorPallete.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingView extends StatelessWidget {
  static const routeName = "/app";

  final _navigationRepository = NavigationRepository();

  static const maxWidth = 900;
  static const widthGapFactor = 0.9;
  static const flutterHP='https://flutter.io';

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
      appBar: _buildAppBar(context),
      drawer: _buildDrawer(context),
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

  AppBar _buildAppBar(BuildContext context) {
    final _desktop = Row(
      children: <Widget>[
        Expanded(
          child: Text("Fabio's Portfolio"),
        ),
        FlatButton(
          child: Text(
            "Powered by Flutter.io",
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.white54),
          ),
          onPressed: () {
            launch(flutterHP);
          },
        ),
      ],
    );

    final flutterImage =
        'https://github.com/dnfield/flutter_svg/blob/master/test/golden_widget/flutter_logo.string.png?raw=true';
    final _mobile = Row(
      children: <Widget>[
        Text("Fabio's Portfolio"),
      ],
    );

    final responsiveWrapper = ResponsiveWrapperView();
    return AppBar(
      leading: responsiveWrapper.isDesktop(context) ? Container() : null,
      title: ResponsiveWrapperView(
        desktop: _desktop,
        mobile: _mobile,
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _navigationRepository.getData().map<Widget>((e) {
            return ListTile(
              title: Text(
                e.title ?? '',
                style: ColorPallete.of(context).drawerButtonText,
              ),
              onTap: () {
                Navigator.pop(context);
                _navigate(context, e.title);
              },
            );
          }).toList()
            ..insert(0, _buildDrawerHeader(context))
            ..add(Expanded(child: Container()))
            ..add(_buildDrawerFooter(context)),
        ),
      ),
    );
  }

  Widget _buildDrawerHeader(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Text(
          'Project list',
          style: ColorPallete.of(context).drawerHeaderText,
        ),
      ),
    );
  }

  Widget _buildDrawerFooter(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: FlatButton(
        child: Text(
          'Powered by flutter.io',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: Colors.grey[700]),
        ),
        onPressed: () {
          launch(flutterHP);
        },
      ),
    );
  }
}
