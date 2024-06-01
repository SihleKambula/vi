import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthButton extends StatelessWidget {
  final Widget iconWidget;
  final String buttonName;
  final Function function;
  const AuthButton(
      {super.key,
      required this.buttonName,
      required this.iconWidget,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconWidget,
            Text(
              buttonName,
              style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500)),
            ),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
