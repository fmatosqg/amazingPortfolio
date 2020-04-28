

import 'package:flutter/material.dart';
import 'package:portfolio_flutter/domain/PortfolioRepository.dart';
import 'package:portfolio_flutter/ui/portfolio/AppView.dart';

class RoadhouseView extends StatelessWidget {

  final PortfolioData data = PortfolioRepository().openInvest;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TitleView(data.aboutCompany),
        AppView(data ),
      ],
    );
  }
}
