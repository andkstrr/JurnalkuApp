import 'package:flutter/material.dart';
import 'package:jurnalku_app/models/student_model.dart';
import 'package:jurnalku_app/services/list_student_service.dart';
import 'package:jurnalku_app/widgets/app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/widgets/footer.dart';
import 'package:jurnalku_app/widgets/form_search_field.dart';
import 'package:jurnalku_app/widgets/student_profile_card.dart';
import 'package:jurnalku_app/screens/login.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'dart:ui';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  late Future<List<StudentModel>> futureStudents;

  @override
  void initState() {
    super.initState();
    futureStudents = ListStudentService.fetchStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        buttonLabel: 'Login',
        onButtonPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
          );
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                      "Menampilkan 1 - 2 dari 538 siswa",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(height: 20),

                    // map data
                    FutureBuilder(
                      future: futureStudents,
                      builder: (context, snapshot) {
                        // loading
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Skeletonizer(
                            enabled: true,
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 25),
                              itemBuilder: (context, index) {
                                return StudentProfileCard(
                                  student: StudentModel.placeholder(),
                                );
                              },
                            ),
                          );
                          // error
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                          // empty
                        } else if (!snapshot.hasData ||
                            snapshot.data!.isEmpty) {
                          return Text('TIdak ada data');
                        }

                        // success
                        final students = snapshot.data!;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: students.length,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 25),
                              itemBuilder: (context, index) {
                                final student = students[index];
                                return StudentProfileCard(student: student);
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
