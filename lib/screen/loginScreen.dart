// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/screen/forget_pass_screen.dart';

import '../buttons_widget/social_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Expanded(child: Image.asset('assets/images/Login.png')),
                  const CupertinoTextField(
                    placeholder: 'Email',
                    placeholderStyle:
                        TextStyle(color: Color.fromARGB(255, 13, 44, 92)),
                    style: TextStyle(color: Color.fromARGB(255, 13, 44, 92)),
                    prefix: Icon(Icons.mail_outline,
                        color: Color.fromARGB(255, 13, 44, 92)),
                    suffix: Icon(Icons.check_circle_outline,
                        color: Color.fromARGB(255, 13, 44, 92)),
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromARGB(255, 13, 44, 92))),
                    ),
                  ),
                  const CupertinoTextField(
                    placeholder: 'Passsword',
                    placeholderStyle: TextStyle(
                      color: Color.fromARGB(255, 13, 44, 92),
                    ),
                    style: TextStyle(color: Color.fromARGB(255, 13, 44, 92)),
                    prefix: Icon(Icons.lock,
                        color: Color.fromARGB(255, 13, 44, 92)),
                    suffix: Icon(Icons.visibility_off,
                        color: Color.fromARGB(255, 13, 44, 92)),
                    obscureText: true,
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromARGB(255, 13, 44, 92))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgetPassPage())),
                          child: const Text(
                            'Forget Password',
                            style: TextStyle(
                                color: Color.fromARGB(255, 13, 44, 92)),
                          )),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Login'),
                    style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 13, 44, 92),
                        primary: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 17.0),
                        shape: const StadiumBorder()),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Login with OTP',
                        style:
                            TextStyle(color: Color.fromARGB(255, 13, 44, 92)),
                      )),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                          background: const Color.fromARGB(255, 5, 80, 141),
                          icon: FontAwesomeIcons.facebookF,
                          onPress: () {}),
                      SocialButton(
                          background: const Color.fromARGB(255, 197, 16, 3),
                          icon: FontAwesomeIcons.google,
                          onPress: () {}),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Don\'t have account? Sign Up',
                    style: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 13, 44, 92)),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
