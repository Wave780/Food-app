import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  final Color background;
  final IconData icon;
  final VoidCallback onPress;
  const SocialButton(
      {Key? key,
      required this.background,
      required this.icon,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPress,
        child: Icon(icon, size: 20),
        style: TextButton.styleFrom(
            backgroundColor: background,
            shape: CircleBorder(side: BorderSide(color: Color.fromARGB(255, 250, 250, 250))),
            primary: Colors.white));
  }
}
