import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemProfileCard extends StatelessWidget {
  const ItemProfileCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  final String title;
  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(color: Color(0xFFf9fafb)),
            child: Row(
              children: [
                Text(
                  "$title Terbaru",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: onPressed,
                  child: Text(
                    "Lihat semua",
                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.indigo,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Column(
                children: [
                  Text(icon, style: GoogleFonts.inter(fontSize: 40)),
                  const SizedBox(height: 10),
                  Text(
                    "$title akan ditampilkan di sini",
                    style: GoogleFonts.inter(color: Colors.grey[800]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
