// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:food_app/screen/loginScreen.dart';
import 'package:food_app/screen/onboarding_screen.dart';
import '../buttons_widget/social_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../buttons_widget/button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child: Image.asset('assets/images/Welcome.png')),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'WELCOME',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 13, 44, 92)),
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: const Text(
                    'Meal Oda is a modern that you can use to order the meal of your' 
                    'choice to be deliver at your door step 24/7',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (contex) => const LoginPage())),
                      child: const Text('Login'),
                      style: TextButton.styleFrom(
                          backgroundColor:const Color.fromARGB(255, 13, 44, 92),
                          primary: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 17.0),
                          shape: const StadiumBorder()),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    OutlinedButton(
                      onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (contex) => const LoginPage())),
                      child: const Text('Sign Up'),
                      style: TextButton.styleFrom(
                          primary: Colors.black,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 17.0),
                          shape: const StadiumBorder(),
                          side: const BorderSide(width: 1.5)),
                    )
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      'Or Via social media',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialButton(
                            background: const  Color.fromARGB(255, 5, 80, 141),
                            icon: FontAwesomeIcons.facebookF,
                            onPress: () {}),
                        SocialButton(
                            background: const Color.fromARGB(255, 197, 16, 3),
                            icon: FontAwesomeIcons.google,
                            onPress: () {}),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    ButtonWidget(
                      text: 'Go Back',
                      onClicked: () => goToOnboarding(context),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  goToOnboarding(BuildContext context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => const OnboardingPage()));
}
