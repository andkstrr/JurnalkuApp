import 'package:flutter/material.dart';

class HabitJournalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabel Sederhana'),
      ),
      body: Center(
        child: Container(
          // Tambahkan border luar jika diperlukan
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
          ),
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Bagian Header Tabel (Pekerjaan, Tgl, Saksi)
              IntrinsicWidth(
                child: DataTable(
                  columnSpacing: 30, // Sesuaikan spasi antar kolom
                  dataRowMinHeight: 0,
                  dataRowMaxHeight: 0,
                  horizontalMargin: 0,
                  // Tampilan header kolom
                  columns: <DataColumn>[
                    DataColumn(
                      label: Container(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Pekerjaan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'Tgl',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Container(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'Saksi',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                  // Karena Anda ingin menampilkan "Belum ada pekerjaan...",
                  // kita buat rows kosong atau satu row khusus untuk header saja
                  rows: const <DataRow>[], 
                ),
              ),
              
              // Bagian "Belum ada pekerjaan yang diinput."
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade300), 
                    // Border bawah sebelum tombol "Tambah Pekerjaan"
                    bottom: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
                child: Text(
                  'Belum ada pekerjaan yang diinput.',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),

              // Bagian "+ Tambah Pekerjaan"
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12.0),
                child: GestureDetector(
                  onTap: () {
                    print('Tambah Pekerjaan ditekan');
                  },
                  child: Text(
                    '+ Tambah Pekerjaan',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}