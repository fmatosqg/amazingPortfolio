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
        AppView(_portfolioRepository.personalPortfolio),
        buildDivider(),
        AppView(_portfolioRepository.personalFlutter),
      ],
    );
  }
}

class Contributions extends StatelessWidget {
  final _contributions = PortfolioRepository().contributions;

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: _contributions.map((e) => _contribution(e)).toList());
  }

  Widget _contribution(ContributionData data) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleView(data.about),
        Text(data.contribution),
        Row(
          children: [
            _buildButton("Project Home Page", data.projectLink),
            _buildButton("Contribution", data.contributionLink),
          ],
        ),
        buildDivider()
      ],
    );
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
