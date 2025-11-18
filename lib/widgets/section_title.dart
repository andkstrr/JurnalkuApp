import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.sectionTitle});

  final String sectionTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      sectionTitle,
      textAlign: TextAlign.start,
      style: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.grey[700],
      ),
    );
  }
}
