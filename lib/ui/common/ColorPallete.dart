import 'package:flutter/material.dart';

class ColorPallete {
  var _navigationButtonTextStyleActive;
  var _navigationButtonTextStyleInactive;

  var porfolioBulletText;
  var porfolioHeaderText;
  TextStyle portfolioAppNameText;
  TextStyle drawerHeaderText;
  TextStyle drawerButtonText;

  TextStyle contactLabel;
  TextStyle contactValue;

  static ColorPallete of(BuildContext context) {
    return ColorPallete(context);
  }

  ColorPallete(BuildContext context) {
    final _themeData = Theme.of(context);

    _navigationButtonTextStyleActive = _themeData.textTheme.button.copyWith(
      fontSize: 20,
      color: Colors.black87,
    );

    _navigationButtonTextStyleInactive = _themeData.textTheme.button.copyWith(
      fontSize: 20,
      color: Color(0xfffff4f8),
    );

    ///////////////////////////////////////////////
    portfolioAppNameText = _themeData.textTheme.headline6
        .copyWith(fontSize: 18, fontFamily: 'Arvo');

    porfolioBulletText = _themeData.textTheme.bodyText2.copyWith(
        fontSize: 15, fontFamily: "Lato", fontWeight: FontWeight.normal);

    porfolioHeaderText = _themeData.textTheme.headline6.copyWith(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[700]);

    drawerHeaderText = _themeData.textTheme.headline6.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white70,
        fontFamily: 'Arvo');

    drawerButtonText = _themeData.textTheme.headline6.copyWith(
      fontSize: 16,
      fontFamily: 'Arvo',
      color: Colors.grey[700],
    );

    contactValue = _themeData.textTheme.headline6
        .copyWith(fontSize: 16, color: Colors.black54, fontFamily: 'Arvo');

    contactLabel = contactValue.copyWith(
      fontWeight: FontWeight.bold,
    );
  }

  Color getNavigationButtonColor(bool isSelected) {
    if (isSelected) {
      return Colors.greenAccent[200];
    } else {
      return Colors.green[500];
    }
  }

  getNavigationButtonTextStyle(bool isSelected) {
    if (isSelected) {
      return _navigationButtonTextStyleActive;
    } else {
      return _navigationButtonTextStyleInactive;
    }
  }
}
