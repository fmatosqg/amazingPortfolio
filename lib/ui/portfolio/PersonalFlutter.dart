import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/domain/PortfolioRepository.dart';
import 'package:portfolio_flutter/ui/portfolio/CrocmediaView.dart';

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
