import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/screens/dashboard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jurnalku_app/screens/dashboard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text('Masuk Untuk Memulai',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            )), SizedBox(width: 5),
                        Text('Jurnalku',
                            style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo
                            ))
                      ],
                    ),
                    const SizedBox(height: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Username atau NIS',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                            )),
                        SizedBox(height: 5),
                        TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                hintText: 'Masukkan username atau NIS',
                                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12)
                            )
                        ), SizedBox(height: 15),
                        Text('Password',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                            )),
                        SizedBox(height: 5),
                        TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                hintText: 'Masukkan Password',
                                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12)
                            )
                        ), SizedBox(height: 25),

                        ElevatedButton(onPressed: () {
                          Navigator.push(
                              context,
                                MaterialPageRoute(builder: (context) => DashboardScreen()
                                ));
                        },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              minimumSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text('Masuk',
                                style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color: Colors.white
                                ))
                        ), SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Lupa password? Hubungi guru laboran.",
                                style: GoogleFonts.inter(
                                  fontSize: 14,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Menyatukan Upaya untuk Kemajuan Siswa",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )), SizedBox(height: 15),
                    Text("Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.grey[700]
                        ))
                  ]
              ),
            ),
            SizedBox(height: 40),

            FeatureCard(
              icon: FontAwesomeIcons.school,
              title: 'Dirancang untuk Sekolah Kami',
              subtitle:
                  'Dikembangkan khusus untuk memenuhi kebutuhan sekolah kami dengan fokus pada kemajuan siswa kami.',
            ),
            FeatureCard(
              icon: FontAwesomeIcons.chartArea,
              title: 'Pemantauan yang Terstruktur',
              subtitle:
                  'Memudahkan guru dalam menyusun dan memantau daftar kompetensi keahlian yang harus dikuasai siswa.',
            ),
            FeatureCard(
              icon: Icons.person,
              title: 'Fitur Praktis dan Bermanfaat',
              subtitle:
                  'Termasuk reminder otomatis, grafik, perkembangan, dan analisis mendalam untuk efektivitas belajar.',
            ),
            FeatureCard(
              icon: FontAwesomeIcons.piedPiperHat,
              title: "Pengajuan Kompetensi oleh Siswa",
              subtitle:
                  "Siswa dapat mengajukan kompetensi yang telah dikuasai untuk diverifikasi oleh guru.",
            ),
            FeatureCard(
              icon: Icons.edit_note,
              title: "Validasi dan Tanda Tangan Guru",
              subtitle:
                  "Setiap kompetensi yang disetujui akan diberikan tanda terima dan tanda tangan guru sebagai bukti.",
            ),
            FeatureCard(
              icon: Icons.monitor,
              title: "Pantauan Real-Time dan Transparan",
              subtitle:
                  "Monitoring langsung, menciptakan lingkungan belajar yang efisien.",
            ),
            SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.whatsapp, color: Colors.white),
                      SizedBox(width: 20),
                      Icon(FontAwesomeIcons.instagram, color: Colors.white),
                      SizedBox(width: 20),
                      Icon(FontAwesomeIcons.linkedin, color: Colors.white),
                      SizedBox(width: 20),
                      Icon(FontAwesomeIcons.youtube, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("© GEN-28 PPLG SMK Wikrama Bogor. All Rights Reserved.",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              color: Colors.white
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 30, color: Colors.indigo),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: GoogleFonts.inter(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 5),
                  Text(subtitle,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.grey[700],
                        height: 1.5,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
