import 'package:portfolio_flutter/domain/VideoRepository.dart';

/// Holds the static information displayed in each page.
///
class PortfolioRepository {
  static const aboutCrocmedia =
      "Crocmedia is Australia’s largest syndicator of radio sports content, broadcasting via SEN Station 1116 and +100 other radio stations around the country.";

  final crocmediaDriversSeat = PortfolioData(
    aboutCompany: aboutCrocmedia,
    appName: "Driver's Seat",
    storeLink:
        "https://play.google.com/store/apps/details?id=com.crocmedia.nitro&hl=en",
    videoPath: VideoRepository.driversSeat,
    talkingPoints: [
      "Greenfield app",
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
}

class PortfolioData {
  final String aboutCompany;
  final String appName;
  final String storeLink;
  final String videoPath;
  final List<String> talkingPoints;

  PortfolioData({
    this.aboutCompany,
    this.appName,
    this.storeLink,
    this.videoPath,
    this.talkingPoints,
  });
}
