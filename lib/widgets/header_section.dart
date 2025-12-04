import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date
  });

  final String title;
  final String subtitle;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: GoogleFonts.inter(fontWeight: FontWeight.bold, fontSize: 30)
              ), SizedBox(height: 5),
              Text(subtitle,
                style: GoogleFonts.inter(fontSize: 16, color: Colors.grey[700]),
              ), SizedBox(height: 20),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:
                Text(date,
                    style: GoogleFonts.inter(color: Colors.indigo, fontSize: 14, fontWeight: FontWeight.w400)
                ),
              )
            ],
          ),
        )
      ]
    );
  }
}
