import 'package:flutter/material.dart';
import 'package:signup_login/view/custom_widget/my_theme.dart';
import 'package:signup_login/view/login/components/login_background.dart';

import 'components/text_field_decorator.dart';
import 'components/user_id_text_field.dart';

class LogInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  TextEditingController userIdController = TextEditingController();
  TextEditingController passController = TextEditingController();

  String userIdErrorText = "User ID can not be empty.";
  String userIdHintText = "Enter Email";
  Color userIdHintTextColor = Colors.purple;

  IconData userIdTextFieldPrefixIcon = Icons.person;
  Color userIdTextFieldPrefixIconColor = Colors.purple;

  LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: LogInBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Login.png"),
            const Text("Log In",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldDecorator(
                    child: UserIdTextField(
                      userIdController: userIdController,
                      userIdErrorText: userIdErrorText,
                      userIdHintText: userIdHintText,
                      userIdHintTextColor: userIdHintTextColor,
                      userIdTextFieldPrefixIcon: userIdTextFieldPrefixIcon,
                      userIdTextFieldPrefixIconColor:
                          userIdTextFieldPrefixIconColor,
                      onUserIdValueChange: (value) {
                        //print(value);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
