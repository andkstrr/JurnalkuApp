import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; 

class ReusableAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  final String userRombel;
  final VoidCallback onLeadingPressed;
  final IconData leadingIcon;

  // Constructor
  const ReusableAppBar({
    Key? key,
    required this.userName,
    required this.userRombel,
    required this.onLeadingPressed,
    this.leadingIcon = Icons.home_outlined,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          leadingIcon,
          color: Colors.grey[600],
          size: 30,
        ),
        onPressed: onLeadingPressed, 
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    userName, 
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[800],
                    ),
                  ),
                  Text(
                    userRombel, 
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  )
                ],
              ),
              const SizedBox(width: 20),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.grey[700],
                ),
              )
            ],
          ),
        ),
      ],
      // Properti tampilan AppBar
      toolbarHeight: 70,
      shape: Border(
        bottom: BorderSide(
          color: Colors.grey[300]!,
          width: 2,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  // Mengimplementasikan preferredSize
  @override
  Size get preferredSize => const Size.fromHeight(70);
}