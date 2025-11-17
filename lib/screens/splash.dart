import 'package:flutter/material.dart';
import 'package:jurnalku_app/screens/login.dart';
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
    Future.delayed(const Duration(seconds: 3), () {
      // pushReplacement mencegah pengguna kembali ke splash screen dengan tombol kembali
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Login()),
        );
      }
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0EB34C),
      body: Center(
        child: SizedBox(
          width: 230,
          height: 230,
          child: Image(
            image: AssetImage('assets/logo/furlo.png'),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
