import 'package:example_flutter/components/form/rounded_text_input.dart';
import 'package:example_flutter/theme/my_colors.dart';
import 'package:flutter/material.dart';

class HeadingFormField extends StatelessWidget {
  final String heading;
  final bool obscureText;
  final TextEditingController controller;

  const HeadingFormField(
      {Key key,
      @required this.heading,
      this.obscureText = false,
      @required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 5),
          child: Text(this.heading?.toUpperCase(),
              style: TextStyle(
                  color: Color(MyColors.Black),
                  fontSize: 12,
                  fontWeight: FontWeight.w500)),
        ),
        RoundedTextInput(
            hintText: heading, obscureText: obscureText, controller: controller)
      ],
    );
  }
}
