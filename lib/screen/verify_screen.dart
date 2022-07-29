import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/screen/otp_screen.dart';

import 'loginScreen.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              centerTitle: true,
              title: const Text(
                'Verify Phone',
              ),
              leading: IconButton(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => const OtpPage())),
                  icon: const Icon(Icons.arrow_back)),
              backgroundColor: const Color.fromARGB(255, 13, 44, 92),
            ),
            body: Column(children: [
              Container(
                child: const Text(
                  'Code is sent ',
                  style: TextStyle(fontSize: 20),
                ),
                alignment: AlignmentDirectional.topCenter,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        inputDecoration(),
                        inputDecoration(),
                        inputDecoration(),
                        inputDecoration()
                      ])),
              const SizedBox(
                height: 50,
                width: 10,
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginPage())),
                child: const Text(
                  'Already have account? Login',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 13, 44, 92)),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => const VerifyPage())),
                child: const Text('Generate'),
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 13, 44, 92),
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 17.0),
                    shape: const StadiumBorder()),
              ),
            ])));
  }

  inputDecoration() => SizedBox(
        height: 64,
        width: 64,
        child: TextField(
          showCursor: false,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            } else {}
          },
          decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3, color: Color.fromARGB(255, 13, 44, 92))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3, color: Color.fromARGB(255, 13, 44, 92))),
              focusColor: Color.fromARGB(255, 13, 44, 92)),
          style: Theme.of(context).textTheme.headlineSmall,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      );
}
