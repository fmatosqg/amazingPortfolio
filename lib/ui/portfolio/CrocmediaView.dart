import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_flutter/domain/PortfolioRepository.dart';
import 'package:portfolio_flutter/domain/VideoRepository.dart';
import 'package:portfolio_flutter/ui/common/ColorPallete.dart';
import 'package:portfolio_flutter/ui/common/VideoWrapperView.dart';

/// Videos and talking points about Driver's Seat
///
class CrocmediaDriversSeatView extends StatelessWidget {
  final _portfolioRepository = PortfolioRepository();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleView(_portfolioRepository.crocmediaDriversSeat.aboutCompany),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: AppView(_portfolioRepository.crocmediaDriversSeat),
        ),
        AppView(_portfolioRepository.crocmediaSkinning),
      ],
    );
  }
}

/// Holds a video and a [FeatureListView].
///
class AppView extends StatelessWidget {
  final PortfolioData _data;

  AppView(this._data);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 200,
          child: VideoWrapperView(_data.videoPath),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: FeatureListView(_data),
          ),
        ),
      ],
    );
  }
}

/// Creates a bullet list of texts
///
class FeatureListView extends StatelessWidget {
  final PortfolioData _data;

  FeatureListView(this._data);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          _data.talkingPoints.map((e) => _buildBullet(context, e)).toList()
            ..insert(
                0,
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    _data.appName,
                    style: ColorPallete.of(context).portfolioAppNameText,
                  ),
                )),
    );
  }

  Widget _buildBullet(BuildContext context, String txt) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "• ",
            style: ColorPallete.of(context).porfolioBulletText,
          ),
          Flexible(
            fit: FlexFit.loose,
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
  final String _text;

  TitleView(this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        _text,
        style: ColorPallete.of(context).porfolioHeaderText,
      ),
    );
  }
}
