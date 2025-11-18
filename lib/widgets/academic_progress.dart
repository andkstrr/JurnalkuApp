import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcademicProgress extends StatelessWidget {
  const AcademicProgress({super.key,
    required this.color,
    required this.status, 
    required this.value
  });

  final String color;
  final String status;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Text(
              "●",
              style: GoogleFonts.inter(
                fontSize: 17,
                color: Color(int.parse(color)),
              ),
            ),
            const SizedBox(width: 6),
            Text(
              status,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500
              ),
            )
          ]
        ),
        const Spacer(),
        Text(
          value.toString(),
          style: GoogleFonts.inter(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.w500
          ),
        )
      ],
    );
  }
}
