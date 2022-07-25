import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screen/loginScreen.dart';

class ForgetPassPage extends StatelessWidget {
  const ForgetPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14.0),
          child: SafeArea(
              child: Column(
            children: [
              Expanded(child: Image.asset('assets/images/ForgetPass.png')),
              const SizedBox(height: 100),
              const Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child:  Text(
                  'Password Recovery',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const CupertinoTextField(
                placeholder: 'Email',
                placeholderStyle: TextStyle(
                  color: Color.fromARGB(255, 13, 44, 92),
                ),
                style: TextStyle(color: Color.fromARGB(255, 13, 44, 92)),
                prefix:
                    Icon(Icons.lock, color: Color.fromARGB(255, 13, 44, 92)),
                suffix: Icon(Icons.check_circle,
                    color: Color.fromARGB(255, 13, 44, 92)),
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: Color.fromARGB(255, 13, 44, 92))),
                ),
              ),
              const SizedBox(height: 100),
              TextButton(
                onPressed: () {},
                child: const Text('Submit'),
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 13, 44, 92),
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 17.0),
                    shape: const StadiumBorder()),
              ),
              const SizedBox(height: 100),
              
                TextButton(
                onPressed: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) =>
                                      const LoginPage())),
                child: const Text('Already have account? Login', style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 13, 44, 92)),),
                    
              ),
            ],
          )),
        ),
      ),
    );
  }
}
