import 'package:example_flutter/theme/my_colors.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String title;

  const AppBarTitle({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            fontSize: 18,
            color: Color(MyColors.Black),
            fontWeight: FontWeight.w700));
  }
}
