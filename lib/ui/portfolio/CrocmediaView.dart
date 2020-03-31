import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_flutter/domain/VideoRepository.dart';
import 'package:portfolio_flutter/ui/common/ColorPallete.dart';
import 'package:portfolio_flutter/ui/common/VideoWrapperView.dart';

class CrocmediaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;
    var width;

    if (windowWidth > 800) {
      width = 800;
    } else {
      width = windowWidth;
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
//      width: width,
      child: ListView(
        children: [
          TitleView(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 200,
                child: VideoWrapperView(VideoRepository.reelAdventures),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: FeaturesView(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeaturesView extends StatelessWidget {
  final _list = [
    "One",
    "Two",
    "Three items where this is extremely long so we need to overflow really really bad",
    "4th"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _list.map((e) => _buildBullet(context, e)).toList(),
    );
  }

  Widget _buildBullet(BuildContext context, String txt) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "• ",
            style: ColorPallete.of(context).porfolioBulletText,
          ),
          Container(
            width: 200,
            child: Text(
              "$txt",
              style: ColorPallete.of(context).porfolioBulletText,
            ),
          ),
        ],
      ),
    );
  }
}

class TitleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        "Crocmedia runs Sen Radio 1116, with most of its shows dedicated to sports",
        style: ColorPallete.of(context).porfolioHeaderText,
      ),
    );
  }
}
