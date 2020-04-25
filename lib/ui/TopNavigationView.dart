import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/ui/common/ColorPallete.dart';
import 'package:portfolio_flutter/domain/NavigationRepository.dart';

import 'ResponsiveWrapperView.dart';

class TopNavigationView extends StatelessWidget {
  final String _selectedTitle;
  final List<NavigationData> _buttonTitleList;
  final Function(BuildContext, String) _onPressed;

  TopNavigationView(
      this._buttonTitleList, this._selectedTitle, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapperView(
      desktop: TopNavigationDesktopView(
          _buttonTitleList, _selectedTitle, _onPressed),
    );
  }

  Widget _buildButton(BuildContext context, String title, bool isSelected,
      {double internalPadding = 14}) {
    var elevation;

    if (isSelected) {
      elevation = 1.0;
    } else {
      elevation = 4.0;
    }

    return RaisedButton(
      padding: EdgeInsets.all(internalPadding),
      child: Text(
        title ?? '',
        style:
            ColorPallete.of(context).getNavigationButtonTextStyle(isSelected),
      ),
      elevation: elevation,
      color: ColorPallete.of(context).getNavigationButtonColor(isSelected),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      onPressed: () {
        _onPressed(context, title);
      },
    );
  }
}
//
//class TopNavigationMobileView extends TopNavigationView {
//  TopNavigationMobileView(List<NavigationData> buttonTitleList,
//      String selectedTitle, Function(BuildContext, String) onPressed)
//      : super(buttonTitleList, selectedTitle, onPressed);
//
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: Wrap(
//        spacing: 20,
//        children: <Widget>[
//          _buildButton(context, 'Android', false, internalPadding: 0),
//          _buildButton(context, 'Flutter', false, internalPadding: 0),
//        ],
//      ),
//    );
//  }
//}

class TopNavigationDesktopView extends TopNavigationView {
  TopNavigationDesktopView(List<NavigationData> buttonTitleList,
      String selectedTitle, Function(BuildContext, String) onPressed)
      : super(buttonTitleList, selectedTitle, onPressed);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: _buttonTitleList
            .map((e) =>
                _buildButton(context, e.title, _selectedTitle == e.title))
            .toList(),
      ),
    );
  }
}
