import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_flutter/domain/PortfolioRepository.dart';

import 'AppView.dart';

/// Videos and talking points about Driver's Seat
///
class CrocmediaDriversSeatView extends StatelessWidget {
  final _portfolioRepository = PortfolioRepository();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleView(_portfolioRepository.crocmediaDriversSeat.aboutCompany),
        AppView(_portfolioRepository.crocmediaDriversSeat),
        Divider(
          height: 30,
          color: Colors.black26,
          indent: 30,
          endIndent: 30,
          thickness: 0.5,
        ),
        AppView(_portfolioRepository.crocmediaSkinning),
      ],
    );
  }
}
