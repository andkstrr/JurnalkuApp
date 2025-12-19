import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/screens/detail_student.dart';
import 'package:jurnalku_app/screens/profile.dart';
import 'package:jurnalku_app/models/student_model.dart';

class StudentProfileCard extends StatelessWidget {
  final StudentModel student;

  const StudentProfileCard({super.key,
    required this.student,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2), 
          ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey[200],
            child: Icon(
              Icons.person,
              color: Colors.grey[600],
              size: 65,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            student.name,
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "${student.nis} | ${student.rombel} | ${student.rayon} ",
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700]
            ),
          ),
          const SizedBox(height: 10),
          Divider(
            color: Colors.grey[300],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.folder_outlined,
                    color: Colors.grey[700],
                    size: 17,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "2 Portofolio",
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700]
                    ),
                  )
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.verified_outlined,
                    color: Colors.grey[700],
                    size: 17,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "2 Sertifikat",
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700]
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailStudentScreen(student: student)));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[900],
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              minimumSize: Size(20, 5),
            ),
            child: Row(
              children: [
                Text(
                  "Lihat Detail",
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_circle_right,
                  color: Colors.white,
                  size: 20,
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
