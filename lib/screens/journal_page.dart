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
        onLeadingPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jurnal Pembiasaan",
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "NOVEMBER - 2025",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 120,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
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
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 35),
              Text(
                "A. Pembiasaan harian",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(radius: 6, backgroundColor: Colors.green),
                      SizedBox(width: 8),
                      Text('Sudah Diisi'),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Color.fromARGB(255, 209, 221, 209),
                      ),
                      SizedBox(width: 8),
                      Text('Belum Diisi'),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: const [
                      CircleAvatar(radius: 6, backgroundColor: Colors.red),
                      SizedBox(width: 8),
                      Text('Tidak Diisi'),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1.39,
                ),
                itemCount: 23,
                itemBuilder: (context, index) {
                  Color statusColor;
                  if (index != 0 && index != 1 && index != 2) {
                    statusColor = Colors.grey[400]!;
                  } else {
                    statusColor = Colors.grey[200]!;
                  }

                  return Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(color: statusColor),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 25),
              Text(
                "B. Pekerjaan yang dilakukan",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15),
              ListView.separated(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey[100],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListTile(
                        leading: Icon(Icons.work_history),
                        title: Text(
                          "Pekerjaan ${index + 1}",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(5),
                        subtitle: Text(
                          "03 Desember 2025",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                        trailing: Text("Saksi : Cahyo"),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 25),
              Text(
                "C. Materi yang dipelajari",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15),
              ListView.separated(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemBuilder: (context, index) => Card(
                  color: Colors.grey[100],
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ExpansionTile(
                    title: Text(
                      'Belajar Flutter ${index + 1}',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    collapsedShape: BorderDirectional(),
                    subtitle: Text(
                      '20 November 2025',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(color: Colors.grey[50]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Status:',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    'Approved',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Catatan Guru:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Bagus, pemahaman sudah cukup baik.'),
                            const SizedBox(height: 12),
                            Text(
                              'Catatan Siswa:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Saya sudah memahami materi ini dengan baik.'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: const [
                      CircleAvatar(radius: 6, backgroundColor: Colors.green),
                      SizedBox(width: 8),
                      Text('A: Approved'),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.yellow[700],
                      ),
                      SizedBox(width: 8),
                      Text('P: Pending'),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Row(
                    children: const [
                      CircleAvatar(radius: 6, backgroundColor: Colors.red),
                      SizedBox(width: 8),
                      Text('R: Revisi'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 35),
              Text(
                "D. Poin",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15),
              HabitJournalTable(),
            ],
          ),
        ),
      ),
    );
  }
}
