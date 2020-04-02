import 'dart:async';

class NavigationRepository {
  static const driversSeat = "Crocmedia Driver's Seat";
  static const senApp = "Crocmedia Sen App";
  static const freightQuotes = "Butterfly Load Board";

  final List<NavigationData> data = [
    driversSeat,
    senApp,
    freightQuotes,
  ].map((e) => NavigationData(e)).toList();

  final _streamController = StreamController<String>();

  NavigationRepository() {
    _streamController.add(data.first.title);
  }

  List<NavigationData> getEntries() {
    return data;
  }

  void selectEntry(String entryTitle) {
    if (data.firstWhere((element) => element.title == entryTitle,
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
