import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FieldTextForm extends StatelessWidget {
  const FieldTextForm({super.key, required this.text, required this.hintText});

  final String text;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: GoogleFonts.inter(
            fontSize: 15,
          ),
        ),
        Text(
          hintText,
          style: GoogleFonts.inter(
            fontSize: 13,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}