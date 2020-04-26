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

  /////////////////////////////
  static const aboutRoadhouse = "Roadhouse is an Australian Digital Agency.";

  static const aboutOpenInvest =
      'OpenInvest is a Public Benefit Corporation and asset manager using Dynamic Custom Indexing technology.';

  static const aboutRoadhouseOpeninvest = '$aboutRoadhouse \n$aboutOpenInvest';

  final crocmediaDriversSeat = PortfolioData(
    aboutCompany: aboutCrocmedia,
    shortName: "Crocmedia Driver's Seat",
    appName: "Driver's Seat",
    storeLink:
        "https://play.google.com/store/apps/details?id=com.crocmedia.nitro&hl=en",
    videoPath: VideoRepository.driversSeat,
    talkingPoints: [
      "Greenfield app, 100% written by me with fully reactive approach",
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
      videoPath: VideoRepository.senApp,
      appName: 'Sen App - digital radio',
      talkingPoints: [
        "Reactive views in 'Today' screen (live video comes in at about 5 seconds)",
        "Added analytics id tracker for users who need help in 'Settings' screen",
        "Reuse scrolling bottom bar UI and models from Driver's Seat, implemented as standalone lib",
        "Fixtures screen: UI and models implemented as standalone lib ",
        "Add DI to project (Koin)",
        "Preexisting code used both Glide and Picasso: eliminate Glide",
        "Added geolocation by GPS in accordance to advertising/gambling state laws (catching up with iOS)",
        "Support Portrait and Landscape"
      ]);

  final crocmediaSenAudio = PortfolioData(
      aboutCompany: aboutCrocmedia,
      shortName: "Crocmedia Sen App",
      appName: 'Sen App - audio library',
      videoPath: VideoRepository.senAppAudio,
      talkingPoints: [
        'Rip apart MediaPlayer implementation and replace with new library built on Exoplayer 2',
        'Listeners + ViewModel approach keep every view and component close to source of truth',
        'Added sleep timer: audio stops after 30,60,90... minutes to (catch up with iOS)',
        'Revamped "Now Playing" tiles (catch up with iOS)',
        'Animated FAB gives quick access to Audio bottom sheet (catch up with iOS)'
      ]);

  final openInvest = PortfolioData(
    aboutCompany: aboutRoadhouseOpeninvest,
    shortName: 'OpenInvest',
    appName: 'Roadhouse: OpenInvest',
    storeLink:
        'https://play.google.com/store/apps/details?id=au.net.openinvest.app',
    videoPath: VideoRepository.openInvest,
    talkingPoints: [
      'Built in 4 weeks, 10k lines written by me (>85% of whole app)',
      'Code is > 98% kotlin, using iOS code as reference',
      'Reactive (RxJava2), multi-module architecture (Dagger 2 with scopes)',
      'Generous use of mocked data to stress errors and crashes',
    ],
  );

  final butterflyFreightQuotes = PortfolioData(
    aboutCompany: aboutButterfly,
    shortName: "Butterfly Load Board",
    appName: 'Load Board',
    talkingPoints: [],
  );

  final butterflyFlutterPoc = PortfolioData(
    aboutCompany: aboutButterfly,
    shortName: "Butterfly Flutter POCs",
    appName: 'POCs made in flutter',
    talkingPoints: [
      'a',
    ],
  );

  final personalWallpapers = PortfolioData(
    aboutCompany: aboutPersonal,
    videoPath: VideoRepository.amazingWallpapers,
    shortName: 'Personal Wallpaper app',
    appName: 'Amazing Wallpapers',
    talkingPoints: [
      'My 1st greenfield Android App, 100% done by me',
      'Deployed live in 2015 with Dagger 1',
      'Choose favorites among multiple feeds (reddit, twitter, instagram, flickr etc)',
      'Daily updated',
      'Detailed view background matches accents from picture',
    ],
  );

  final personalPortfolio = PortfolioData(
      aboutCompany: aboutPersonal,
      shortName: 'Personal web site',
      appName: 'Portfolio website (this web page)',
      githubLink: 'http://github.com/fmatosqg/amazingPortfolio',
      imageStillPath: "assets/images/portfolio_screenshot.png",
      talkingPoints: [
        'This web page is developed using Flutter Web',
        'Responsive: breakpoints at 500px and 900px',
        'Soon: SSL and more',
      ]);

  final personalFlutter = PortfolioData(
    shortName: 'Personal Flutter projects',
    appName: 'Low level canvas demo',
    videoPath: VideoRepository.flutterParticles,
    githubLink: 'http://github.com/fmatosqg/flutter_sample_bloc.git',
    talkingPoints: [
      'POC of particle system',
      'Simple implementation of BLoC',
    ],
  );
}

class PortfolioData {
  final String aboutCompany;
  final String shortName;
  final String appName;
  final String storeLink;
  final String githubLink;
  final String videoPath;
  final String imageStillPath;
  final List<String> talkingPoints;

  PortfolioData({
    this.aboutCompany,
    this.shortName,
    this.appName,
    this.storeLink,
    this.githubLink,
    this.videoPath,
    this.imageStillPath,
    this.talkingPoints,
  });
}
