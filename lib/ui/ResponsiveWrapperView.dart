import 'package:flutter/material.dart';

class ResponsiveWrapperView extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;

  final int minDesktopWidth;

  final int minDesktopHeight;

  ResponsiveWrapperView(
      {@required this.desktop,
      @required this.mobile,
      this.minDesktopWidth = 500,
      this.minDesktopHeight = 500});

  @override
  Widget build(BuildContext context) {
    if (_isDesktop(context)) {
      return desktop ?? Container();
    } else {
      return mobile ?? Container();
    }
  }

  bool _isDesktop(BuildContext context) {
    final mq = MediaQuery.of(context);

    return (mq.size.width > minDesktopWidth) &&
        (mq.size.height > minDesktopHeight);
  }
}
