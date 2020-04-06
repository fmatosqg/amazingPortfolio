import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/domain/PortfolioRepository.dart';
import 'package:portfolio_flutter/ui/portfolio/CrocmediaView.dart';
import 'package:url_launcher/url_launcher.dart';

import 'AppView.dart';

class PersonalFlutterView extends StatelessWidget {
  final _portfolioRepository = PortfolioRepository();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleView(_portfolioRepository.personalPortfolio.aboutCompany),
        buildDivider(),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Material(
                  elevation: 3,
                  child: Container(
                    foregroundDecoration: BoxDecoration(color: Colors.black26),
                    width: 180,
                    child:
                        Image.asset("assets/images/portfolio_screenshot.png"),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FeatureListView(_portfolioRepository.personalPortfolio),
                  FlatButton(
                      child: Text("See backlog on Github issues"),
                      onPressed: () {
                        launch(
                            _portfolioRepository.personalPortfolio.githubLink +
                                '/issues');
                      }),
                ],
              ),
            ],
          ),
        ),
        buildDivider(),
        TitleView(_portfolioRepository.personalFlutter.aboutCompany),
        AppView(_portfolioRepository.personalFlutter),
      ],
    );
  }
}
