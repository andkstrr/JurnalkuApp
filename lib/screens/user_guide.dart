import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/widgets/app_bar.dart';
import 'package:jurnalku_app/widgets/user_guide_card.dart';

class UserGuide extends StatelessWidget {
  const UserGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ReusableAppBar(
        userName: "Rizqya Adzra Zahira Sudrajat", 
        userRombel: "PPLG XII-5", 
        onLeadingPressed: () {}, 
        leadingIcon: Icons.home_outlined
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.menu_book_rounded, 
                    color: Colors.blue[900], 
                    size: 34,
                  ),
                  SizedBox(width: 10),
                  Text("Panduan Penggunaan", style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900]
                  ),),
                ],
              ),
              SizedBox(height: 15),
              Text("Selamat datang di panduan penggunaan aplikasi Jurnalku. Panduan ini akan membantu Anda memahami cara menggunakan fitur-fitur yang tersedia dengan optimal.", style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey[700]
              ),),
              SizedBox(height: 30),
              Text("Umum",  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
              ) ),
              Divider(height: 15, color: Colors.grey[200]),
              SizedBox(height: 10),
              UserGuideCard(icon: Icons.task, title: "Unggah Profile", subtitle: "Panduan untuk mengubah profil pengguna"),
              SizedBox(height: 10),
              UserGuideCard(icon: Icons.task, title: "Ganti Password", subtitle: "Panduan untuk mengganti password pengguna"),
              SizedBox(height: 30),
              Text("Untuk Siswa",  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
              ) ),
              Divider(height: 15, color: Colors.grey[200]),
              SizedBox(height: 10),
              UserGuideCard(icon: Icons.task, title: "Mengisi Jurnal", subtitle: "Panduan untuk mengisi kegiatan sehari-hari"),
              SizedBox(height: 10),
              UserGuideCard(icon: Icons.task, title: "Kelengkapan Profile", subtitle: "Panduan untuk melengkapi profile"),
              SizedBox(height: 10),
              UserGuideCard(icon: Icons.image, title: "Mengelola Portofolio", subtitle: "Panduan untuk menambah, edit, dan hapus portofolio"),
              SizedBox(height: 10),
              UserGuideCard(icon: Icons.check, title: "Mengelola Sertifikat", subtitle: "Panduan untuk menambah, edit, dan hapus sertifikat"),
              SizedBox(height: 10),
              UserGuideCard(icon: Icons.info, title: "Catatan Sikap Saya", subtitle: "Panduan untuk melihat dan memahami catatan sikap"),
            ],            
          ),),
      ),
    );
  }
}