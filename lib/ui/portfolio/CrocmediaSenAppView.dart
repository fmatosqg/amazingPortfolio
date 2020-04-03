import 'package:flutter/material.dart';
import 'package:portfolio_flutter/domain/PortfolioRepository.dart';

import 'AppView.dart';
import 'CrocmediaView.dart';

/// Videos and talking points about Sen App
///
class CrocmediaSenAppView extends StatelessWidget {
  final _portfolioRepository = PortfolioRepository();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleView(_portfolioRepository.crocmediaSenApp.aboutCompany),
        AppView(_portfolioRepository.crocmediaSenApp),
        buildDivider(),
        AppView(_portfolioRepository.crocmediaSenAudio),
      ],
    );
  }
}
