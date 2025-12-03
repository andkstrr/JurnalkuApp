import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/screens/attitude_record.dart';
import 'package:jurnalku_app/screens/dashboard.dart';
import 'package:jurnalku_app/screens/habit_journal.dart';
import 'package:jurnalku_app/screens/settings.dart';
import 'package:jurnalku_app/screens/user_guide.dart';
import 'package:jurnalku_app/screens/witness_demand.dart';
import 'package:jurnalku_app/widgets/pop_up_item.dart';
import 'package:jurnalku_app/screens/explore.dart';
import 'package:jurnalku_app/screens/profile.dart';

enum MenuItem {
  dashboard,
  profile,
  explore,
  habitJournal,
  witnessRequest,
  progress,
  attitudeRecord,
  userGuide,
  accountSettings,
  logout,
}

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
      scrolledUnderElevation: 0.0, // Nonaktifkan efek warna saat di-scroll
      surfaceTintColor: Colors.transparent, // Nonaktifkan tint Material 3
      leading: IconButton(
        icon: Icon(leadingIcon, color: Colors.grey[600], size: 26),
        onPressed: onLeadingPressed,
      ),
      actions: [
        PopupMenuButton<MenuItem>(
          color: Colors.white,
          offset: const Offset(0, 70),
          onSelected: (value) {
            if (value == MenuItem.dashboard) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashboardScreen(),
                ),
              );
            } else if (value == MenuItem.profile) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            } else if (value == MenuItem.explore) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExploreScreen()),
              );
            } else if (value == MenuItem.habitJournal) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HabitJournalScreen()),
              );
            } else if (value == MenuItem.witnessRequest) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WitnessDemand()),
              );
            } else if (value == MenuItem.progress) {
            } else if (value == MenuItem.attitudeRecord) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AtitudeRecord()),
              );
            } else if (value == MenuItem.userGuide) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserGuide()),
              );
            } else if (value == MenuItem.accountSettings) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            } else if (value == MenuItem.logout) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExploreScreen()),
              );
            }
          },
          itemBuilder: (context) => [
            PopupMenuItem(
              value: MenuItem.dashboard,
              child: PopUpItem(icon: Icons.home_outlined, title: "Dashboard"),
            ),
            PopupMenuItem(
              value: MenuItem.profile,
              child: PopUpItem(icon: Icons.person_2_outlined, title: "Profil"),
            ),
            PopupMenuItem(
              value: MenuItem.explore,
              child: PopUpItem(icon: Icons.explore_outlined, title: "Jelajahi"),
            ),
            PopupMenuDivider(),
            PopupMenuItem(
              value: MenuItem.habitJournal,
              child: PopUpItem(
                icon: Icons.explore_outlined,
                title: "Jurnal Pembiasaan",
              ),
            ),
            PopupMenuItem(
              value: MenuItem.witnessRequest,
              child: PopUpItem(
                icon: Icons.co_present_outlined,
                title: "Permintaan Saksi",
              ),
            ),
            PopupMenuItem(
              value: MenuItem.progress,
              child: PopUpItem(
                icon: Icons.stacked_line_chart_outlined,
                title: "Progress",
              ),
            ),
            PopupMenuItem(
              value: MenuItem.attitudeRecord,
              child: PopUpItem(
                icon: Icons.warning_amber_outlined,
                title: "Catatan Sikap",
              ),
            ),
            PopupMenuDivider(),
            PopupMenuItem(
              value: MenuItem.userGuide,
              child: PopUpItem(
                icon: Icons.menu_book_outlined,
                title: "Panduan Penggunaan",
              ),
            ),
            PopupMenuItem(
              value: MenuItem.accountSettings,
              child: PopUpItem(
                icon: Icons.settings_outlined,
                title: "Pengaturan Akun",
              ),
            ),
            PopupMenuItem(
              value: MenuItem.logout,
              child: PopUpItem(icon: Icons.logout_outlined, title: "Log out"),
            ),
          ],
          child: Padding(
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
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[300],
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      toolbarHeight: 70,
      shape: Border(bottom: BorderSide(color: Colors.grey[300]!, width: 2)),
      backgroundColor: Colors.white,
    );
  }

  // Mengimplementasikan preferredSize
  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
    required this.buttonLabel,
    required this.onButtonPressed,
  });

  final String buttonLabel;
  final void Function() onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.transparent,
        title: Row(
          children: [
            Image.asset("assets/icons/book.png", height: 20, width: 20),
            const SizedBox(width: 5),
            Text(
              "Jurnalku.",
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: ElevatedButton(
              onPressed: onButtonPressed,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                backgroundColor: Colors.blue[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
                minimumSize: Size.zero,
              ),
              child: Text(
                buttonLabel,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
        toolbarHeight: 70,
        shape: Border(bottom: BorderSide(color: Colors.grey[300]!, width: 2)),
        backgroundColor: Colors.white,
      ),
    );
  }

  // Mengimplementasikan preferredSize
  @override
  Size get preferredSize => const Size.fromHeight(70);
}
