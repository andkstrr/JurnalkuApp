import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/widgets/app_bar.dart';
import 'package:jurnalku_app/widgets/form_show_field.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ReusableAppBar(
        userName: "Budi Santoso", 
        userRombel: "PPLG XII-5", 
        onLeadingPressed: () {},
        leadingIcon: Icons.home_outlined,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Informasi Profil",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.grey[300],
                                child: Icon(
                                  Icons.person,
                                  size: 60,
                                  color: Colors.grey[700],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue, 
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white, width: 2), 
                                    
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue[900],
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.camera_alt_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Klik untuk mengubah foto",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                            ),
                          ),
                          const SizedBox(height: 20),
                          FormShowField(
                            text: "Nama",
                            placeHolderText: "Andika Satrio Nurcahyo",
                          ),
                          const SizedBox(height: 20),
                          FormShowField(
                            text: "NIS",
                            placeHolderText: "12309526",
                          ),
                          const SizedBox(height: 20),
                          FormShowField(
                            text: "Rombel",
                            placeHolderText: "PPLG XII-5",
                          ),
                          const SizedBox(height: 20),
                          FormShowField(
                            text: "Rayon",
                            placeHolderText: "Cic 8",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ubah Kata Sandi",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      )
                    ),
                    const SizedBox(height: 30),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}