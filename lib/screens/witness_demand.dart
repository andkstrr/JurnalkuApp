import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/widgets/app_bar.dart';
import 'package:jurnalku_app/widgets/table.dart';

class WitnessDemand extends StatelessWidget {
  const WitnessDemand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ReusableAppBar(
        userName: "Rizqya Adzra Zahira Sudrajat",
        userRombel: "PPLG XII-5",  
        onLeadingPressed: (){}
      ),
      body: Padding(padding: EdgeInsets.all(23),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Permintaan Saksi",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              "Kelola permintaan menjadi saksi dari siswa lain",
              style: GoogleFonts.inter(fontSize: 16),
            ),
            SizedBox(height: 15),
            Container(
              width: 230,
              height: 40,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                "Thursday, 20 November 2025", 
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue[700]
                ),),
            ),
            SizedBox(height: 30),
            SimpleRecordTable()
          ],
        ),
      ),
    );
  }
}