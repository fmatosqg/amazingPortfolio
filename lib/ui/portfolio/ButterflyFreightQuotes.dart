import 'package:flutter/material.dart';
import 'package:portfolio_flutter/domain/PortfolioRepository.dart';

import 'AppView.dart';

class ButterflyFreightQuotesView extends StatelessWidget {
  final _portfolioRepository = PortfolioRepository();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleView(_portfolioRepository.butterflyFreightQuotes.aboutCompany),
        AppView(_portfolioRepository.butterflyFreightQuotes),
      ],
    );
  }
}
