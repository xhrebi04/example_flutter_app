import 'package:example_flutter/theme/my_colors.dart';
import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String title;
  final Function onPress;

  const PrimaryBtn({Key key, @required this.title, @required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        child: ElevatedButton(
            onPressed: onPress,
            style: ElevatedButton.styleFrom(
                primary: Color(MyColors.Black),
                padding: EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side:
                        BorderSide(color: Color(MyColors.Black), width: 1.0))),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(MyColors.White)),
              ),
            )));
  }
}
