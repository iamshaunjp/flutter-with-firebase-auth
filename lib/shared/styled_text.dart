import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledBodyText extends StatelessWidget {
  const StyledBodyText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.poppins(
        textStyle: TextStyle(color: Colors.grey[800]),
      )
    );
  }
}

class StyledHeading extends StatelessWidget {
  const StyledHeading(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.poppins(
        textStyle: TextStyle(color: Colors.blue[500], fontSize: 32),
      )
    );
  }
}

class StyledAppBarText extends StatelessWidget {
  const StyledAppBarText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.poppins(
        textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
      )
    );
  }
}

class StyledErrorText extends StatelessWidget {
  const StyledErrorText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.poppins(
        textStyle: const TextStyle(color: Colors.red),
      )
    );
  }
}