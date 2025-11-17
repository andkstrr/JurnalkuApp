import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserGuide extends StatelessWidget {
  const UserGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text("Rizqya Adzra Zahira Sudrajat"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            tooltip: 'Open shopping cart',
            onPressed: () {}
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.menu_book_rounded, 
                    color: Colors.blue[900], 
                    size: 34,
                  ),
                  SizedBox(width: 6),
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
              Divider(height: 15),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 85,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.task, color: Colors.blue[900], size:30,),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Unggah Profile", style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        Text("Panduan untuk mengubah profil pengguna", style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700]
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],            
          ),),
      ),
    );
  }
}