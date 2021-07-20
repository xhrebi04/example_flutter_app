import 'package:example_flutter/components/buttons/primary_btn.dart';
import 'package:example_flutter/components/form/heading_form_field.dart';
import 'package:example_flutter/components/navigation/app_bar_title.dart';
import 'package:example_flutter/generated/l10n.dart';
import 'package:example_flutter/theme/my_colors.dart';
import 'package:example_flutter/utils/alerts.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordObscured = true;

  @override
  void dispose() {
    emailController?.dispose();
    passwordController?.dispose();

    super.dispose();
  }

  void onLoginBtnPress() {
    String errorMsg;

    if (emailController.text.isEmpty) {
      errorMsg = S.of(context).empty_email_field_error_msg;
    }

    if (passwordController.text.isEmpty) {
      errorMsg = '$errorMsg ${S.of(context).empty_password_field_error_msg}';
    }

    if (errorMsg.isNotEmpty) {
      showErrorAlert(context, errorMsg);
      return;
    }

    // TODO
    // Add request to BE
    // Add navigation to HomeScreen
  }

  void onForgottenPasswordPress() {
    // TODO
    // Navigate to Forgotten Password Screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(MyColors.White),
        appBar: AppBar(
          centerTitle: true,
          brightness: Brightness.light,
          backgroundColor: Color(MyColors.White),
          title: AppBarTitle(title: S.of(context).login),
          elevation: 0,
        ),
        body: LayoutBuilder(builder: (context, constraint) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 31, bottom: 20),
                        child: HeadingFormField(
                            heading: S.of(context).email,
                            controller: emailController)),
                    Container(
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: HeadingFormField(
                          heading: S.of(context).password,
                          obscureText: true,
                          controller: passwordController,
                        )),
                    Spacer(),
                    SafeArea(
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: PrimaryBtn(
                            title: S.of(context).log_in,
                            onPress: onLoginBtnPress),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
