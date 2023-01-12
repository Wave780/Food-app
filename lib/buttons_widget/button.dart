import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({Key? key, required this.text, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onClicked,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      );
}


// RaisedButton(
//         onPressed: onClicked,
//         color: Color.fromARGB(255, 13, 44, 92),
//         shape: const StadiumBorder(),
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: Text(
//           text,
//           style: const TextStyle(color: Colors.white, fontSize: 20.0),
//         ),
//       );