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
    shortName: "Driver's Seat",
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
      shortName: "Sen App",
      videoPath: VideoRepository.senApp,
      storeLink:
          'https://play.google.com/store/apps/details?id=com.deepend.sen',
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
      shortName: "Sen App",
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

// https://thediary.com
  final coCreations = PortfolioData(
    aboutCompany:
        "CoCreations is a Digital Agency.\nThe Diary is the company behind the app \"myHealth Hub\", a Health Care management platform.",
    shortName: 'myHealth Hub',
    appName: "myHealth Hub",
    videoPath: VideoRepository.myHealth,
    storeLink:
        'https://play.google.com/store/apps/details?id=com.thediary.careproapp',
    talkingPoints: [
      "Join flutter team after most MVP features were developed",
      "Fix bugs and develop few remaining features",
      "Write golden tests to verify behavior through code refactor",
      "Launch 1st version of app on Play Store"
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
    storeLink:
        'https://play.google.com/store/apps/details?id=com.fmatos.amazingwallpapers',
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
    shortName: 'Flutter projects',
    appName: 'Low level canvas demo',
    videoPath: VideoRepository.flutterParticles,
    githubLink: 'http://github.com/fmatosqg/flutter_sample_bloc.git',
    talkingPoints: [
      'POC of particle system',
      'Simple implementation of BLoC',
    ],
  );

  final openSourceContrib =
      PortfolioData(shortName: 'Open Source Contributions');

  final List<ContributionData> contributions = [
    ContributionData(
        about: "Flutter official tools",
        contribution:
            'Allows scan asset folder in order to include all files in given folder. Previously a folder with 50 assets had to specify each one of them in pubspec.yaml, taking 50 lines.',
        contributionLink: 'https://t.co/zygHwoQdMZ?amp=1',
        // 'https://twitter.com/MiSvTh/status/1001365466177245184',
        projectLink: 'https://flutter.dev'),
    ContributionData(
        about: 'Flutter Camera Crop plugin',
        contribution:
            'Fix crashes associated with android platform plugin registration.',
        projectLink: 'https://github.com/hnvn/flutter_image_cropper',
        contributionLink:
            'https://github.com/hnvn/flutter_image_cropper/pull/167#event-3420861375'),
    ContributionData(
        about: 'Android Studio plugin ADB Idea',
        projectLink: 'https://plugins.jetbrains.com/plugin/7380-adb-idea',
        contributionLink:
            'https://github.com/pbreault/adb-idea/pull/43#issuecomment-215081693',
        contribution:
            'Migrate build files from maven to gradle, and a few extra improvements.'),
    ContributionData(
        about: 'Koin support for Work Manager (WIP)',
        contribution:
            '1st class support for creation of ListenableWorkers with customized constructors.',
        contributionLink: 'https://github.com/InsertKoinIO/koin/pull/719',
        projectLink: 'https://insert-koin.io/'),
  ];
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

class ContributionData {
  final String about;
  final String contribution;
  final String projectLink;
  final String contributionLink;

  ContributionData(
      {this.about, this.contribution, this.projectLink, this.contributionLink});
}
