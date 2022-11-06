import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/constants.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const AppButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 350,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
        onPressed: onPressed,
        child: Text(buttonText,
            style: GoogleFonts.dmSans(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
