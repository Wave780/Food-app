import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screen/loginScreen.dart';
import 'package:food_app/screen/verify_screen.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            'Continue with Phone',
          ),
          leading: IconButton(onPressed: () =>  Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const LoginPage())) ,
           icon: Icon(Icons.close)),
          backgroundColor: const Color.fromARGB(255, 13, 44, 92),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/images/Otp.png'),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child:  Text(
                  'You\'ll received a 4 digit'
                  ' code to verify next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 13, 44, 92),
                    fontSize: 23,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                child: CupertinoTextField(
                  placeholder: 'Enter your vaild phone number',
                  placeholderStyle:
                      TextStyle(color: Color.fromARGB(255, 13, 44, 92)),
                  style: TextStyle(color: Color.fromARGB(255, 13, 44, 92)),
                  prefix: Icon(Icons.phone_android,
                      color: Color.fromARGB(255, 13, 44, 92)),
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 13, 44, 92))),
                  ),
                ),
              ),
        
              const SizedBox(
                height: 65,
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const VerifyPage())),
                child: const Text('Generate'),
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 13, 44, 92),
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 17.0),
                    shape: const StadiumBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
