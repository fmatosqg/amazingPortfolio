import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_flutter/ui/common/ColorPallete.dart';
import 'package:portfolio_flutter/ui/portfolio/AppView.dart';
import 'package:url_launcher/url_launcher.dart';

import 'CrocmediaView.dart';

class AboutFabio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleView(
              "Fabio is a seasoned developer, experienced in Android Native and enthusiast about Flutter for Mobile, Web and Desktop."),
          buildDivider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(right: 20),
                width: 60,
                child: Image.asset("assets/images/logo.png"),
              ),
              Text(
                'Fabio de Matos',
                style: ColorPallete.of(context).porfolioHeaderText,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Table(
              defaultColumnWidth: IntrinsicColumnWidth(),
//              defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
              children: [
                _buildRow(context, 'email', 'amazingappsemail@gmail.com'),
                _buildRow(context, 'medium', 'https://medium.com/@fmatosqg'),
                _buildRow(context, 'linkedin',
                    'https://www.linkedin.com/in/fabio-de-matos'),
                _buildRow(context, 'CV',
                    'https://docs.google.com/document/d/1Pdqs9_n0IssJIiDh_Ojj-9XHOQizakycMdtUIyAGc1Y/edit'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TableRow _buildRow(BuildContext context, String title, String content) {
    return TableRow(
      children: <Widget>[
        Text('$title:', style: ColorPallete.of(context).contactLabel),
        FlatButton(
          child: Text(content, style: ColorPallete.of(context).contactValue),
          onPressed: () {
            canLaunch(content).then((value) {
              if (value == true) {
                launch(content);
              }
            });
          },
        )
      ],
    );
  }
}
