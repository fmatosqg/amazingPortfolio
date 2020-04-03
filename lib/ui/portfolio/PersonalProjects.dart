import 'package:flutter/material.dart';
import 'package:portfolio_flutter/domain/PortfolioRepository.dart';

import 'AppView.dart';

class PersonalPortfolioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PersonalWallpaperView extends StatelessWidget {
  final _portfolioRepository = PortfolioRepository();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleView(_portfolioRepository.personalWallpapers.aboutCompany),
        AppView(_portfolioRepository.personalWallpapers),
      ],
    );
  }
}
