import 'package:flutter/material.dart';

class GetStatusBarHeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return SizedBox(
      height: statusBarHeight,
    );
  }
}
