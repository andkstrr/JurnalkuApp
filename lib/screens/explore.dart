import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/widgets/footer.dart';
import 'package:jurnalku_app/widgets/form_search_field.dart';
import 'dart:ui';

import 'package:jurnalku_app/widgets/student_profile_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ReusableAppBar(
        userName: "Andika Satrio Nurcahyo",
        userRombel: "PPLG XII-5",
        onLeadingPressed: () {},
        leadingIcon: Icons.home_outlined,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Background
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/banner.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),

                    // blur effect
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 3.0,
                          sigmaY: 3.0,
                        ), // blur
                        child: Container(
                          color: Colors.transparent, // transparent container
                        ),
                      ),
                    ),

                    // dark overlay
                    Positioned.fill(
                      child: Container(color: Colors.black.withOpacity(0.4)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Direktori",
                              style: GoogleFonts.inter(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                backgroundColor: Colors.blue[900],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Siswa",
                              style: GoogleFonts.inter(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Temukan dan jelajahi profil siswa SMK Wikrama Bogor",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 20),
                        FormSearchField(
                          hintText: "Cari nama siswa, NIS, atau rombel...",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Menampilkan 1 - 3 dari 538 siswa",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(height: 20),
                    StudentProfileCard(
                      name: "Andika Satrio Nurcahyo",
                      nis: 12309526,
                      rombel: "PPLG XII-5",
                      rayon: "Cic 8",
                      countOfPortfolio: 12,
                      countOfCertificate: 34,
                    ),
                    const SizedBox(height: 20),
                    StudentProfileCard(
                      name: "M. Attala Keanu Cheva Prabowo",
                      nis: 12309835,
                      rombel: "PPLG XII-5",
                      rayon: "Cis 5",
                      countOfPortfolio: 8,
                      countOfCertificate: 56,
                    ),
                    const SizedBox(height: 20),
                    StudentProfileCard(
                      name: "Rizqya Adzra Zahira Sudrajat",
                      nis: 12310021,
                      rombel: "PPLG XII-5",
                      rayon: "Taj 4",
                      countOfPortfolio: 13,
                      countOfCertificate: 56,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
