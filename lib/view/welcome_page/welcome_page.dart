import 'package:flutter/material.dart';
import 'package:signup_login/view/custom_widget/my_theme.dart';
import 'package:signup_login/view/login/login_page.dart';
import 'components/background.dart';
import 'components/custom_button.dart';

class WelcomePage extends StatelessWidget {

  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello Messi The GOAT",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            Image.asset(
              "assets/images/undraw_Welcoming.png",
              width: size.width * 0.6,
            ),
            CustomButton(
                buttonColor: MyTheme.logInButtonColor,
                buttonText: "Log In",
                textColor: Colors.white,
                handleButtonClick: () {
                  logInButtonClickHandler(context);
                },
            ),
            const SizedBox(height: 25),
            CustomButton(
              buttonColor: MyTheme.signUpButtonColor,
              buttonText: "Sign Up",
              textColor: Colors.black,
              handleButtonClick: signUpButtonClickHandler,
            ),
          ],
        ),
      )),
    );
  }

  logInButtonClickHandler(BuildContext context){
    print("Log In Clicked");
    
    Navigator.push(
        context,
        MaterialPageRoute(builder: (builder)=>LogInPage())
    );
  }

  signUpButtonClickHandler(){
    print("Sign Up Clicked");
  }
}


