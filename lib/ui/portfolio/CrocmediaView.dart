import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_web/flutter_native_web.dart';
import 'dart:ui' as ui;
import 'package:portfolio_flutter/domain/PortfolioRepository.dart';

import 'AppView.dart';

/// Videos and talking points about Driver's Seat
///
class CrocmediaDriversSeatView extends StatelessWidget {
  final _portfolioRepository = PortfolioRepository();

  @override
  Widget build(BuildContext context) {
    var name = 'hello-world-html4';
//    var url = 'https://www.youtube.com/embed/IyFZznAk69U';

//    var url = 'https://amazingdomain.net';
//    var url =
//        'https://scontent-iad3-1.cdninstagram.com/v/t51.2885-15/e35/92336573_525636105038825_2413764605710990493_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com&_nc_cat=105&_nc_ohc=PbUN_NwHDwAAX-0EUQc&oh=53ce0aa6cce6183e3e8e62d475e5573c&oe=5EB2F67E';

    var url = 'https://www.amazingdomain.net/resources/google_play.svg';
    ui.platformViewRegistry.registerViewFactory(
        name,
//        (int viewId) =>PictureElement ()
        (int viewId) => ImageElement()
          ..src = url
//          ..height = 50
          ..style.border = 'none');

    return ListView(
      children: [
        TitleView(_portfolioRepository.crocmediaDriversSeat.aboutCompany),
//        svgHere(),

        Container(height: 50, child: HtmlElementView(viewType: name)),
        Container(
          child: HtmlElementView(viewType: name),
          height: 100,
        ),
//        HtmlElementView(viewType: 'hello-world-html'),
        Hello(),
        AppView(_portfolioRepository.crocmediaDriversSeat),
        buildDivider(),
        AppView(_portfolioRepository.crocmediaSkinning),
      ],
    );
  }
}

Widget buildDivider() {
  return Divider(
    height: 30,
    color: Colors.black26,
    indent: 30,
    endIndent: 30,
    thickness: 0.5,
  );
}

class svgHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterNativeWeb flutterWebView = new FlutterNativeWeb(
//      onWebCreated: onWebCreated,
      gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
        Factory<OneSequenceGestureRecognizer>(
          () => TapGestureRecognizer(),
        ),
      ].toSet(),
    );

    return flutterWebView;
//    return Container(child: WebView(
//    initialUrl: new Uri.dataFromString("<p>Hello world 25-3-2019 :</p>
//    <p>&nbsp;</p
//        <p>
//        <iframe
//        src="https://www.youtube.com/embed/W8TrvLoPrfQ"
//        width="400"
//        height="300"
//        frameborder="0"></iframe>
//        </p>", mimeType: "text/html", encoding: utf8).toString(),
//        javascriptMode: JavascriptMode.unrestricted,
//        onWebViewCreated: (WebViewController webViewController) {
//      _controller.complete(webViewController);
//    },
//    ),,);
  }
//
//  void onWebCreated(webController) {
//    this.webController = webController;
//    this.webController.loadUrl("https://flutter.io/");
//    this.webController.onPageStarted.listen((url) => print("Loading $url"));
//    this
//        .webController
//        .onPageFinished
//        .listen((url) => print("Finished loading $url"));
//  }
}

class Hello extends StatefulWidget {
  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  WebController webController;

  @override
  Widget build(BuildContext context) {
    FlutterNativeWeb flutterWebView = new FlutterNativeWeb(
      onWebCreated: onWebCreated,
      gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
        Factory<OneSequenceGestureRecognizer>(
          () => TapGestureRecognizer(),
        ),
      ].toSet(),
    );

    return Container(
      width: 200,
      height: 700,
      child: flutterWebView,
      color: Colors.black38,
    );
  }

  void onWebCreated(webController) {
    var loog =
        'https://pub.dev/static/img/pub-dev-logo-2x.png?hash=umitaheu8hl7gd3mineshk2koqfngugi';
    this.webController = webController;
//    this.webController.loadUrl("https://flutter.io/");
//    this.webController.loadUrl('https://google.com');
//    this.webController.loadUrl(loog);

    String html =
        '<body>Hello world! <a href="www.html5rocks.com">HTML5 rocks!';
    this.webController.loadData(html);

    this.webController.onPageStarted.listen((url) => print("Loading $url"));
    this
        .webController
        .onPageFinished
        .listen((url) => print("Finished loading $url"));
  }
}
