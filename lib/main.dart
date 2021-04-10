import 'package:clone_layout_instagram/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(Main());

}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          defaultScale: true,
          minWidth: 450,
          defaultName: MOBILE,
          breakpoints: [
            ResponsiveBreakpoint.resize(450, name: MOBILE),
            ResponsiveBreakpoint.resize(700, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP)
          ]),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
