import 'dart:async';

import 'package:portfolio_flutter/ui/portfolio/CrocmediaSenAppView.dart';
import 'package:portfolio_flutter/ui/portfolio/CrocmediaView.dart';
import 'package:portfolio_flutter/ui/portfolio/PersonalFlutter.dart';
import 'package:portfolio_flutter/ui/portfolio/PersonalProjects.dart';

import 'PortfolioRepository.dart';

class NavigationRepository {
  List<NavigationData> _data;

  final _streamController = StreamController<NavigationData>();

  NavigationRepository() {
    final r = PortfolioRepository();

    _data = [
      NavigationData(
          r.crocmediaDriversSeat.shortName, () => CrocmediaDriversSeatView()),
      NavigationData(r.crocmediaSenApp.shortName, () => CrocmediaSenAppView()),

//      NavigationData(r.butterflyFreightQuotes.shortName,
//          () => ButterflyFreightQuotesView()),
//      NavigationData(r.butterflyFlutterPoc.shortName, () => Container()),
//      NavigationData(
//          r.personalPortfolio.shortName, () => PersonalPortfolioView()),
      NavigationData(
          r.personalWallpapers.shortName, () => PersonalWallpaperView()),

      NavigationData(r.personalFlutter.shortName, () => PersonalFlutterView()),
    ];

    _streamController.add(_data.first);
  }

  getData() {
    return _data;
  }

  void selectEntry(String entryTitle) {
    final entry = _data.firstWhere((element) => element.title == entryTitle,
        orElse: () {});

    if (entry != null) {
      _streamController.add(entry);
    }
  }

  Stream<NavigationData> selectedEntry() {
    return _streamController.stream;
  }
}

class NavigationData {
  final String title;
  final Function f;

  NavigationData(this.title, this.f);
}
