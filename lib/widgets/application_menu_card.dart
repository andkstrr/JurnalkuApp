import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationMenuCard extends StatelessWidget {
  const ApplicationMenuCard({super.key, 
    required this.icon, 
    required this.title, 
    required this.subtitle, 
    required this.onTap
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    // return ListTile(
    //   leading: const Icon(Icons.home),
    //   title: Text('Home', style: GoogleFonts.inter(fontSize: 16)),
    //   subtitle: Text('Subtitle', style: GoogleFonts.inter(fontSize: 12)),
    //   onTap: onTap,
    // );

    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: Icon(
              icon,
              size: 20,
              color: Colors.blue[700],
            ),
          ),
          const SizedBox(width: 17),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 30),
          Icon(
            Icons.chevron_right,
            color: Colors.blue[800],
            size: 16,
          )
        ],
      ),
    );
  }
}