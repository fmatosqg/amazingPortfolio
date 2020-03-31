import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/ui/common/ColorPallete.dart';

class TopNavigationView extends StatelessWidget {
  final NavigationRepository _navigationRepository = NavigationRepository();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        stream: _navigationRepository.selectedEntry(),
        builder: (context, selectedEntry) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: _navigationRepository._data
                  .map((e) => _buildButton(
                      context, e.title, selectedEntry.data == e.title))
                  .toList(),
            ),
          );
        });
  }

  Widget _buildButton(BuildContext context, String title, bool isSelected) {
    var elevation;

    if (isSelected) {
      elevation = 4.0;
    } else {
      elevation = 8.0;
    }

    return RaisedButton(
      padding: EdgeInsets.all(14),
      child: Text(
        title,
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
        _navigationRepository.selectEntry(title);
      },
    );
  }
}

class NavigationRepository {
  final List<NavigationData> _data = [
    NavigationData("Crocmedia Driver's Seat"),
    NavigationData("Crocmedia Sen App"),
    NavigationData("RACV Membership App"),
  ];

  final _streamController = StreamController<String>();

  NavigationRepository() {
    _streamController.add(_data.first.title);
  }

  List<NavigationData> getEntries() {
    return _data;
  }

  void selectEntry(String entryTitle) {
    if (_data.firstWhere((element) => element.title == entryTitle,
            orElse: () {}) !=
        null) {
      _streamController.add(entryTitle);
    }
  }

  Stream<String> selectedEntry() {
    return _streamController.stream;
  }
}

class NavigationData {
  final String title;

  NavigationData(this.title);
}
