import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUpItem extends StatelessWidget {
  const PopUpItem({super.key,
    required this.icon,
    required this.title
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.grey[600],
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey[600]
            ),
          ),
        ]
      ),
    );
  }
}
