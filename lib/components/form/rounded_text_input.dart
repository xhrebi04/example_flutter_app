import 'package:example_flutter/theme/my_colors.dart';
import 'package:flutter/material.dart';

class RoundedTextInput extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const RoundedTextInput({
    Key key,
    @required this.hintText,
    this.obscureText = false,
    @required this.controller,
  }) : super(key: key);

  @override
  _RoundedTextInputState createState() => _RoundedTextInputState();
}

class _RoundedTextInputState extends State<RoundedTextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        child: TextField(
            controller: widget.controller,
            textInputAction: TextInputAction.done,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(MyColors.Black)),
            obscureText: widget.obscureText,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(MyColors.Gray)),
              fillColor: Color(MyColors.Gray),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color(MyColors.Black), width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(MyColors.Gray), width: 1.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
            )));
  }
}
