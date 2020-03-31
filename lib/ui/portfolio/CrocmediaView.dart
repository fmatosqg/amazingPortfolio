import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_flutter/domain/VideoRepository.dart';
import 'package:portfolio_flutter/ui/common/VideoWrapperView.dart';

class CrocmediaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
      alignment: Alignment.center,
      child: ListView(
        children: [
          TitleView(),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200,
                  child: VideoWrapperView(VideoRepository.reelAdventures),
                ),
                Container(
                  width: 200,
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: FeaturesView(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          Text("• One"),
        ],
      ),
    );
  }
}

class TitleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Crocmedia",
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
