// ignore: file_names
// ignore_for_file: import_of_legacy_library_into_null_safe



import 'package:flutter/material.dart';
import 'package:food_app/screen/first_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../buttons_widget/button.dart';



class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
          child: IntroductionScreen(
        pages: [
          PageViewModel(
              body: '',
              titleWidget: const  Text(
                'Friendly to user',
                style: TextStyle(
                  color: Color.fromARGB(255, 13, 13, 14),
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              decoration: const  PageDecoration(pageColor: Colors.white),
              image: Center(
                  child: buildImage(
                      'assets/images/Friendly.png'))),
          PageViewModel(
               titleWidget: const  Text(
                'Saves Time',
                style: TextStyle(
                  color: Color.fromARGB(255, 13, 13, 14),
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              body: '',
              decoration: const PageDecoration(pageColor: Colors.white),
              image: Center(
                  child: buildImage(
                      'assets/images/Time.png'))),
          PageViewModel(
             titleWidget: const  Text(
                'Quick Delivery',
                style: TextStyle(
                  color: Color.fromARGB(255, 13, 44, 92),
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
              body: '',
              decoration: const PageDecoration(pageColor: Colors.white),
              image: Center(
                  child: buildImage(
                      'assets/images/Delivery.png')),
              footer: ButtonWidget(
                  text: 'Order Your Meal', onClicked: () => goToHome(context)))
        ],
        done: const Text(
          '',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        onDone: () => goToHome(context),
        showSkipButton: true,
        onSkip: () => goToHome(context),
        skip: const Text(
          'Skip',
          style: TextStyle(fontSize: 18),
        ),
        next: const Icon(Icons.arrow_forward,
            color: Color.fromARGB(192, 0, 0, 0), size: 25),
        dotsDecorator: getDotsDecoration(),
        globalBackgroundColor: Colors.blue,
        isProgressTap: false,
      ));

  Widget buildImage(String path) => Center(
        child: Image.asset(
          path,
          height: 360,
        ),
      );
  DotsDecorator getDotsDecoration() => DotsDecorator(
        color: const Color.fromARGB(255, 13, 44, 92),
        activeColor: Colors.black,
        size: const Size(15, 12),
        activeSize: const Size(20, 15),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      );
  goToHome(BuildContext context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const WelcomePage()),
      );
}
