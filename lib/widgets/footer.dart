import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
      color: Color(0xFFe2eefe),
      child: Center(
        child: Text(
          "© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
          style: GoogleFonts.inter(
            fontSize: 12.5,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 40, 92, 176),
          ),
        ),
      ),
    );
  }
}