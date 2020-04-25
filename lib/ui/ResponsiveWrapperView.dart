import 'package:flutter/material.dart';

class ResponsiveWrapperView extends StatelessWidget {
  final Widget desktop;
  final Widget mobile;

  final int minDesktopWidth;

  final int minDesktopHeight;

  ResponsiveWrapperView(
      {this.desktop,
      this.mobile,
      this.minDesktopWidth = 500,
      this.minDesktopHeight = 500});

  @override
  Widget build(BuildContext context) {
    if (isDesktop(context)) {
      return desktop ?? Container();
    } else {
      return mobile ?? Container();
    }
  }

  bool isDesktop(BuildContext context) {
    final mq = MediaQuery.of(context);

    return (mq.size.width > minDesktopWidth) &&
        (mq.size.height > minDesktopHeight);
  }
}
