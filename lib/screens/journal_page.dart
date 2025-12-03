import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/widgets/app_bar.dart';
import 'package:jurnalku_app/widgets/table.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ReusableAppBar(
        userName: "Rizqya Adzra Zahira Sudrajat",
        userRombel: "PPLG XII-5",  
        onLeadingPressed: (){}
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jurnal Pembiasaan",
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w600
                  ),                
                ),
              SizedBox(height: 5),
              Text(
                "NOVEMBER - 2025",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey
                  ),                
                ),
              SizedBox(height: 20),
              SizedBox( 
              width: 120, 
              child: ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back, color: Colors.white),
                      Spacer(),
                      SizedBox(width: 10),
                      Text(
                        "Bulan\nSebelumnya",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        )
                      ),  
                    ]
                  ) 
                ),
              ),
              SizedBox(height: 35),
              Text(
                "A. Pembiasaan harian",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 35),
              Text(
                "B. Pekerjaan yang dilakukan",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 15),
              JobTable(),
              SizedBox(height: 35),
              Text(
                "C. Materi yang dipelajari",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 15),
              JobTable(),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("●", style: TextStyle(fontSize: 18, color: Colors.green)),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text("A: Approved", style: GoogleFonts.inter(
                        color: Colors.grey[700]
                        )
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Text("●", style: TextStyle(fontSize: 18, color: Colors.orange)),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text("P : Pending", style: GoogleFonts.inter(
                        color: Colors.grey[700]
                        )
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Text("●", style: TextStyle(fontSize: 18, color: Colors.red)),
                  SizedBox(width: 5),
                  Column(
                    children: [
                      Text("R : Revisi", style: GoogleFonts.inter(
                        color: Colors.grey[700]
                        )
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 35),
              Text(
                "D. Poin",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 15),
              PoinTable()
            ],
          ),
        ),
      ),
    );
  }
}