import 'package:flutter/material.dart';
import 'package:portfolio_flutter/domain/PortfolioRepository.dart';
import 'package:portfolio_flutter/ui/ResponsiveWrapperView.dart';
import 'package:portfolio_flutter/ui/common/ColorPallete.dart';
import 'package:portfolio_flutter/ui/common/VideoWrapperView.dart';
import 'package:url_launcher/url_launcher.dart';

/// Holds a video and a [FeatureListView].
///
class AppView extends StatelessWidget {
  final PortfolioData _data;

  AppView(this._data);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapperView(
      desktop: _buildDesktop(context),
      mobile: _buildMobile(context),
    );
  }

  Widget _buildMobile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          FeatureListView(_data),
          _buildPreview(context),
        ],
      ),
    );
  }

  Widget _buildDesktop(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildPreview(context),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: FeatureListView(_data),
          ),
        ),
      ],
    );
  }

  Widget _buildPreview(BuildContext context) {
    return _data.videoPath != null
        ? Container(
            width: 200,
            child: VideoWrapperView(_data.videoPath),
          )
        : _buildImagePreview(context);
  }

  Widget _buildImagePreview(BuildContext context) {
    return  _data.imageStillPath != null 
?    
    Padding(
      padding: const EdgeInsets.only(left: 10, right: 20),
      child: Material(
        elevation: 3,
        child: Container( 
          foregroundDecoration: BoxDecoration(color: Colors.black26),
          width: 180,
          child: Image.asset(_data.imageStillPath),
        ),
      ),
    ): Container( );
  }
}

/// Creates a bullet list of texts
///
class FeatureListView extends StatelessWidget {
  final PortfolioData _data;

  FeatureListView(this._data);

  @override
  Widget build(BuildContext context) {

    var talkingPoints =  _data.talkingPoints ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
         talkingPoints.map((e) => _buildBullet(context, e)).toList()
            ..insert(
                0,
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    _data?.appName ?? '',
                    style: ColorPallete.of(context).portfolioAppNameText,
                  ),
                ))
            ..add(_buildRepositoryLink(context))
            ..add(_buildStoreLink(context)),
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

  Widget _buildRepositoryLink(BuildContext context) {
    return _buildButton('Read Source Code', _data.githubLink);
  }

  Widget _buildStoreLink(BuildContext context) {
    return _buildButton('See on Play Store', _data.storeLink);
  }

  Widget _buildButton(String text, String link) {
    return link != null
        ? Container(
            padding: EdgeInsets.only(left: 10, bottom: 20),
            child: MaterialButton(
              color: Colors.white70,
              elevation: 2,
              child: Text(text),
              onPressed: () {
                launch(link);
              },
            ),
          )
        : Container();
  }
}

class TitleView extends StatelessWidget {
  final String _text;

  TitleView(this._text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 15),
      child: Text(
        _text ?? '',
        style: ColorPallete.of(context).porfolioHeaderText,
      ),
    );
  }
}
