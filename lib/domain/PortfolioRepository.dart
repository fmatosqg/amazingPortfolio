import 'package:portfolio_flutter/domain/VideoRepository.dart';

/// Holds the static information displayed in each page.
///
class PortfolioRepository {
  static const aboutCrocmedia =
      "Crocmedia is Australia’s largest syndicator of radio sports content, broadcasting via SEN Station 1116 and +100 other radio stations around the country.";

  static const aboutButterfly =
      "Butterfly is a digital agency that provides UI/UX and development services.";

  static const aboutPersonal =
      "Fabio is an experienced mobile developer who likes to code for fun.";

  final crocmediaDriversSeat = PortfolioData(
    aboutCompany: aboutCrocmedia,
    shortName: "Crocmedia Driver's Seat",
    appName: "Driver's Seat",
    storeLink:
        "https://play.google.com/store/apps/details?id=com.crocmedia.nitro&hl=en",
    videoPath: VideoRepository.driversSeat,
    talkingPoints: [
      "Greenfield app, fully reactive approach",
      "Landing: custom scrollable bottom bar",
      "Experts: chips wrap to next line",
      "News: Pager with custom tabs and hero",
      "Videos: Picture in Picture",
      "Schedule: sticky header",
    ],
  );
  final crocmediaSkinning = PortfolioData(
    aboutCompany: aboutCrocmedia,
    appName: "Reskin Proof of Concept",
    videoPath: VideoRepository.reelAdventures,
    talkingPoints: [
      "Reskin Driver's Seat and launch multiple apps for different sports",
      "Per app Sponsor: new branding, new color scheme, new data sources",
      "Tune and tweak specific screens",
    ],
  );

  final crocmediaSenApp = PortfolioData(
      aboutCompany: aboutCrocmedia,
      shortName: "Crocmedia Sen App",
      appName: 'Sen App - digital radio',
      talkingPoints: [
        "one",
        "t",
      ]);

  final butterflyFreightQuotes = PortfolioData(
    aboutCompany: aboutButterfly,
    shortName: "Butterfly Load Board",
    appName: 'Load Board',
    talkingPoints: [
      'a',
    ],
  );

  final butterflyFlutterPoc = PortfolioData(
    aboutCompany: aboutButterfly,
    shortName: "Butterfly Flutter POCs",
    appName: 'POCs made in flutter',
    talkingPoints: [
      'a',
    ],
  );

  final personalPortfolio = PortfolioData(
    aboutCompany: aboutPersonal,
    shortName: 'Personal web site',
    appName: 'Portfolio app (this web page)',
    talkingPoints: [
      'a',
    ],
  );

  final personalWallpapers = PortfolioData(
    aboutCompany: aboutPersonal,
    shortName: 'Personal Wallpaper app',
    appName: 'Amazing Wallpapers',
    talkingPoints: [
      'a',
    ],
  );
}

class PortfolioData {
  final String aboutCompany;
  final String shortName;
  final String appName;
  final String storeLink;
  final String videoPath;
  final List<String> talkingPoints;

  PortfolioData({
    this.aboutCompany,
    this.shortName,
    this.appName,
    this.storeLink,
    this.videoPath,
    this.talkingPoints,
  });
}
