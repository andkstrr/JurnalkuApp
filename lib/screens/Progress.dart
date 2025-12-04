import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/competency_statistic_card.dart';
import 'package:jurnalku_app/widgets/app_bar.dart';
import 'package:jurnalku_app/widgets/table.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ReusableAppBar(
        userName: "M. Attala Keanu Cheva P.",
        userRombel: "PPLG XII-5",
        onLeadingPressed: () {},
        leadingIcon: Icons.home_outlined,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Progress Belajar",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
                style: GoogleFonts.inter(fontSize: 16),
              ),
              SizedBox(height: 15),
              Container(
                width: 230,
                height: 40,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Thursday, 20 November 2025",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[700],
                  ),
                ),
              ),
              SizedBox(height: 15),

              CompetencyStatisticCard(
                title: "Total pengajuan",
                value: 2,
                status: "Semua status",
                color: "0xFF3b82f6",
                valueColor: "0xFF000000",
                icon: Icons.check_circle_outline,
              ),
              SizedBox(height: 20),

              CompetencyStatisticCard(
                title: "Halaman ini",
                value: 0,
                status: "Data ditampilkan",
                color: "0xFF22c55e",
                valueColor: "0xFF000000",
                icon: Icons.calendar_today_outlined,
              ),
              SizedBox(height: 20),

              CompetencyStatisticCard(
                title: "Status pending",
                value: 0,
                status: "Perlu validasi",
                color: "0xFFf97316",
                valueColor: "0xFF000000",
                icon: Icons.access_time_outlined,
              ),
              SizedBox(height: 20),

              CompetencyStatisticCard(
                title: "Total halaman",
                value: 1,
                status: "Navigasi tersedia",
                color: "0xFFa855f7",
                valueColor: "0xFF000000",
                icon: Icons.lightbulb_outline,
              ),
              SizedBox(height: 20),

              ProgressTable(
                title: "Project Work",
                data: [
                  ProgressData(
                    kompetensi: "Laravel mandiri",
                    guru: "Bu Rani",
                    tanggal: "3 Des 2025",
                    status: "Selesai",
                    catatan: "Sudah sangat baik",
                  ),
                  ProgressData(
                    kompetensi: "Integrasi API",
                    guru: "Pak Budi",
                    tanggal: "5 Des 2025",
                    status: "Dalam Proses",
                    catatan: "Perlu diperbaiki responsenya",
                  ),
                ],
              ),

              ProgressTable(
                title: "Mobile Apps",
                data: [
                  ProgressData(
                    kompetensi: "Desain UI Mobile",
                    guru: "Bu Rani",
                    tanggal: "3 Des 2025",
                    status: "Selesai",
                    catatan: "Sudah sangat baik",
                  ),
                ],
              ),

              ProgressTable(
                title: "UKK (Uji Kompetensi Keahlian)",
                data: [
                  ProgressData(
                    kompetensi: "Ujian Kompetensi Keahlian",
                    guru: "Bu Rani",
                    tanggal: "3 Des 2025",
                    status: "Selesai",
                    catatan: "Sudah sangat baik",
                  ),
                  ProgressData(
                    kompetensi: "Ujian Kompetensi Keahlian",
                    guru: "Bu Siti",
                    tanggal: "3 Des 2025",
                    status: "Selesai",
                    catatan: "Sudah sangat baik",
                  ),
                ],
              ),

              ProgressTable(
                title: "GIM",
                data: [
                  ProgressData(
                    kompetensi: "Membuat 3d asset",
                    guru: "Bu Rani",
                    tanggal: "3 Des 2025",
                    status: "Selesai",
                    catatan: "Sudah sangat baik",
                  ),
                ],
              ),
              SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}
