import 'package:flutter/material.dart';
import 'package:jurnalku_app/widgets/competency_statistic_card.dart';
import 'package:jurnalku_app/widgets/header_section.dart';
import 'package:jurnalku_app/widgets/app_bar.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ReusableAppBar(
        userName: "Muhammad Attala Keanu Cheva Prabowo",
        userRombel: "PPLG XII-5",
        onLeadingPressed: () {},
        leadingIcon: Icons.home_outlined,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(
                  title: "Progress Belajar",
                  subtitle: "Pantau perkembangan kompetensi dan materi pembelajaran Anda",
                  date: "Thursday, 20 November 2025"),
              SizedBox(height: 20),

              CompetencyStatisticCard(
                  title: "Total pengajuan",
                  value: 2,
                  status: "Semua status",
                  color: "0xFF3b82f6",
                  valueColor: "0xFF000000",
                  icon: Icons.check_circle_outline),

              CompetencyStatisticCard(
                title: "Halaman ini",
                value: 0,
                status: "Data ditampilkan",
                color: "0xFF22c55e",
                valueColor: "0xFF000000",
                icon: Icons.calendar_today_outlined,
              ),

              CompetencyStatisticCard(
                title: "Status pending",
                value: 0,
                status: "Perlu validasi",
                color: "0xFFf97316",
                valueColor: "0xFF000000",
                icon: Icons.access_time_outlined,
              ),

              CompetencyStatisticCard(
                title: "Total halaman",
                value: 1,
                status: "Navigasi tersedia",
                color: "0xFFa855f7",
                valueColor: "0xFF000000",
                icon: Icons.lightbulb_outline,
              ),
            ]
          ),
        ),
      ),
    );
  }
}
