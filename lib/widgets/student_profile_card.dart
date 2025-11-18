import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentProfileCard extends StatelessWidget {
  const StudentProfileCard({super.key,
    required this.name,
    required  this.nis,
    required this.rombel,
    required this.rayon,
    required this.countOfPortfolio,
    required this.countOfCertificate
  });

  final String name;
  final int nis;
  final String rombel;
  final String rayon;
  final int countOfPortfolio;
  final int countOfCertificate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(17),
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
            name,
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "$nis | $rombel | $rayon ",
            style: GoogleFonts.inter(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700]
            ),
          ),
          const SizedBox(height: 15),
          Divider(
            color: Colors.grey[300],
          ),
          const SizedBox(height: 15),
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
                    "$countOfPortfolio Portofolio",
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
                    "$countOfCertificate Sertifikat",
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700]
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
