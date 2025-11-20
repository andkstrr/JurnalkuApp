import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/screens/Progress.dart';
import 'package:jurnalku_app/screens/dashboard.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:jurnalku_app/screens/explore.dart';
import 'package:jurnalku_app/screens/login.dart';
import 'package:jurnalku_app/screens/settings.dart';
import 'package:jurnalku_app/screens/user_guide.dart';

// Splash Screen Utama
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed akan menjalankan fungsi callback setelah durasi yang ditentukan (3 detik)
    Future.delayed(const Duration(seconds: 7), () {
      // pushReplacement mencegah pengguna kembali ke splash screen dengan tombol kembali
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const ProgressScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage('assets/icons/book.png'),
                      width: 60,
                    ),
                    const SizedBox(width: 5),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jurnalku.',
                          style: GoogleFonts.inter(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "smkwikrama.sch.id",
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: LoadingAnimationWidget.horizontalRotatingDots(
                color: Colors.blue[900]!,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
