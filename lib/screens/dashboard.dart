import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jurnalku_app/widgets/academic_progress.dart';
import 'package:jurnalku_app/widgets/app_bar.dart';
import 'package:jurnalku_app/widgets/application_menu_card.dart';
import 'package:jurnalku_app/widgets/competency_statistic_card.dart';
import 'package:jurnalku_app/widgets/dashboard_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jurnalku_app/widgets/footer.dart';
import 'package:jurnalku_app/widgets/section_title.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ReusableAppBar(
        userName: "Andika Satrio Nurcahyo", 
        userRombel: "PPLG XII-5", 
        onLeadingPressed: () {}, 
        leadingIcon: Icons.home_outlined
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned.fill(
                      child: SvgPicture.asset(
                        'assets/images/bgsecondary.svg',
                        fit: BoxFit.cover,
                      )
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Selamat Datang di Jurnalku",
                          style: GoogleFonts.inter(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Solusi cerdas untuk memantau perkembangan \n kompetensi siswa secara efektif",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(255, 15, 87, 201),
                            const Color.fromARGB(255, 20, 65, 133),
                          ]
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Apa itu Jurnalku?",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Jurnalku adalah aplikasi cerdas yang membantu guru dan siswa dalam\nmemantau dan mengelola kompetensi keahlian siswa secara efektif, terstruktur,\ndan real-time. Dengan fitur lengkap,\nproses pemantauan menjadi lebih mudah\ndan trasnparan.",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
        
                    // DASHBOARD CARDs
                    DashboardCard(
                      iconPath: "assets/icons/school.svg",
                      title: "Dirancang Khusus",
                      subtitle: "Memenuhi kebutuhan spesifik\nsekolah kami dengan fokus pada\nkemajuan siswa."
                    ),
                    const SizedBox(height: 20),
                    DashboardCard(
                      iconPath: "assets/icons/student.svg",
                      title: "Efektif",
                      subtitle: "Memudahkan siswa dan guru melihat\nperkembangan secara real-time."
                    ),
                    const SizedBox(height: 20),
                    DashboardCard(
                      iconPath: "assets/icons/graduate.svg",
                      title: "Terintegrasi",
                      subtitle: "Pengajuan kompetensi siswa, validasi\ndan laporan perkembangan yang\ntransparan."
                    ),
                    const SizedBox(height: 35),
        
                    // MENU APLIKASI
                    SectionTitle(
                      sectionTitle: "MENU APLIKASI",
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2), 
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ApplicationMenuCard(
                            icon: Icons.person_3_outlined,
                            title: "Profil",
                            subtitle: "Lihat dan kelola profilmu di sini.",
                            onTap: () {}
                          ),
                          const SizedBox(height: 20),
                          const Divider(height: 1),
                          const SizedBox(height: 20),
                          ApplicationMenuCard(
                            icon: Icons.backpack_outlined,
                            title: "Portofolio",
                            subtitle: "Lihat dan kelola portofoliomu kompetensimu di sini.",
                            onTap: () {}
                          ),
                          const SizedBox(height: 20),
                          const Divider(height: 1),
                          const SizedBox(height: 20),
                          ApplicationMenuCard(
                            icon: Icons.document_scanner_outlined,
                            title: "Sertifikat",
                            subtitle: "Lihat dan unduh sertifikat kompetensimu di sini.",
                            onTap: () {}
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2), 
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          ApplicationMenuCard(
                            icon: Icons.menu_book_outlined,
                            title: "Jurnal Pembiasaan",
                            subtitle: "Catat dan pantau kegiatan pembiasaan harianmu",
                            onTap: () {}
                          ),
                          const SizedBox(height: 20),
                          const Divider(height: 1),
                          const SizedBox(height: 20),
                          ApplicationMenuCard(
                            icon: Icons.person_3_outlined,
                            title: "Permintaan saksi",
                            subtitle: "Lihat teman yang mengajukan permintaan saksi.",
                            onTap: () {}
                          ),
                          const SizedBox(height: 20),
                          const Divider(height: 1),
                          const SizedBox(height: 20),
                          ApplicationMenuCard(
                            icon: Icons.align_vertical_bottom_sharp,
                            title: "Progress",
                            subtitle: "Lihat kemajuan kompetensi dan pencapain belajarmu.",
                            onTap: () {}
                          ),
                          const SizedBox(height: 20),
                          const Divider(height: 1),
                          const SizedBox(height: 20),
                          ApplicationMenuCard(
                            icon: Icons.warning_amber_outlined,
                            title: "Catatan Sikap",
                            subtitle: "Lihat catatan sikap dan perilaku dari guru.",
                            onTap: () {}
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),
        
                    // STATISTIK KOMPETENSI
                    SectionTitle(
                      sectionTitle: "STATISTIK KOMPETENSI",
                    ),
                    const SizedBox(height: 15),
                    CompetencyStatisticCard(
                      title: "Materi Diselesaikan",
                      value: 5,
                      status: "Selesai",
                      color: "0xFF22c55e",
                      valueColor: "0xFF14532d",
                      icon: Icons.check_circle_outline_outlined,
                    ),
                    const SizedBox(height: 15),
                    CompetencyStatisticCard(
                      title: "Pengajuan Pending",
                      value: 2,
                      status: "Pending",
                      color: "0xFFfa812d",
                      valueColor: "0xFF7c2d12",
                      icon: Icons.access_time_outlined,
                    ),
                    const SizedBox(height: 15),
                    CompetencyStatisticCard(
                      title: "Materi Hari Ini",
                      value: 8,
                      status: "Hari Ini",
                      color: "0xFF3b82f6",
                      valueColor: "0xFF1e3a8a",
                      icon: Icons.date_range_outlined,
                    ),
                    const SizedBox(height: 15),
                    CompetencyStatisticCard(
                      title: "Materi Revisi",
                      value: 0,
                      status: "Revisi",
                      color: "0xFFa855f7",
                      valueColor: "0xFF581c87",
                      icon: Icons.refresh_outlined,
                    ),
                    const SizedBox(height: 35),
        
                    // PROGRESS AKADEMIK
                    SectionTitle(
                      sectionTitle: "PROGRESS AKADEMIK",
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey[300]!),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2), 
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          AcademicProgress(
                            status: "Selesai",
                            value: 5,
                            color: "0xFF3c50e0",
                          ),
                          const SizedBox(height: 5),
                          AcademicProgress(
                            status: "Pending",
                            value: 2,
                            color: "0xFF6577f3",
                          ),
                          const SizedBox(height: 5),
                          AcademicProgress(
                            status: "Belum",
                            value: 3,
                            color: "0xFF8fd0ef",
                          ),
                          const SizedBox(height: 5),
                          AcademicProgress(
                            status: "Hari Ini",
                            value: 8,
                            color: "0xFF0fadcf",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}