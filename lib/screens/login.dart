import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                  )
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24), // Beri padding di dalam box putih
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    // boxShadow: [
                    //   BoxShadow(
                    //       color: Colors.black.withOpacity(0.1),
                    //       blurRadius: 10
                    //   )
                    // ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Text('Masuk Untuk Memulai',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        )), SizedBox(width: 5),
                        Text('Jurnalku',
                        style: GoogleFonts.poppins(
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
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                        )),
                        SizedBox(height: 5),
                        TextField(
                          decoration: InputDecoration(
                            // 1. Untuk membuat kotak (border)
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),

                            hintText: 'Masukkan username atau NIS',

                            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12)
                        )
                        ), SizedBox(height: 15),
                        Text('Password',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                            )),
                        SizedBox(height: 5),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),

                              hintText: 'Masukkan Password',

                              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12)
                          )
                        ), SizedBox(height: 15),

                        ElevatedButton(onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo,
                                minimumSize: Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text('Masuk',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white
                              ))
                        ), SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Lupa password? Hubungi guru laboran.",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                            )),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ), SizedBox(height: 100),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Menyatukan Upaya untuk Kemajuan Siswa",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )), SizedBox(height: 15),
                Text("Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam memantau dan mengelola kompetensi keahlian siswa secara efektif.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.grey[700]
                ))
              ]
            ), SizedBox(height: 60),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              ],
            )
          ],
        ),
      ),
    );
  }
}
